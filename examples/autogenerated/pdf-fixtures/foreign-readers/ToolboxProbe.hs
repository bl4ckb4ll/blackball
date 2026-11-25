-- Thin qualification client for the pinned foreign PDF library.
-- It is not an intake core, sandbox, production adapter, or OCR reader.
module Main where

import Control.Monad (forM_, when)
import qualified Data.Text as Text
import Pdf.Document
import Pdf.Content.Processor (Glyph(..), Span(..))
import Pdf.Content.Transform (Vector(..))
import System.Environment (getArgs)
import System.Exit (die)

escape_field :: String -> String
escape_field = concatMap escape_character
  where
    escape_character '\\' = "\\\\"
    escape_character '\t' = "\\t"
    escape_character '\n' = "\\n"
    escape_character '\r' = "\\r"
    escape_character character = [character]

emit_glyph :: Int -> Glyph -> IO ()
emit_glyph page_number glyph = do
  let Vector left top = glyphTopLeft glyph
      Vector right bottom = glyphBottomRight glyph
      text_fields = case glyphText glyph of
        Nothing -> ["UNMAPPED", ""]
        Just text -> ["MAPPED", escape_field (Text.unpack text)]
  putStrLn (Text.unpack (Text.intercalate (Text.pack "\t")
    (map Text.pack (["glyph", show page_number, show (glyphCode glyph),
      show left, show top, show right, show bottom] ++ text_fields))))

main :: IO ()
main = do
  arguments <- getArgs
  path <- case arguments of
    [value] -> pure value
    _ -> die "Usage: toolbox-probe SYNTHETIC_PDF"
  withPdfFile path $ \pdf -> do
    encrypted <- isEncrypted pdf
    when encrypted (die "EncryptedDocumentRefused")
    doc <- document pdf
    catalog <- documentCatalog doc
    root <- catalogPageNode catalog
    count <- pageNodeNKids root
    when (count < 1 || count > 32) (die "PageCountLimit")
    putStrLn ("pdf-toolbox-probe-v1\t" ++ show count)
    forM_ [0 .. count - 1] $ \page_index -> do
      page <- pageNodePageByNum root page_index
      media_box <- pageMediaBox page
      putStrLn ("page\t" ++ show (page_index + 1) ++ "\t" ++ show media_box)
      putStrLn "crop-rotation-image-presence\tNOT_QUALIFIED"
      spans <- pageExtractGlyphs page
      forM_ spans $ \span -> forM_ (spGlyphs span) (emit_glyph (page_index + 1))
