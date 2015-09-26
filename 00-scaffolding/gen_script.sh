#!/bin/bash
# Generate a new shell script with shebang, comment, and copyright info.

script_name=${1:?You need to give your script a name.}
shift
comment=$*
author='Jerry Q. Hacker'

echo '#!/bin/bash' > $script_name
echo "# $comment" >> $script_name
echo "# © $author $(date +%Y)" >> $script_name
chmod u+x $script_name
