_fix ← { 𝔽∘⊢⍟≢⟜𝔽_fix∘⊢⍟≢⟜𝔽 𝕩 }

p ← ∨˝[·,s,e] ← ".SE"=⌜>•file.Lines "input16.txt"
min ← -2⋆31

Moves ← {[⟨»˘,»,«˘,«⟩⊑⊸{𝕎𝕩}˘1+𝕩, 1⌽1000+𝕩, ¯1⌽1000+𝕩, 𝕩]}

mp ← min -˜ (p⊸×˘·⌊˝Moves)_Fix >4↑<min×s
•Show ls ← +´⥊ e×⌊˝mp

mp ↩ ls-2⌽mp
•Show +´⥊ ∨˝ mp⊸(p⊸×˘·∨˝⊣=⎉3·Moves×)_Fix ls=mp
