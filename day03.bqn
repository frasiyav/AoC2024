⟨ ToNums ⟩ ← •Import "bqn-libs/strings.bqn"
re ← •Import "bqn-pcre2/pcre2.bqn"

i ← •file.Chars "input03.txt"

Mul ← (×´·∾·ToNums¨1↓⊢)¨ "mul\((\d*),(\d*)\)"re._MatchAll

•Show +´ Mul i
•Show +´ Mul "don't\(\)[\s\S]*?(?:do\(\)|\z)" re._ReplaceAll_"" i
