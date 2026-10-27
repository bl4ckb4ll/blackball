{-# LANGUAGE OverloadedStrings #-}
-- Thin qualification client for the pinned foreign PDF library.
-- Coordinates below are the library's glyph origins/advances, not ink boxes.
module Main where

import Control.Monad (forM_, when)
import qualified Data.Text as Text
import PDF.Document (Document(..), openDocument)
import PDF.DocumentStructure (findDictByRef)
import PDF.Interpret (Glyph(..), interpretPageImageHits)
import PDF.Page (pageCount, pageRefAt, pageGlyphs)
import System.Environment (getArgs)
import System.Exit (die)

run_or_refuse :: Show error => Either error value -> IO value
run_or_refuse = either (die . show) pure

escape_field :: String -> String
escape_field = concatMap escape_character
  where
    escape_character '\\' = "\\\\"
    escape_character '\t' = "\\t"
    escape_character '\n' = "\\n"
    escape_character '\r' = "\\r"
    escape_character character = [character]

emit_glyph :: Int -> Glyph -> IO ()
emit_glyph page_number glyph =
  putStrLn (Text.unpack (Text.intercalate "\t" (map Text.pack
    ["glyph", show page_number, show (glyphX glyph), show (glyphY glyph),
     show (glyphWidth glyph), show (glyphSize glyph),
     escape_field (Text.unpack (glyphText glyph))])))

main :: IO ()
main = do
  arguments <- getArgs
  path <- case arguments of
    [value] -> pure value
    _ -> die "Usage: hpdft-probe SYNTHETIC_PDF"
  doc <- openDocument path Nothing >>= run_or_refuse
  count <- run_or_refuse (pageCount doc)
  when (count < 1 || count > 32) (die "PageCountLimit")
  putStrLn ("hpdft-probe-v1\t" ++ show count)
  forM_ [1 .. count] $ \page_number -> do
    reference <- run_or_refuse (pageRefAt doc page_number)
    putStrLn ("page\t" ++ show page_number ++ "\t" ++ show (findDictByRef reference (docObjs doc)))
    glyphs <- run_or_refuse (pageGlyphs doc reference)
    forM_ glyphs (emit_glyph page_number)
    -- Classification needs painted-image references and placement, not pixel
    -- decoding. An unsupported image filter must not erase page classification.
    images <- run_or_refuse (interpretPageImageHits doc reference)
    forM_ images $ \(_, rectangle) -> putStrLn ("image\t" ++ show page_number ++ "\t" ++ show rectangle)
    putStrLn ("page-counts\t" ++ show page_number ++ "\t" ++ show (length glyphs) ++ "\t" ++ show (length images))
