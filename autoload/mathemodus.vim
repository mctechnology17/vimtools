"=========================================
" FileName: mathemodus.vim
" Date: 16:52 30.March.2022
" Author: Marcos Chow Castro
" Email: mctechnology170318@gmail.com
" GitHub: https://github.com/mctechnology17
" Brief: Unicode chars for Vim (LaTeX)
"==========================================
function! mathemodus#MatheModusOn() "{{{
  imap Alpha Α
  imap Beta Β
  imap Gamma Γ
  imap Delta Δ
  imap Epsilon Ε
  imap Zeta Ζ
  imap Eta Η
  imap Theta Θ
  imap Iota Ι
  imap Kappa Κ
  imap Lambda Λ
  imap upMu Μ
  imap upNu Ν
  imap Xi Ξ
  imap upOmicron Ο
  imap Pi Π
  imap Rho Ρ
  imap Sigma Σ
  imap Tau Τ
  imap Upsilon Υ
  imap Phi Φ
  imap Chi Χ
  imap Psi Ψ
  imap Omega Ω
  imap alpha α
  imap beta β
  imap gamma γ
  imap delta δ
  imap upepsilon ε
  imap zeta ζ
  imap eta η
  imap theta θ
  imap iota ι
  imap kappa κ
  imap lambda λ
  imap mu μ
  imap nu ν
  imap xi ξ
  imap upomicron ο
  imap pi π
  imap rho ρ
  imap varsigma ς
  imap sigma σ
  imap tau τ
  imap upsilon υ
  imap varphi φ
  imap chi χ
  imap psi ψ
  imap omega ω
  imap upvarbeta ϐ
  imap vartheta ϑ
  imap phi ϕ
  imap varpi ϖ
  imap upoldKoppa Ϙ
  imap upoldkoppa ϙ
  imap Stigma Ϛ
  imap upstigma ϛ
  imap Digamma Ϝ
  imap digamma ϝ
  imap Koppa Ϟ
  imap upkoppa ϟ
  imap Sampi Ϡ
  imap upsampi ϡ
  imap varkappa ϰ
  imap varrho ϱ
  imap textTheta ϴ
  imap epsilon ϵ
  imap varepsilon ε
  imap backepsilon ϶
  imap sptilde ~
  imap cent ¢
  imap pounds £
  imap yen ¥
  imap neg ¬
  imap lnot ¬
  imap circledR ®
  imap pm ±
  imap Micro µ
  imap euro €
  imap mathbb{C} ℂ
  imap Euler ℇ
  imap mathcal{g} ℊ
  imap mathcal{H} ℋ
  imap mathfrak{H} ℌ
  imap mathbb{H} ℍ
  imap Planckconst ℎ
  imap hslash ℏ
  imap mathcal{I} ℐ
  imap Im ℑ
  imap mathcal{L} ℒ
  imap ell ℓ
  imap mathbb{N} ℕ
  imap wp ℘
  imap mathbb{P} ℙ
  imap mathbb{Q} ℚ
  imap mathcal{R} ℛ
  imap Re ℜ
  imap mathbb{R} ℝ
  imap mathbb{Z} ℤ
  imap tcohm Ω
  imap mho ℧
  imap mathfrak{Z} ℨ
  imap turnediota ℩
  imap Angstroem Å
  imap mathcal{B} ℬ
  imap mathfrak{C} ℭ
  imap mathcal{e} ℯ
  imap mathcal{E} ℰ
  imap mathcal{F} ℱ
  imap Finv Ⅎ
  imap mathcal{M} ℳ
  imap mathcal{o} ℴ
  imap mathbb{\\pi} ℼ
  imap mathbb{\\gamma} ℽ
  imap mathbb{\\Gamma} ℾ
  imap mathbb{\\Pi} ℿ
  imap mathbb{\\Sigma} ⅀
  imap Game ⅁
  imap sansLturned ⅂
  imap sansLmirrored ⅃
  imap Yup ⅄
  imap CapitalDifferenti ⅅ
  imap DifferentialD ⅆ
  imap ExponetialE ⅇ
  imap ComplexI ⅈ
  imap ComplexJ ⅉ
  imap PropertyLine ⅊
  imap invamp ⅋
  imap leftarrow ←
  imap uparrow ↑
  imap rightarrow →
  imap to →
  imap downarrow ↓
  imap leftrightarrow ↔
  imap updownarrow ↕
  imap nwarrow ↖
  imap nearrow ↗
  imap searrow ↘
  imap swarrow ↙
  imap Leftarrow ⇐
  imap Uparrow ⇑
  imap Rightarrow ⇒
  imap Downarrow ⇓
  imap Leftrightarrow ⇔
  imap Updownarrow ⇕
  imap Nwarrow ⇖
  imap Nearrow ⇗
  imap Searrow ⇘
  imap Swarrow ⇙
  imap mathord ⍹
  imap forall ∀
  imap complement ∁
  imap partial 𝜕
  imap exists ∃
  imap nexists ∄
  imap varnothing ∅
  imap emptyset ∅
  imap increment ∆
  imap nabla ∇
  imap in ∈
  imap notin ∉
  imap smallin ∊
  imap ni ∋
  imap nni ∌
  imap smallni ∍
  imap prod ∏
  imap coprod ∐
  imap sum ∑
  imap sqrt √
  imap sqrt[3] ∛
  imap sqrt[4] ∜
  imap propto ∝
  imap infty ∞
  imap wedge ∧
  imap vee ∨
  imap land ∧
  imap lor ∨
  imap cap ∩
  imap cup ∪
  imap int ∫
  imap iint ∬
  imap iiint ∭
  imap approx ≈
  imap napprox ≉
  imap not\\eq ≠
  imap equiv ≡
  imap nequiv ≢
  imap Equiv ≣
  imap leq ≤
  imap geq ≥
  imap leqq ≦
  imap geqq ≧
  imap lneqq ≨
  imap gneqq ≩
  imap ll ≪
  imap gg ≫
  imap subset ⊂
  imap supset ⊃
  imap nsubset ⊄
  imap nsupset ⊅
  imap subseteq ⊆
  imap supseteq ⊇
  imap nsubseteq ⊈
  imap nsupseteq ⊉
  imap subsetneq ⊊
  imap supsetneq ⊋
  imap diameter ⌀
  imap house ⌂
  imap lceil ⌈
  imap rceil ⌉
  imap lfloor ⌊
  imap rfloor ⌋
  imap invneg ⌐
  imap turnednot ⌙
  imap lparenuend ⎛
  imap lparenextender ⎜
  imap lparenlend ⎝
  imap rparenuend ⎞
  imap rparenextender ⎟
  imap rparenlend ⎠
  imap lbrackuend ⎡
  imap lbrackextender ⎢
  imap lbracklend ⎣
  imap rbrackuend ⎤
  imap rbrackextender ⎥
  imap rbracklend ⎦
  imap lbraceuend ⎧
  imap lbracemid ⎨
  imap lbracelend ⎩
  imap vbraceextender ⎪
  imap rbraceuend ⎫
  imap rbracemid ⎬
  imap rbracelend ⎭
  imap intextender ⎮
  imap mathbb{A} 𝔸
  imap mathbb{B} 𝔹
  imap mathbb{D} 𝔻
  imap mathbb{E} 𝔼
  imap mathbb{F} 𝔽
  imap mathbb{G} 𝔾
  imap mathbb{I} 𝕀
  imap mathbb{J} 𝕁
  imap mathbb{K} 𝕂
  imap mathbb{L} 𝕃
  imap mathbb{M} 𝕄
  imap mathbb{O} 𝕆
  imap mathbb{S} 𝕊
  imap mathbb{T} 𝕋
  imap mathbb{U} 𝕌
  imap mathbb{V} 𝕍
  imap mathbb{W} 𝕎
  imap mathbb{X} 𝕏
  imap mathbb{Y} 𝕐
  imap ^0 ⁰
  imap ^1 ¹
  imap ^2 ²
  imap ^3 ³
  imap ^4 ⁴
  imap ^5 ⁵
  imap ^6 ⁶
  imap ^7 ⁷
  imap ^8 ⁸
  imap ^9 ⁹
  imap ^+ ⁺
  imap ^- ⁻
  imap ^= ⁼
  imap ^( ⁽
  imap ^) ⁾
  imap ^a ᵃ
  imap ^b ᵇ
  imap ^c ᶜ
  imap ^d ᵈ
  imap ^e ᵉ
  imap ^f ᶠ
  imap ^g ᵍ
  imap ^h ʰ
  imap ^i ⁱ
  imap ^j ʲ
  imap ^k ᵏ
  imap ^l ˡ
  imap ^m ᵐ
  imap ^n ⁿ
  imap ^o ᵒ
  imap ^p ᵖ
  imap ^r ʳ
  imap ^s ˢ
  imap ^t ᵗ
  imap ^u ᵘ
  imap ^v ᵛ
  imap ^w ʷ
  imap ^x ˣ
  imap ^y ʸ
  imap ^z ᶻ
  imap ^A ᴬ
  imap ^B ᴮ
  imap ^D ᴰ
  imap ^E ᴱ
  imap ^G ᴳ
  imap ^H ᴴ
  imap ^I ᴵ
  imap ^J ᴶ
  imap ^K ᴷ
  imap ^L ᴸ
  imap ^M ᴹ
  imap ^N ᴺ
  imap ^O ᴼ
  imap ^P ᴾ
  imap ^R ᴿ
  imap ^T ᵀ
  imap ^U ᵁ
  imap ^V ⱽ
  imap ^W ᵂ
  imap _0 ₀
  imap _1 ₁
  imap _2 ₂
  imap _3 ₃
  imap _4 ₄
  imap _5 ₅
  imap _6 ₆
  imap _7 ₇
  imap _8 ₈
  imap _9 ₉
  imap _+ ₊
  imap _- ₋
  imap _= ₌
  imap _( ₍
  imap _) ₎
  imap _a ₐ
  imap _e ₑ
  imap _h ₕ
  imap _i ᵢ
  imap _j ⱼ
  imap _k ₖ
  imap _l ₗ
  imap _m ₘ
  imap _n ₙ
  imap _o ₒ
  imap _p ₚ
  imap _r ᵣ
  imap _s ₛ
  imap _t ₜ
  imap _u ᵤ
  imap _v ᵥ
  imap _x ₓ
  imap frac{1}{2} ½
  imap frac{1}{4} ¼
  imap frac{3}{4} ¾
