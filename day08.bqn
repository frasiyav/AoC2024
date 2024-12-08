i ← >•file.Lines "input08.txt"

d ← ≢i
f ← (⥊↕d) ⊔˜ 1-˜1↓⊐'.'∾⥊i

P1 ← ⥊·(1↓˘↕∘≠⌽˘⊢)(⊣+-)⌜˜
P2 ← ⥊⊢+⎉1(↕⌈´d)×⌜-⌜˜
C ← +´∘∊ (∧´0⊸≤∧<⟜d)¨⊸/

•Show C ∾P1¨f
•Show C ∾P2¨f
