⟨ ToNats ⟩ ← •Import "bqn-libs/strings.bqn"

p2 ← 0‿0‿1e13 + p1 ← ⍉>∘‿3‿2⥊∾ToNats¨•file.Lines "input13.txt"

Round ← ××·⌈¯0.5+|

F ← {
  [a,b,p] ← [[ax,ay],[bx,by],[px,py]] ← 𝕩
  nb ← (py-ax÷˜px×ay) ÷ by-ax÷˜bx×ay
  na ← ax÷˜px-bx×nb
  n ← Round [na,nb]
  +´⥊ 3‿1 × n ×⎉1 ∧˝p=+˝n×⎉1[a,b]
}

•Show F¨ p1‿p2
