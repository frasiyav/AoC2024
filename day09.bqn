i ← '0'-˜¯1↓•file.Chars "input09.txt"
f ← i/∾⟜¯1⊸∾´↕n←⌈2÷˜≠i

•Show +´(↕≠)⊸× {𝕩⌾((¯1=𝕨)⊸/)𝕨}⟜⌽´ ¯1⊸≠⊸/⌾(1⊸⊑) f(↓⋈↑)˜-+´¯1=f


[ids,lengths] ← ⍉>(⊑⋈≠)¨ (+`≠⟜»)⊸⊔ f
{
  m ← 𝕩=ids
  p ← ⊑/m
  id ← p⊑ids
  len ← p⊑lengths
  { 𝕊⟨⟩: @;
    t ← ⊑𝕩
    ids ¯1⌾(p⊸⊑)↩
    lengths len⌾(p⊸⊑)↩
    head‿tail ← t (↑˘⋈1⊸+⊸↓˘) [ids,lengths]
    r ← len-˜t⊑lengths
    [ids,lengths] ↩ head ∾˘ tail ∾˘˜ ∾˘⟜¯1‿r⍟(×r) id‿len
    @
  } /(¬»∨`m) ∧ (¯1=ids) ∧ len≤lengths
}¨⌽↕n

•Show +´(¯1⊸≠×⊢×·↕≠) lengths/ids
