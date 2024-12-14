⟨ToNums, Split, lf⟩ ← •Import "bqn-libs/strings.bqn"

[p,v] ← ⌽˘2‿2‿∘⥊⍉>ToNums¨•file.Lines "input14.txt" ⋄ d ← 103‿101

•Show ×´ /⁼⊐ (∧˝0⊸≠)⊸/⟜⍉ (⌊d÷2) ×∘- d|p+100×v

t ← ".*" ⊐> lf Split 1↓"
....*....
...***...
..*****..
.*******.
*********"

ToGrid ← (d⥊0){1⊸+⌾(𝕨⊸⊑)𝕩}˝⍉

c←0 ⋄ {c+↩1 ⋄ d|v+𝕩}•_while_{∧´∊⍉𝕩? ∨´⥊t⍷ToGrid 𝕩? 0; 1} p
•Show c
