#!/bin/zsh
for f in nbs/*.ipynb ; do 
	jq '.metadata.kernelspec.display_name = "python3" | .metadata.kernelspec.language = "python" | .metadata.kernelspec.name = "python3" | del(.metadata.language_info)' $f > tmp.json 
	mv tmp.json $f ;
done
