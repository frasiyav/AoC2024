⟨ Split ⟩ ← •Import "bqn-libs/strings.bqn"

d‿p ← (2⊸↓⋈", "Split⊑) •file.Lines "input19.txt"

l ← ≠¨p
g ← {>(1+≠𝕩)(⊣↑¨·/⁼¨∾˜⊔○∾l+⊢)/∘⍷⟜𝕩¨p}¨d
a ← (+´¯1⊑¨+˝∘×⍟(↕≠∘⊢)⟜⊏)¨g

•Show +´×a
•Show +´a
