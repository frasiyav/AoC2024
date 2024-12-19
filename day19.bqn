⟨ Split ⟩ ← •Import "bqn-libs/strings.bqn"
d‿p ← (2⊸↓⋈", "Split⊑) •file.Lines "input19.txt"

l ← ≠¨p

g ← {n←1+≠𝕩 ⋄ >(n↑/⁼)¨n↑(⊢⊔○∾l+⊢)(/⍷⟜𝕩)¨p}¨d
a ← {c←0 ⋄ 𝕩⊸{c+↩¯1⊑𝕩⋄+˝𝕨×𝕩}•_while_(∨´×)⊏𝕩 ⋄ c}¨g

•Show +´×a
•Show +´a
