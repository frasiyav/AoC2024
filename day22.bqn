i ← •ParseFloat¨ •file.Lines "input22.txt"

XOR ← 32•bit._XOR
e ← {XOR⟜(16777216|𝕎)𝕏}´⟨2048×⊢,⌊32÷˜⊢,64×⊢,⊢⟩

s ← ⍉>E⍟(↕2001)i
•Show +´¯1⊑˘s

v ← 10|s
d ← 1(↓--⊸↓)˘v

m ← •Hashmap˜⟨⟩
Add ← m.Has∘⊢◶⟨m.Set˜,⊢ m.Set +⟜m.Get⟩

v {(4↓𝕨) ⊑⊸Add˘○((∊c)⊸/) c←4↕𝕩 ⋄ @}˘d
•Show ⌈´m.Values@
