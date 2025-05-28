library(tidyverse)

# Estimando funcao de probabilidade acumulada

x <- rnorm(100)


FnX <- function(x,y){
  mean(y < x)
}

n = length(x)

df <- data.frame(Fn=rep(NA,n), LI.clt=NA, LS.clt=NA, LI.dkw=NA, LS.dkw=NA)

for(k in 1:n){
  
  df$Fn[k] = FnX(x[k],y=x)
  
  se.n = sqrt(df$Fn[k] * (1-df$Fn[k]) / n)
  
  df$LI.clt[k] = max(0, df$Fn[k] - 1.96 * se.n)
  df$LS.clt[k] = min(1, df$Fn[k] + 1.96 * se.n)
    
  en = sqrt(1/(2*n) * log(2/0.05))
  df$LI.dkw[k] = max(0, df$Fn[k] - en)
  df$LS.dkw[k] = min(1, df$Fn[k] + en)
    
}


df |> ggplot(aes(x = x, y = Fn)) + 
  geom_point() + 
  geom_linerange(aes(ymin = LI.dkw, ymax = LS.dkw, color = "DKW")) + 
  geom_linerange(aes(ymin = LI.clt, ymax = LS.clt, color = "CLT")) + 
  geom_function(fun = pnorm, xlim=c(-3, 3)) + 
  theme_bw()
