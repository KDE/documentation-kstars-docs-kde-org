#!/usr/bin/env bash

EXPORTS_POT_DIR=1
FILE_PREFIX=docs_kstars_org_

# Read list of available langs from the file, "available_locales.txt".
IFS=$'\n'; read -a LANGS -d EOF < available_locales.txt

# First parameter will be the path of the directory where we have to store the po files
function export_po_dir 
{
    dstdir=$1
    for lang in ${LANGS[@]}; do
        echo "Creating POT files for $lang"
        make -e SPHINXOPTS="-D language='$lang'" gettext
        cd _build/gettext
        rm -rf untranslatable_pages.pot untranslatable_pages
        cd ../../
        mkdir -p $dstdir/$lang
        echo "Generating/Updating PO files for $lang"
        sphinx-intl update --pot-dir _build/gettext -l $lang
        # Sometime sphinx-intl fails with FileExistsError. Retry then.
        result=$?
        if [[ $result -ne 0 ]]; then
            sphinx-intl update --pot-dir _build/gettext -l $lang
        fi
        # Flatten the dir structure
        echo "Flattening the locale/$lang directory"
        cd locale/$lang
        find LC_MESSAGES/* -type f -name *.po -exec bash -c 'new=$(echo "{}" | sed s#/#___#g); cp "{}" "docs_kstars_org_$new"' \;
        cd ../../
        echo "Moving all PO files to $dstdir/$lang"
        mv locale/$lang/*.po $dstdir/$lang 
    done
}

# First parameter will be a path that will be a directory to the dirs for each lang and then all the .po files inside
function import_po_dirs 
{
    srcdir=$1
    mkdir -p locale
    # for some reason sphinx uses uk_UA instead of uk
    mv $srcdir/uk $srcdir/uk_UA
    # for some reason sphinx uses pt_PT instead of pt
    mv $srcdir/pt $srcdir/pt_PT
    # These are the language codes that sphinx supports.
    for lang in ${LANGS[@]}; do
       echo "Importing PO files for lang: $lang"
        if [ -d "$srcdir/$lang" ]; then
            rm -rf locale/$lang/LC_MESSAGES
            mkdir -p locale/$lang/LC_MESSAGES
            cp $srcdir/$lang/*.po locale/$lang/LC_MESSAGES
            cd locale/$lang/
            # Recreate the dir structure
            find LC_MESSAGES/* -type f -name *.po -exec bash -c 'new=$(echo "{}" | sed s#docs_kstars_org_##g | sed s#___#/#g); mkdir -p `dirname $new`; mv "{}" $new' \;
            mv LC_MESSAGES/LC_MESSAGES/* LC_MESSAGES
            rm -rf LC_MESSAGES/LC_MESSAGES
            cd ../../
        fi
    done
    ls $srcdir # Langs not in our list remains in the source directory.
}

# Ensure there's a second argument: a target path.
if [ -z "$2" ]; then
    echo "Missing the second parameter: Path to the directory where the PO files are at.\n"
    exit 1
fi

# Run the appropriate function
if [ $1 = 'export' ]; then
    export_po_dir $2
elif [ $1 = 'import' ]; then
    import_po_dirs $2
else
    echo "First argument must be: import OR export\n"
    exit 1
fi
