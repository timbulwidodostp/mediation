# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Estimate sensitivity analysis for causal mediation effects Use mediate (mediation) (In) With R Software
install.packages("mediation")
install.packages("tibble")
library("mediation")
mediation = read.csv("https://raw.githubusercontent.com/timbulwidodostp/mediation/main/mediation/mediation.csv",sep = ";")
# Estimate sensitivity analysis for causal mediation effects Use mediate (mediation) (In) With R Software
mediation_1 <- lm(bweight ~ college + age, data=mediation)
mediation_2 <- lm(sespar ~ college + bweight + age, data=mediation)
mediation <- mediate(mediation_1, mediation_2, sims=1000, treat="college", mediator="bweight")
summary(mediation)
# Estimate sensitivity analysis for causal mediation effects Use mediate (mediation) (In) With R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished
