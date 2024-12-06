⟨ ToNats ⟩ ← •Import "bqn-libs/strings.bqn"

i ← •file.Lines "input01.txt"

[l,r] ← ∨˘⍉>ToNats¨i
c ← (1+⊑l)↑/⁼r
•Show +´|l-r
•Show +´l×l⊏c
