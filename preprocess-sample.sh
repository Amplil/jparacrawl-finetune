#!/bin/sh

# split the corpus into subwords
mkdir -p ./corpus/spm-law
for L in en ja; do
    for F in ./corpus/jaen-law/txt/*.$L; do
        B=`basename $F`
        spm_encode --model=./corpus/enja_spm_models/spm.$L.nopretok.model --output_format=piece < $F > ./corpus/spm-law/$B
    done
done
