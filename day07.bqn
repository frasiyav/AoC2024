⟨ ToNats ⟩ ← •Import "bqn-libs/strings.bqn"

[t,c] ← ⍉>(⊑⋈1↓⊢)∘ToNats¨ •file.Lines "input07.txt"

_F ← {1<≠𝕩? ∨´𝕊⟜(¯1↓𝕩)¨⌊⊸=⊸/𝕗𝕨{𝕗𝕎𝕩}¨⊢´𝕩; 𝕨≡⊑𝕩}

•Show +´t/˜ t ⟨-,÷⟩_F¨c
•Show +´t/˜ t ⟨-,÷,-÷10⋆1+·⌊10⋆⁼⊢⟩_F¨c
