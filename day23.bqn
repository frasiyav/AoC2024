i ← >2(↑⋈-⊸↑)¨•file.Lines "input23.txt"

k ← ∧⍷⥊i
i ↩ <˘k⊐i
n ← ≠k
m ← 1¨⌾(i⊸⊑)n‿n⥊0
m ∨↩ ⍉m

MP ← +˝∘×⎉1‿∞

•Show 6÷˜ m-○(+´0‿0⍉MP⍟2˜)(⊢/⎉1/⟜m)'t'≠⊑¨k

d ← =⌜˜↕n
res ← 0↑m
{BK r‿p‿x:
  x ∨○(∨´) p?
    { n ← ⊏𝕩/m
      BK ⟨r∨𝕩, p∧n, x∧n⟩
      p ∧↩ ¬𝕩
      x ∨↩ 𝕩
    }˘d/˜p∧¬m⊏˜⊑/p∨x
  ;
    res ∾↩ ⊑𝕩
} ⟨n⥊0, n⥊1, n⥊0⟩

•Out ∾⟜','⊸∾´ k/˜ (⊑·⍒+´˘)⊸⊏ res
