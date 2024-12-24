⟨ Split, lf ⟩ ← •Import "bqn-libs/strings.bqn"

init‿gates ← lf Split¨(lf∾lf)Split ¯1↓•file.Chars "input24.txt"

iw‿iv ← <˘⍉>": "⊸Split¨ init
iv ↩ '0'-˜∾iv
gates ↩ ⍉>((⊑⋈1↓⊢)4‿4‿1‿0‿2⊏·(⊑"AND"‿"OR"‿"XOR"⊐<)⌾(1⊸⊑)' 'Split⊢)¨gates
z ← ∧('z'=⊑)¨⊸/⊏gates
m ← •Hashmap˝gates∾˘iw≍iv

res ← ⟨⟩

OB ← (¯1⊑z)⊸≢ ∧ 'z'≡⊑
P ← {d𝕊o‿g‿a‿b:
  {res∾↩<𝕩}⍟(g◶⟨
    OB ∨ (∨´d=0‿2)∧´·"x00"⊸≢¨a‿b˙
    OB
    (1≡d)∨·¬·∨´"xyz"∊˜·⊑¨o‿a‿b˙
  ⟩) o
  g◶∧‿∨‿≠´g⊸P¨a‿b
;
  𝕩
}⟜m.Get

•Show 2⊸×⊸+˜´ 3⊸P¨z
•Out ∾⟜','⊸∾´∧⍷res
