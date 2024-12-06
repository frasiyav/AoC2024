⟨ Split, ToNats, lf ⟩ ← •Import "bqn-libs/strings.bqn"

i ← ¯1↓•file.Chars "input05.txt"

rules‿updates ← ⊐⌾∾⌾∾ ·‿pages ← ToNats⚇1 lf Split¨ (lf∾lf) Split i
n ← 1+⌈´∾rules
m ← >n↑¨/⁼¨⊔˝⍉>rules
o ← (⍒ ⊢ ⊏⎉1 ⊏⟜m)¨updates
c ← (↕∘≠≡⍋)¨o
F ← +´(⌊2÷˜≠)⊸⊑¨
•Show F c/pages
•Show F o ⊏¨○(¬∘c⊸/) pages
