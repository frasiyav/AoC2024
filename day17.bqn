⟨ ToNats ⟩ ← •Import "bqn-libs/strings.bqn"

While ← {𝕏•_while_𝕎@}´
XOR ← (2⋆31){𝕗⊸×⊸+´32•bit._xor○(𝕗⊸(⌊∘÷˜⋈|))}

⟨a,b,c⟩‿i ← 3‿¯1∾∘↑¨<ToNats¨•file.Lines "input17.txt"
n ← ≠i

Run ← {o𝕊⟨p,a,b,c⟩:
  While {𝕊:p<n}‿{𝕊:
    { 𝕊 op‿lo:
      co ← lo⊑0‿1‿2‿3‿a‿b‿c‿7
      p+↩2
      { 0: a ↩ ⌊a÷2⋆co;
        1: b ↩ b XOR lo;
        2: b ↩ 8|co;
        3: p ↩ p‿lo⊑˜0≠a;
        4: b ↩ b XOR c;
        5: o∾↩ 8|co;
        6: b ↩ ⌊a÷2⋆co;
        7: c ↩ ⌊a÷2⋆co
      }op
    }⟨p,p+1⟩⊏i
  }
  o
}
•Out ∾⟜','⊸∾´ '0' + ⟨⟩Run⟨0,a,b,c⟩

T ← {(𝕨↓i)≡⟨⟩Run⟨0,𝕩,b,c⟩}
•Show n {0<𝕨? ⌊´(𝕨-1)T◶∞‿𝕊¨8↕⊸+8×𝕩; 𝕩} 0
