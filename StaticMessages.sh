#!/usr/bin/env bash

EXPORTS_POT_DIR=1
FILE_PREFIX=kstars_docs_

# Read list of available langs from the file, "available_locales.txt".
IFS=$'\n'; read -a LANGS -d EOF < available_locales.txt

# First parameter will be the path of the directory where we have to store the po files
function export_pot_dir
{
    echo "Creating POT files in $1"
    if ! make gettext; then
        echo "Pot dir export aborted because of failing make gettext"
        return;
    fi
    potdir=$1
    cd _build/gettext
    #rm -rf untranslatable_pages.pot untranslatable_pages
    # Flatten the dir structure
    echo "> Add ${FILE_PREFIX} prefix"
    find * -type f -exec bash -c 'new=$(echo "{}" | sed s#/#___#g); mv "{}" "kstars_docs_$new"' \;
    echo "> Move files to $1"
    mv *.pot $potdir
    #echo "> clean up"
    #rm -rf *
}

# First parameter will be a path that will be a directory to the dirs for each lang and then all the .po files inside
function import_po_dirs 
{
    podir=$1
    mkdir -p locale
    # for some reason sphinx uses nb_NO instead of nb
    if [ -d $podir/nb ]; then
        mv $podir/nb $podir/nb_NO
    fi
    # for some reason sphinx uses uk_UA instead of uk
    if [ -d $podir/uk ]; then
        mv $podir/uk $podir/uk_UA
    fi
    # for some reason sphinx uses pt_PT instead of pt
    if [ -d $podir/pt ]; then
        mv $podir/pt $podir/pt_PT
    fi
    # These are the language codes that sphinx supports.
    for lang in ${LANGS[@]}; do
       echo "Importing PO files for lang: $lang"
        if [ -d "$podir/$lang" ]; then
            echo "> processing language $lang"
            rm -rf locale/$lang/LC_MESSAGES
            mkdir -p locale/$lang/LC_MESSAGES
            echo locale/$lang/LC_MESSAGES
            mv $podir/$lang/*.po locale/$lang/LC_MESSAGES
            cd locale/$lang/LC_MESSAGES
            # Recreate the dir structure
            find * -type f -exec bash -c 'new=$(echo "{}" | sed s#kstars_docs_##g | sed s#___#/#g); mkdir -p `dirname $new`; mv "{}" $new' \;
            cd ../../..
            rm -rf $podir/$lang
        fi
    done
    ls $podir # Langs not in our list remains in the source directory.
}

