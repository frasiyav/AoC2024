⟨ ToNums ⟩ ← •Import "bqn-libs/strings.bqn"

i ← ToNums •file.Chars "input11.txt"

ND ← ⌊1+•math.Log10
SD ← 10⊸⋆⊸(⌊∘÷˜⋈|)
_Memo ← {𝔽{𝕩.Has◶⟨⊢(⊢⊣𝕩.Set)𝔽´,𝕩.Get⟩⋈}•HashMap˜⟨⟩}

F ← -⟜1⊸{
 ¯1𝕊𝕩: 1;
  0=2|d ← ND 𝕩? +´ 𝕨 F¨(d÷2) SD 𝕩;
  𝕨 F 1⌈2024×𝕩
}_Memo

•Show +´ 25 F¨i
•Show +´ 75 F¨i
