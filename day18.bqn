⟨ ToNats ⟩ ← •Import "bqn-libs/strings.bqn"
_fix ← { 𝔽∘⊢⍟≢⟜𝔽_fix∘⊢⍟≢⟜𝔽 𝕩 }

b ← ⌽∘ToNats¨ i ← •file.Lines "input18.txt"
d ← 71‿71
e ← d-⊸↑≍1
m ← ∧`{0⌾(𝕩⊸⊑)d⥊1}¨b

_S ← {𝔽⟜(«˘𝔽»˘𝔽«𝔽»)}
min ← -2⋆31

•Show min -˜ {⊑(𝕩×⊢⌊_S 1+⊢)_Fix min×e} 1023⊑m
•Out i⊑˜ ⊑/¬ {⊑(𝕩∧∨_S˜)_Fix e}¨m
