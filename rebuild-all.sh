# run this shell script when your command line is in the same directory as this file

# Read list of available langs from the file, "available_locales.txt".
IFS=$'\n'; read -a LANGS -d EOF < available_locales.txt


function build_en
{
    make clean
    rm -rf ./dist/en
    # export out the English version and place it in the distribution folder
    # then export out the epub version and copy it into the dist language directory
    make -e SPHINXOPTS="-D language='en'" html
    mkdir -p ./dist/en
    cp -r ./_build/html ./dist/en/html
    echo "HTML files moved to ./dist/en/html."

    #make epub
    #mkdir -p ./dist/en/epub
    # We will keep the epub only, to save space.
    #cp ./_build/epub/*.epub ./dist/en/epub

    #make latex
    #make latexpdf
    #mkdir -p ./dist/en/latex
    # Just like epub, lets discard everything except final pdf.
    #cp ./_build/latex/*.pdf ./dist/en/latex
}

# First param is the language code
function build_lang 
{
    # creates MO files for any PO files we might have updated
    sphinx-intl build -l $1

    make clean
    rm -rf ./dist/$1
    # export out the lang version and place it in the distribution folder
    # then export out the epub version and copy it into dist/lang
    make -e SPHINXOPTS="-D language='$1'" html
    mkdir -p ./dist/$1
    cp -R ./_build/html ./dist/$1/
    if [[ -d ./dist/en/html/_images ]]; then
        # Remove video files to save space, they're same for all langs
        rm ./dist/$1/html/_images/*.{mp4,webm}
        # Instead, create symlinks to the corresponding files in en.
        here=`pwd`
        VIDEOS=($here/dist/en/html/_images/*.{mp4,webm})
        for VIDEO in ${VIDEOS[@]}; do
            VNAME=`basename -a $VIDEO`
            ln -s "$VIDEO" "./dist/$1/html/_images/$VNAME"
        done
    fi
    echo "HTML files moved to ./dist/$1/html."

    #make -e SPHINXOPTS="-D language='$1'" epub
    #mkdir -p ./dist/$1/epub
    # We will keep the epub only, to save space.
    #cp ./_build/epub/*.epub ./dist/$1/epub

    #make -e SPHINXOPTS="-D language='$1'" latex
    #make -e SPHINXOPTS="-D language='$1'" latexpdf
    #mkdir -p ./dist/$1/latex
    # Just like epub, lets discard everything except final pdf.
    #cp ./_build/latex/*.pdf ./dist/$1/latex
}

if [ -z "$1" ]; then
    echo "No lang choice given. Building for en.."
    build_en
elif [[ $1 = 'all' ]]; then
    echo "Building for en.."
    build_en
    echo "Building for all other languages.."
    for lang in ${LANGS[@]}; do
        if [[ $lang != en ]]; then
            echo "Building for $lang"
            build_lang $lang
        fi
    done
elif [[ "${LANGS[*]}" =~ (^|[[:space:]])"$1"($|[[:space:]]) ]]; then   
    echo "Building for $1.."
    build_lang $1
else
    echo "Your choice ($1) is invalid. Building for en instead.."
    build_en
fi

