i ← >•file.Lines "input12.txt"

_fix ← { 𝔽∘⊢⍟≢⟜𝔽_fix∘⊢⍟≢⟜𝔽 𝕩 }
Pad ← ⊢↑˝·≍⟜¬2+≢
S ← «˘∾»˘∾«≍»

m ← =⎉2⟜S i
plots ← 1+ ⊐⌾⥊ (⊢⌈˝m×S)_fix ↕∘≠⌾⥊i
areas ← /⁼⥊plots
Cost ← +´ areas×·+´¨plots⊔⊢

corners ← [
  [[0‿0‿0‿1,0‿1‿1‿1,1‿0‿0‿1],[0‿0‿1‿0,1‿0‿1‿1,0‿1‿1‿0]]
  [[0‿1‿0‿0,1‿1‿0‿1,0‿1‿1‿0],[1‿0‿0‿0,1‿1‿1‿0,1‿0‿0‿1]]
]

•Show Cost +˝ ≠⎉2⟜S plots
•Show Cost (+´∘⥊ corners ∊˜⟜⥊⎉2 2‿2↕⊢=1‿1⊑⊢)⎉2 3‿3↕Pad plots
