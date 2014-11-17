#!/bin/bash
find . -name '*.mo' -delete
mkdir -p unicorecmsmama/locale

pot-create -o unicorecmsmama/locale/unicorecmsmama.pot unicorecmsmama/

declare -a arr=("eng_UK" "tha_TH" "ind_ID" "swh_TZ" "swh_KE")

for lang in "${arr[@]}"
do
    mkdir -p "unicorecmsmama/locale/""$lang""/LC_MESSAGES"

    if [ ! -f "unicorecmsmama/locale/""$lang""/LC_MESSAGES/unicorecmsmama.po" ]; then
        msginit -l $lang -i unicorecmsmama/locale/unicorecmsmama.pot -o unicorecmsmama/locale/$lang/LC_MESSAGES/unicorecmsmama.po
    fi

    msgmerge --update unicorecmsmama/locale/$lang/LC_MESSAGES/unicorecmsmama.po unicorecmsmama/locale/unicorecmsmama.pot
    msgfmt unicorecmsmama/locale/$lang/LC_MESSAGES/*.po -o unicorecmsmama/locale/$lang/LC_MESSAGES/unicorecmsmama.mo
done
