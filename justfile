
init:
    nix-shell -p texliveFull texlab

compile:
    latexmk -xelatex memoria_tfg.tex

watch:
    latexmk -xelatex -pvc memoria_tfg.tex

clean:
    latexmk -xelatex -c
