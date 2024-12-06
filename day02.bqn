⟨ ToNums ⟩ ← •Import "bqn-libs/strings.bqn"

i ← •file.Lines "input02.txt"

r ← ToNums¨i

Ord ← ∧⊸(≡∨≡⟜⌽)
Dif ← ∧´1=1‿4⍋·|¯1↓-⟜«
Safe ← Dif∧Ord

•Show p1 ← +´ s ← Safe¨r

r /˜↩ ¬s
•Show p1 +´(∨´·Safe˘⊢/⎉1˜·≠⌜˜·↕≠)¨r
