#!/usr/bin/env bash
# Examples of brace expansion

echo The numbers from one to ten via brace expansion:
echo {1..10}

echo "The numbers from one to ten via brace expansion (zero-padded):"
echo {01..10}

echo "The numbers from one to ten via brace expansion (double-zero padded):"
echo {001..10}

echo The numbers from one to ten via brace expansion, stepping by 2:
echo {1..10..2}

echo The numbers from ten to one via brace expansion, stepping by -1:
echo {10..1..-1}

echo The numbers from ten to one via brace expansion, stepping by -2:
echo {10..1..-2}
