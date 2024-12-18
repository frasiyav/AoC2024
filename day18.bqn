⟨ ToNats ⟩ ← •Import "bqn-libs/strings.bqn"
_fix ← { 𝔽∘⊢⍟≢⟜𝔽_fix∘⊢⍟≢⟜𝔽 𝕩 }

b ← ⌽∘ToNats¨ i ← •file.Lines "input18.txt"
g ← 71‿71⥊0
e ← 1⌾(¯1‿¯1⊸⊑)g

_S ← {𝕨𝔽(«˘𝔽»˘𝔽«𝔽»)𝕩}
min ← -2⋆31

•Show min -˜ {0‿0⊑(𝕩×⊢⌊_S 1+⊢)_fix min×e} ¬1¨⌾((1024↑b)⊸⊑)g
•Out i⊑˜ ⊑/¬ {0‿0⊑(𝕩∧∨_S˜)_fix e}˘ ¬>∨`{1⌾(𝕩⊸⊑)g}¨b
