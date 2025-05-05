---
title: "Exercício aula 7"
format: pdf
editor: visual
---

Mostre que se $X_1,X_2,\ldots,X_n$ são variáveis aleatórias normalmente 
distribuídas com média $\mu$ e variância $\sigma^2 < \infty$ então 
$$T_n = \frac{\bar{X}_n-\mu}{S_n / \sqrt{n}} \sim t_{n-1}$$
onde $\bar{X}_n = \sum_i X_i / n$ e $S^2_n = \sum_i (X_i - \bar{X}_n) / (n-1)$.

  - Passo 1: Reescreva $T_n = Z_n / \sqrt{V/(n-1)}$, onde 
  $Z_n = \frac{\bar{X}_n-\mu}{\sigma / \sqrt{n}}$ e $V/(n-1) = S^2_n/\sigma^2$
  - Passo 2: Encontre a distribuição de $Z_n$ e de $V$
  - Passo 3: Mostre que a distribuição da razão $Z_n / \sqrt{V/(n-1)}$ é $t_{n-1}$
  
A demonstração parcial desse resultado se encontra no capítulo 6 do Rice, um 
ponto importante é a independência entre $Z_n$ e $V$,  que não é algo intuitivo 
pois implica que $\bar{X}_2$ é independente de $S_n^2$. 

