#!/bin/sh

#Path declaration


src=en
tgt=fr
transModel=en-to-fr_TM.pt
bpeModel=bpe.model
testFile=sample.en



echo normalising input ....
sacremoses -l $src -j 4 normalize < $testFile > $testFile.nor

echo tokenising input ....
sacremoses -l $src -j 4 tokenize  < $testFile.nor > $testFile.tok

echo applying bpe transModel to input ...
subword-nmt apply-bpe -c $bpeModel  < $testFile.tok > $testFile.bpe


echo loading translation transModel $transModel ....
#onmt_translate -model $transModel -src $testFile.bpe -output $testFile.trans -replace_unk -gpu 0 -verbose
onmt_translate -model $transModel -src $testFile.bpe -output $testFile.trans -replace_unk -verbose

echo restoring segments for $testFile.trans .....
sed -r 's/(@@ )|(@@ ?$)//g' $testFile.trans > $testFile.trans.restored

echo detokensing $test_file.trans.restored .....
sacremoses -l $tgt -j 4 detokenize < $testFile.trans.restored > $testFile.trans.final

rm $testFile.nor
rm $testFile.tok
rm $testFile.bpe
rm $testFile.trans
rm $testFile.trans.restored

