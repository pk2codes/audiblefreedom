#!/bin/bash

basePath="/my/path/to/hack/audible" # edit me

cd "${basePath}";
mkdir "in";
mkdir "out";

dirIn="${basePath}/in";
dirOut="${basePath}/out";
pathToAAXtoMP3="AAXtoMP3"; # edit me if not in PATH
activationKey="XXX" # edit me!!!

for entry in `ls $dir`; do
    echo $entry
    "${pathToAAXtoMP3}" -A "${activationKey}" -t "${outDir}" "${dirIn}/${entry}"
done



