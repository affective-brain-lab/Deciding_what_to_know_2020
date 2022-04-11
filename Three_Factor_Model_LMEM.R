
Three_factor_model<-lmerTest::lmer(Choice ~ Usefulness + Feelings + Often + 
                         (1 + Usefulness + Feelings + Often | ID) + 
                         (1 | Stimulus),
                       data= data, control=lmerControl(optimizer="bobyqa",optCtrl=list(maxfun=20000)))
summary(Three_factor_model)