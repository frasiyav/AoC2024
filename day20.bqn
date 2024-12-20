_fix ← { 𝔽∘⊢⍟≢⟜𝔽_fix∘⊢⍟≢⟜𝔽 𝕩 }

p ← ∨˝[·,start,end] ← ".SE"=⌜>•file.Lines "input20.txt"

MD ← +´|∘-
_S ← {𝔽⟜(«˘𝔽»˘𝔽«𝔽»)}

r ← (p×⊢⌊_S 1+⊢)_Fix end × -2⋆31
i ← p/○⥊↕≢p
d ← ⥊MD⌜˜i
c ← d-˜⥊-⌜˜i⊑r
•Show (+´100≤c/˜d≤⊢)¨2‿20
