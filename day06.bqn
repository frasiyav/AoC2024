i ← ".#^"⊐>•file.Lines "input06.txt"

o ← 1=i
IB ← ∧´0⊸≤∧<⟜(≢i)
start ← 0⋈˜⊑ /○⥊⟜(↕≢) 2=i
Fwd ← {p‿d:⟨p+d⊑⟨¯1‿0,0‿1,1‿0,0‿¯1⟩,d⟩}
Rot ← {p‿d:⟨p,4|d+1⟩}

m ← •HashMap˜⟨⟩
l←1 ⋄ R←{l↩0⋄𝕩}
m.Set⟜1⊸{
  IB f ← ⊑ p ← Fwd 𝕩?
    (f⊑o)◶p‿Rot 𝕩
  ;
    R @
}•_while_{𝕊:l} start

•Show ≠x ← ⍷⊑¨m.Keys@

Test ← { 𝕊 t:
  m ← •HashMap˜⟨⟩
  l←1 ⋄ R←{l↩0⋄𝕩}
  m.Set⟜1⊸{
    IB f ← ⊑ p ← Fwd 𝕩?
      R∘1⍟m.Has ((f≡t)∨f⊑o)◶p‿Rot 𝕩
    ;
      R 0
  }•_while_{𝕊:l} start
}

•Show +´Test¨ (0=⊑⟜i)¨⊸/ x
