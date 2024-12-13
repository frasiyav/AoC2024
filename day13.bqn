⟨ ToNums ⟩ ← •Import "bqn-libs/strings.bqn"

p2 ← 0‿0‿1e13 + p1 ← ⍉>(ToNums¨¯1↓⊢)˘↑‿4⥊•file.Lines "input13.txt"

Round ← ××·⌈¯0.5+|

F ← { 𝕊 [a,b,p]:
  nb ← ÷´ -⟜{𝕩⊸×⊸÷˜˝a}˜˝¨p‿b
  na ← (⊏÷˜⊢˝-nb×1⊏⊢)⊏˘𝕩
  n ← Round [na,nb]
  +´⥊ 3‿1 × n ×⎉1 ∧˝p=+˝n×⎉1[a,b]
}

•Show F¨ p1‿p2
