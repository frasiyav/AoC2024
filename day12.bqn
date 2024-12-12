i ← >•file.Lines "input12.txt"

_fix ← { 𝔽∘⊢⍟≢⟜𝔽_fix∘⊢⍟≢⟜𝔽 𝕩 }
Pad ← ⊢↑˝·≍⟜¬2+≢
S ← «˘∾»˘∾«≍»

Flood ← {(1↓·⊐0∾⊢)⌾⥊ (××⌈˝⟜S)_Fix +`⌾⥊⊸×𝕩}

regions ← ∾(⊢=⌜˜1+·↕·⌈´⥊)∘Flood¨<˘(⍷⥊)⊸(=⌜)⊐⌾⥊i
plots ← 1+˝(↕≠)⊸×regions
areas ← 1↓/⁼⥊plots
Cost ← +´ areas × regions (+´∘⥊×)⎉2 ⊢

corners ← [
  [[0‿0‿0‿1,0‿1‿1‿1,1‿0‿0‿1],[0‿0‿1‿0,1‿0‿1‿1,0‿1‿1‿0]]
  [[0‿1‿0‿0,1‿1‿0‿1,0‿1‿1‿0],[1‿0‿0‿0,1‿1‿1‿0,1‿0‿0‿1]]
]

•Show Cost +˝ ≠⎉2⟜S plots
•Show Cost (+´∘⥊ corners ∊˜⟜⥊⎉2 1‿1⊸⊑=2‿2↕⊢)⎉2 3‿3↕Pad plots
