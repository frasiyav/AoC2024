i ← •file.Lines "input21.txt"
n ← (•ParseFloat ¯1↓⊢)¨i
nk ← [ "789"
       "456"
       "123"
       "X0A" ]

dk ← [ "X^A"
       "<v>" ]

_Memo2 ← {𝔽{𝕩.Has◶⟨⊢(⊢⊣𝕩.Set)𝔽´,𝕩.Get⟩⋈}•HashMap˜⟨⟩}
Pmt ← (≍↕0){∾˝(0∾˘1+𝕩)⊸⊏˘⍒˘=⌜˜↕𝕨}´-⟜↕
MV ← (|/·×»⋈○⌽«)-
DM ← " >v^<"⊏˜2⊸×⊸+´¨

nkp‿dkp ← {
  k ← ⥊𝕩
  e ← ⊑/○⥊⟜(↕≢)'X'=𝕩
  t ← {∾⟜'A'˘DM (¬e<⊸∊(<𝕨)+`⊢)˘⊸/ ⍷Pmt∘≠⊸⊏ 𝕩MV𝕨}⌜˜⥊↕≢𝕩
  {+´(⌊´𝕨SP˘t⊑˜k⊐⊢)˘2↕'A'∾𝕩}
}¨nk‿dk

SP ← ≡⟜1◶⟨-⟜1⊸DKP,≠⊢⟩_Memo2

•Show +´ n  3⊸NKP⊸×˜¨i
•Show +´ n 26⊸NKP⊸×˜¨i
