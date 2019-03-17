#!/usr/bin/env bash
# Demonstrate the use of array offsets

# bash arrays are 0-indexed
words=(first second third fourth fifth)

cat << END
${words[*]:0}
${words[*]:1}
${words[*]:2}
${words[*]:1:3}
END