endfunction "}}}
function! mathemodus#MatheModusOff() "{{{
  iunmap Alpha
  iunmap Beta
  iunmap Gamma
  iunmap Delta
  iunmap Epsilon
  iunmap Zeta
  iunmap Eta
  iunmap Theta
  iunmap Iota
  iunmap Kappa
  iunmap Lambda
  iunmap upMu
  iunmap upNu
  iunmap Xi
  iunmap upOmicron
  iunmap Pi
  iunmap Rho
  iunmap Sigma
  iunmap Tau
  iunmap Upsilon
  iunmap Phi
  iunmap Chi
  iunmap Psi
  iunmap Omega
  iunmap alpha
  iunmap beta
  iunmap gamma
  iunmap delta
  iunmap upepsilon
  iunmap zeta
  iunmap eta
  iunmap theta
  iunmap iota
  iunmap kappa
  iunmap lambda
  iunmap mu
  iunmap nu
  iunmap xi
  iunmap upomicron
  iunmap pi
  iunmap rho
  iunmap varsigma
  iunmap sigma
  iunmap tau
  iunmap upsilon
  iunmap varphi
  iunmap chi
  iunmap psi
  iunmap omega
  iunmap upvarbeta
  iunmap vartheta
  iunmap phi
  iunmap varpi
  iunmap upoldKoppa
  iunmap upoldkoppa
  iunmap Stigma
  iunmap upstigma
  iunmap Digamma
  iunmap digamma
  iunmap Koppa
  iunmap upkoppa
  iunmap Sampi
  iunmap upsampi
  iunmap varkappa
  iunmap varrho
  iunmap textTheta
  iunmap epsilon
  iunmap varepsilon
  iunmap backepsilon
  iunmap sptilde
  iunmap cent
  iunmap pounds
  iunmap yen
  iunmap neg
  iunmap lnot
  iunmap circledR
  iunmap pm
  iunmap Micro
  iunmap euro
  iunmap mathbb{C}
  iunmap Euler
  iunmap mathcal{g}
  iunmap mathcal{H}
  iunmap mathfrak{H}
  iunmap mathbb{H}
  iunmap Planckconst
  iunmap hslash
  iunmap mathcal{I}
  iunmap Im
  iunmap mathcal{L}
  iunmap ell
  iunmap mathbb{N}
  iunmap wp
  iunmap mathbb{P}
  iunmap mathbb{Q}
  iunmap mathcal{R}
  iunmap Re
  iunmap mathbb{R}
  iunmap mathbb{Z}
  iunmap tcohm
  iunmap mho
  iunmap mathfrak{Z}
  iunmap turnediota
  iunmap Angstroem
  iunmap mathcal{B}
  iunmap mathfrak{C}
  iunmap mathcal{e}
  iunmap mathcal{E}
  iunmap mathcal{F}
  iunmap Finv
  iunmap mathcal{M}
  iunmap mathcal{o}
  iunmap mathbb{\\pi}
  iunmap mathbb{\\gamma}
  iunmap mathbb{\\Gamma}
  iunmap mathbb{\\Pi}
  iunmap mathbb{\\Sigma}
  iunmap Game
  iunmap sansLturned
  iunmap sansLmirrored
  iunmap Yup
  iunmap CapitalDifferenti
  iunmap DifferentialD
  iunmap ExponetialE
  iunmap ComplexI
  iunmap ComplexJ
  iunmap PropertyLine
  iunmap invamp
  iunmap leftarrow
  iunmap uparrow
  iunmap rightarrow
  iunmap to
  iunmap downarrow
  iunmap leftrightarrow
  iunmap updownarrow
  iunmap nwarrow
  iunmap nearrow
  iunmap searrow
  iunmap swarrow
  iunmap Leftarrow
  iunmap Uparrow
  iunmap Rightarrow
  iunmap Downarrow
  iunmap Leftrightarrow
  iunmap Updownarrow
  iunmap Nwarrow
  iunmap Nearrow
  iunmap Searrow
  iunmap Swarrow
  iunmap mathord
  iunmap forall
  iunmap complement
  iunmap partial
  iunmap exists
  iunmap nexists
  iunmap varnothing
  iunmap emptyset
  iunmap increment
  iunmap nabla
  iunmap in
  iunmap notin
  iunmap smallin
  iunmap ni
  iunmap nni
  iunmap smallni
  iunmap prod
  iunmap coprod
  iunmap sum
  iunmap sqrt
  iunmap sqrt[3]
  iunmap sqrt[4]
  iunmap propto
  iunmap infty
  iunmap wedge
  iunmap vee
  iunmap land
  iunmap lor
  iunmap cap
  iunmap cup
  iunmap int
  iunmap iint
  iunmap iiint
  iunmap approx
  iunmap napprox
  iunmap not\\eq
  iunmap equiv
  iunmap nequiv
  iunmap Equiv
  iunmap leq
  iunmap geq
  iunmap leqq
  iunmap geqq
  iunmap lneqq
  iunmap gneqq
  iunmap ll
  iunmap gg
  iunmap subset
  iunmap supset
  iunmap nsubset
  iunmap nsupset
  iunmap subseteq
  iunmap supseteq
  iunmap nsubseteq
  iunmap nsupseteq
  iunmap subsetneq
  iunmap supsetneq
  iunmap diameter
  iunmap house
  iunmap lceil
  iunmap rceil
  iunmap lfloor
  iunmap rfloor
  iunmap invneg
  iunmap turnednot
  iunmap lparenuend
  iunmap lparenextender
  iunmap lparenlend
  iunmap rparenuend
  iunmap rparenextender
  iunmap rparenlend
  iunmap lbrackuend
  iunmap lbrackextender
  iunmap lbracklend
  iunmap rbrackuend
  iunmap rbrackextender
  iunmap rbracklend
  iunmap lbraceuend
  iunmap lbracemid
  iunmap lbracelend
  iunmap vbraceextender
  iunmap rbraceuend
  iunmap rbracemid
  iunmap rbracelend
  iunmap intextender
  iunmap mathbb{A}
  iunmap mathbb{B}
  iunmap mathbb{D}
  iunmap mathbb{E}
  iunmap mathbb{F}
  iunmap mathbb{G}
  iunmap mathbb{I}
  iunmap mathbb{J}
  iunmap mathbb{K}
  iunmap mathbb{L}
  iunmap mathbb{M}
  iunmap mathbb{O}
  iunmap mathbb{S}
  iunmap mathbb{T}
  iunmap mathbb{U}
  iunmap mathbb{V}
  iunmap mathbb{W}
  iunmap mathbb{X}
  iunmap mathbb{Y}
  iunmap ^0
  iunmap ^1
  iunmap ^2
  iunmap ^3
  iunmap ^4
  iunmap ^5
  iunmap ^6
  iunmap ^7
  iunmap ^8
  iunmap ^9
  iunmap ^+
  iunmap ^-
  iunmap ^=
  iunmap ^(
  iunmap ^)
  iunmap ^a
  iunmap ^b
  iunmap ^c
  iunmap ^d
  iunmap ^e
  iunmap ^f
  iunmap ^g
  iunmap ^h
  iunmap ^i
  iunmap ^j
  iunmap ^k
  iunmap ^l
  iunmap ^m
  iunmap ^n
  iunmap ^o
  iunmap ^p
  iunmap ^r
  iunmap ^s
  iunmap ^t
  iunmap ^u
  iunmap ^v
  iunmap ^w
  iunmap ^x
  iunmap ^y
  iunmap ^z
  iunmap ^A
  iunmap ^B
  iunmap ^D
  iunmap ^E
  iunmap ^G
  iunmap ^H
  iunmap ^I
  iunmap ^J
  iunmap ^K
  iunmap ^L
  iunmap ^M
  iunmap ^N
  iunmap ^O
  iunmap ^P
  iunmap ^R
  iunmap ^T
  iunmap ^U
  iunmap ^V
  iunmap ^W
  iunmap _0
  iunmap _1
  iunmap _2
  iunmap _3
  iunmap _4
  iunmap _5
  iunmap _6
  iunmap _7
  iunmap _8
  iunmap _9
  iunmap _+
  iunmap _-
  iunmap _=
  iunmap _(
  iunmap _)
  iunmap _a
  iunmap _e
  iunmap _h
  iunmap _i
  iunmap _j
  iunmap _k
  iunmap _l
  iunmap _m
  iunmap _n
  iunmap _o
  iunmap _p
  iunmap _r
  iunmap _s
  iunmap _t
  iunmap _u
  iunmap _v
  iunmap _x
  iunmap frac{1}{2}
  iunmap frac{1}{4}
  iunmap frac{3}{4}
endfunction "}}}

" vim: set sw=2 ts=2 sts=2 et ft=vim fdm=marker:
