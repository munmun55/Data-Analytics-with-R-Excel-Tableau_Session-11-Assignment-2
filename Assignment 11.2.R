
# Import BankMArketing Data 
library(readr)
bank <- read.csv("E:/munmun_acadgild/acadgild data analytics/supporting files/bank-additional/bank-additional/bank-additional.csv", sep=";")
View(bank)
dim(bank)      
str(bank) 


#a.	Is there any association between job and default?
chisq.test(bank$job, bank$default)

#OR

with(bank,chisq.test( job, default))
with(bank, table( job, default) )
with(bank, prop.table(table( job,default)))

 # b.	Is there any significant difference in duration of last call between? people having housing loan or not?

with(bank, chisq.test(duration,housing))
with(bank, table( duration,housing) )

#c.	Is there any association between consumer price index and consumer?

chisq.test(bank$cons.price.idx,bank$cons.conf.idx) 

#OR
   
with(bank, chisq.test(cons.price.idx,cons.conf.idx))
with(bank, table(cons.price.idx,cons.conf.idx))

#d.	Is the employment variation rate consistent across Job types?

chisq.test(bank$job,bank$emp.var.rate) 

#OR

with(bank, chisq.test( job,emp.var.rate))
with(bank, table( job,emp.var.rate) )

#e.	Is the employment variation rate same across Education?

with(bank, chisq.test( education,emp.var.rate))
with(bank, table( education, emp.var.rate) )

 # f.	Which group is more confident?
 
library(psych)
pairs.panels(bank[,1:6])
pairs.panels(bank[,1:9])
summary(bank) 

library(psych)
pairs.panels(bank[,1:14])
