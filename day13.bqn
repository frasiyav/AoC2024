⟨ ToNats ⟩ ← •Import "bqn-libs/strings.bqn"

i ← ∘‿3‿2⥊∾ToNats¨•file.Lines "input13.txt"
p2 ← 0‿0‿1e13 + p1 ← ⍉>i

Round ← ××·⌈¯0.5+|

F ← {
  [a,b,p] ← [[ax,ay],[bx,by],[px,py]] ← 𝕩
  nb ← (py-ax÷˜px×ay) ÷ by-ax÷˜bx×ay
  na ← ax÷˜px-bx×nb
  n ← Round [na,nb]
  +´⥊ 3‿1 × n ×⎉1 ∧˝p=+˝n×⎉1[a,b]
}

•Show F¨ p1‿p2


# Solution using bqn-libs/matrix:

# {
# ⟨ MP, Inverse ⟩ ← •Import "bqn-libs/matrix.bqn"
#
# p2 ← 1e13‿0⊸+˘ p1 ← (⊢˝⋈2↑⊢)˘i
#
# Round ← ××·⌈¯0.5+|
# F ← +´∘⥊ {3‿1 × (∧´𝕨=MP⟜𝕩)⊸× Round 𝕨 MP Inverse 𝕩}´˘
# •SHow F¨ p1‿p2
# }
