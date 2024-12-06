i ← >•file.Lines "input04.txt"

D ← 0‿0⍉⊢
W ← (⌽⊸≡∨≡)⚇1
G ← ⥊·<⎉2 ↕

Diags ← (D¨∾D∘⌽¨) 4‿4 G ⊢
F ← ⥊¨ 4‿1 G ⊢
•Show +´ "XMAS" W (Diags∾F∾F∘⍉)i
•Show +´ (D¨ ∧○("MAS"W⊢) D∘⌽¨) 3‿3 G i
