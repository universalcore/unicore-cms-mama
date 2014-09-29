#!/bin/bash
find . -name '*.mo' -delete
mkdir -p unicorecmsmama/locale

pot-create -o unicorecmsmama/locale/unicorecmsmama.pot unicorecmsmama/

mkdir -p unicorecmsmama/locale/eng_UK/LC_MESSAGES
mkdir -p unicorecmsmama/locale/tha_TH/LC_MESSAGES
mkdir -p unicorecmsmama/locale/ind_ID/LC_MESSAGES

# only uncomment if it's the 1st time
#msginit -l eng_UK -i unicorecmsmama/locale/unicorecmsmama.pot -o unicorecmsmama/locale/eng_UK/LC_MESSAGES/unicorecmsmama.po
#msginit -l tha_TH -i unicorecmsmama/locale/unicorecmsmama.pot -o unicorecmsmama/locale/tha_TH/LC_MESSAGES/unicorecmsmama.po
#msginit -l ind_ID -i unicorecmsmama/locale/unicorecmsmama.pot -o unicorecmsmama/locale/ind_ID/LC_MESSAGES/unicorecmsmama.po

msgmerge --update unicorecmsmama/locale/eng_UK/LC_MESSAGES/unicorecmsmama.po unicorecmsmama/locale/unicorecmsmama.pot
msgmerge --update unicorecmsmama/locale/tha_TH/LC_MESSAGES/unicorecmsmama.po unicorecmsmama/locale/unicorecmsmama.pot
msgmerge --update unicorecmsmama/locale/ind_ID/LC_MESSAGES/unicorecmsmama.po unicorecmsmama/locale/unicorecmsmama.pot

msgfmt unicorecmsmama/locale/eng_UK/LC_MESSAGES/*.po -o unicorecmsmama/locale/eng_UK/LC_MESSAGES/unicorecmsmama.mo
msgfmt unicorecmsmama/locale/tha_TH/LC_MESSAGES/*.po -o unicorecmsmama/locale/tha_TH/LC_MESSAGES/unicorecmsmama.mo
msgfmt unicorecmsmama/locale/ind_ID/LC_MESSAGES/*.po -o unicorecmsmama/locale/ind_ID/LC_MESSAGES/unicorecmsmama.mo
