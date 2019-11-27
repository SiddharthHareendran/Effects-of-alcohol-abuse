alcohol<-wpull('alcohol')
library(tidyverse)
library(tidyr)
#Q8.1
table(alcohol$employ)
(8822/9822)*100
table(alcohol$abuse)
(974/9822)*100
#8822 men were employed at the time of survey. That translates to 89.8% of sample.
#974 men abused aclohol. That translates to 9.91% of the sample.
#Q8.2
model<-lm(employ~abuse,data = alcohol)
summary(model)
#Usual form: employ=0.9+(-0.028)abuse 
#If there is abuse of alcohol(abuse=1) then the chance of being employed reduces by 0.028, keeping all else constant.
#The trend is as expected, although lesser than expected.
tidyw(model)
#It is statistically significant at 5% significance level.
#Q8.3
model_logit<-glm(employ~abuse,data = alcohol,family = binomial())
summary(model_logit)
tidyw(model_logit)
#The sign remains the same indicating the same effect. It is als significant at 5% siginificance level.
library(margins)
margins(model)
margins(model_logit)
#Average marginal effect through logit model is -0.02589 compartively marginally higher than the normal linear model(-0.0283)
#Q8.4
predict(model, data.table(abuse=c(0,1)))
predict(model_logit,data.table(abuse=c(0,1)))
#Q8.5
model<-lm(employ~abuse+age+I(age^2)+educ+I(educ^2)+married+famsize+white+northeast+
            +midwest+south+centcity+outercity+qrt1+qrt2+qrt3,data = alcohol)
tidyw(model)
#Coefficient on abuse is -0.0202. It is not significant at 5% level but is significant at the 10% level.
#Q8.6
model_logit<-glm(employ~abuse+age+I(age^2)+educ+I(educ^2)+married+famsize+white+northeast+
                   +midwest+south+centcity+outercity+qrt1+qrt2+qrt3,data = alcohol,family = binomial())
tidyw(model_logit)
margins(model_logit)

#The T statistic on abuse is -2.15 and is highly significant at 5% level but not at 1% level.
#Average marginal effect of abuse is -0.02025.Yes it is close. 
#Yes it has the same effect, abuse of alcohol will result in lesser chances of being employed.
#Q8.7
#No health doesnt need to be a control since being alcoholic or alcohol abuse is a behaviorable problem. Due to alcoholism health could be affected but health connot be a facor when determining effects of alcohol abuse
#Q8.8
#Mother and father being alcoholics doesnt necessarily have to translate to the child. Some children could even learn from their parents of the ill effects of alcoholism.
#But abuse of alcohol does seem to have a direct relation with employment. These are due to various socio-economic reasons. Because of unemployment, people turn to alcoholism, which then leads to not being able to re-enter the workforce. And also due to inherent alcoholism, the ability to enter the work force in the very place