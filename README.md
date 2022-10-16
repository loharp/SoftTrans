# SoftTrans

========= 
A software product translation system from English to French

Project Homepage: https://github.com/loharp/SoftTrans

# GENERAL INFO

SoftTrans is an English to French Neural Machine Translation system, especially developed for translating software product descriptions provided on LinkedIn webpages. This work is a collaboration between ADAPT Centre (Ireland) and LinkedIn corporation (Ireland). The system is trained on a combination of several corpora which are then filtered using keyBERT (Grootendorst, 2020) and LASER (Artetxe et. al., 2018) toolkits, and tuned on an in-domain development data set.


# REQUIREMENTS
(i)   Python >= 3.6,
(ii)  PyTorch >= 1.9.0,
(iii) OpenNMT-py,
(iv)  sacremoses, and
(v)   Subword-nmt

# USAGE INSTRUCTIONS
Step-1: 
Once the above tools and libraries are installed, please download the translation model from the following link:
https://drive.google.com/file/d/14Hmt0n8L08MGTYW_rc7H_ux9dgnBi9yI/view?usp=sharing

Step-2:
Put the downloaded translation model in the main project directory

Step-3:
Open the "trans.sh" and make sure that the file names are correct. Note that the "src=en" and "tgt=fr" are used to denote the source-language (English) and target-language (French) codes. The "sample.en" contains two input sentences in English. You can change these sentences***.

Step-4:
In this final step, simply run the shell script,

sh trans.sh

The outputs will be stored in the "sample.en.trans.restored.detok" file.


If you use this system, please cite the following paper:

@inproceedings{DBLP:conf/amta/LoharMOPH22,
  author    = {Pintu Lohar and
               Sinead Madden and
               Edmond O'Connor and
               Maja Popovic and
               Tanya Habruseva},
  editor    = {Kevin Duh and
               Francisco Guzm{\'{a}}n and
               Stephen Richardson},
  title     = {Building Machine Translation System for Software Product Descriptions
               Using Domain-specific Sub-corpora Extraction},
  booktitle = {Proceedings of the 15th biennial conference of the Association for
               Machine Translation in the Americas (Volume 1: Research Track), {AMTA}
               2022, Orlando, USA, September 12-16, 2022},
  pages     = {1--13},
  publisher = {Association for Machine Translation in the Americas},
  year      = {2022},
  url       = {https://aclanthology.org/2022.amta-research.1},
  timestamp = {Mon, 26 Sep 2022 16:58:59 +0200},
  biburl    = {https://dblp.org/rec/conf/amta/LoharMOPH22.bib},
  bibsource = {dblp computer science bibliography, https://dblp.org}
}



***The system is designed mainly to translation software related texts. Due to this reason, if you provide input sentences from different domains, for example, from sports domain, the translation quality may be poor. 




    
