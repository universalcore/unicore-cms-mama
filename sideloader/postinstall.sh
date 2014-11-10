pip="${VENV}/bin/pip"

cd "${INSTALLDIR}/${REPO}/"

$pip install -e "${INSTALLDIR}/${REPO}/"

ini_files="mama.*.ini"

for ini in $ini_files
do
    `which eg-tools` resync -c $ini -m unicore.content.models.Category -f mappings/category.mapping.json
    `which eg-tools` resync -c $ini -m unicore.content.models.Page -f mappings/page.mapping.json
done
