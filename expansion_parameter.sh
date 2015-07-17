#!/usr/bin/env bash
# Various parameter expansion examples

name=${1:-jerry}
test_string='aaa bbb ccc ddd eee bbb'
prefix_string=something-test.jpg
suffix_string=test.conf
multi_case_string='abcdefgABCDEFGabcdefgABCDEFG'

cat << END
default value for name if not provided: \$name: $name
\$test_string substitution: ${test_string/bbb/B   B   B}
global \$test_string substitution: ${test_string//bbb/B   B   B}
offset de 3: ${test_string:3}
length: ${#test_string}

Prefix string: ${prefix_string}
Remove/replace prefix: ${prefix_string#something-}

Suffix string: ${suffix_string}
Remove/Replace suffix: ${suffix_string%.conf}

Case modification
Multi-case string: ${multi_case_string}
lower -> UPPER: ${multi_case_string^^}
UPPER -> lower: ${multi_case_string,,}

Only modify matched characters:
lower -> UPPER: ${multi_case_string^^[abc]}
UPPER -> lower: ${multi_case_string,,[DEF]}
END
