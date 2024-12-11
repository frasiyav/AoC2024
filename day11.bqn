⟨ ToNums ⟩ ← •Import "bqn-libs/strings.bqn"

i ← ToNums ⊑•file.Lines "input11.txt"

ND ← ⌊1+•math.Log10
SD ← 10⊸⋆⊸(⌊∘÷˜⋈|)
_Memo ← {𝔽{𝕩.Has◶⟨(⊢⊣𝕩.Set)⟜𝔽,𝕩.Get⟩}•HashMap˜⟨⟩}

F ← -⟜1⊸{
  ¯1𝕊𝕩: 1;
  𝕨𝕊0: F 𝕨‿1;
  0=2|d ← ND 𝕩? +´F¨𝕨⋈¨(d÷2) SD 𝕩;
  F 𝕨⋈2024×𝕩
}´_Memo

•Show +´F¨25⋈¨i
•Show +´F¨75⋈¨i
