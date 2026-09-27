# Pythia 410M college probes

- model: `EleutherAI/pythia-410m-deduped`
- revision: `step143000`
- transformers: `4.44.2`
- torch: `2.4.1+cpu`
- max new tokens: `128`
- prompt treatment: raw causal continuation; no system message, chat template, instruction prefix, or few-shot examples
- sampled continuations: temperature `0.8`, top-p `0.95`, seeds `17, 29, 43`

## glad-college

### Prompt

    I'm so glad I went to college

### Greedy continuation

    ." "I'm so glad I went to college." "I'm so glad I went to college." "I'm so glad I went to college." "I'm so glad I went to college." "I'm so glad I went to college." "I'm so glad I went to college." "I'm so glad I went to college." "I'm so glad I went to college." "I'm so glad I went to college." "I'm so glad I went to college." "I'm so glad I went to college." "I'm so glad I went to college." "I'm so glad I went

### Sample seed 17

    ." "We're not close." "Oh, look at all that." "Do you still know her?" "Oh, yeah, of course." "She's... she's pretty." "She's pretty." "I think she's a little bit older." "Maybe she's not that old." "What, are you kidding?" "You guys are old." "Yeah, but you're not, are you?" "I don't know." "You guys are so old." "Yeah, but I'm not that old." "I got out of school when I was 17." "I got a job and I got a

### Sample seed 29

    ." "I was so scared." "I didn't know if I'd make it." "But you have no idea how hard it was." "I got a job at the airport." "We were a family." "And I got to meet a lot of great people." "But I missed a lot of them." "I had a blast." "I'm so proud of you." "You can't imagine how proud of me I am." "I love you." "I love you." "I love you so much." "I can't stop crying." "I miss you." "You're not leaving." "We

### Sample seed 43

     and got a good job and have a good education, but I'm just a kid.
    
    I love you guys. And I would really like to tell you that I'm sorry for what I did, but I'm really sorry, too. I can't even imagine what it would be like to have your support.
    
    I think I'm going to go back to school and get a job. I'm hoping to be able to find something that will fit me really well and not just for the sake of money.
    
    I can't tell you how excited I am to work with you guys again. I can't wait

## bme-high-school

### Prompt

    I'm a junior in high school and will be taking AB calculus next year. I have a 3.7 GPA and a 780 on the math sat. I think I'm interested in biomedical engineering as a college major because I want to help people. I run track and I play soccer. What schools should I be looking at for biomedical engineering?

### Greedy continuation

    
    
    A:
    
    I would recommend that you look at the following schools:
    
    University of California, Berkeley
    University of California, San Francisco
    University of California, Irvine
    University of California, Irvine
    University of California, Irvine
    University of California, Irvine
    University of California, Irvine
    University of California, Irvine
    University of California, Irvine
    University of California, Irvine
    University of California, Irvine
    University of California, Irvine
    University of California, Irvine
    University of California, Irvine
    University of California, Irvine
    University of California, Ir

### Sample seed 17

    
    
    We would like to talk to you about a course that you are interested in. Please give us a call to schedule an interview.
    
    No matter your age, you can find great employment in any of the industries that are listed below. Some employers will require a high school diploma or GED.
    
    For more information, please call us at 800-344-3376 or visit our website at www.bacp.edu or e-mail us at bacp@bacp.edu.
    
    Medical/Dental
    
    BacP has a number of dental schools within our network of

### Sample seed 29

    
    
    Dr. Paul A. Davis:
    
    My recommendation for you would be the University of Cincinnati. It's a great school. I'm sure you'll enjoy your time there. I would also recommend Cal State Northridge and the University of California, San Francisco, as well as other schools that are more focused on the health sciences.
    
    There are certainly other schools you can take. One of my favorite schools is UC Santa Barbara. They offer the most rigorous coursework in medicine and technology. You can learn so much in that school.
    
    It's really important to me that you are looking at schools that are well

### Sample seed 43

    
    
    A:
    
    I strongly recommend going to an engineering school that focuses on the areas you are interested in.  If you decide to go to an engineering school in the fall, I would recommend that you apply to the engineering school that has an offer from the engineering program that is right for you.  For example, if you decide to pursue a career in chemical engineering and you want to be a biologist, you would want to apply to the school that has an engineering degree and an offer from the school that has an engineering degree and an offer from the school that has an engineering degree.
    I have not been to any
