salex <- read.table("https://raw.githubusercontent.com/OxfordIHTM/teaching_datasets/main/salex.dat",header=TRUE)

salex

nrow(salex)

ncol(salex)

#In order to perform a logistic regression we must first recode the ILL variable so that 0=no and 1=yes, and to do this, we have to replace "2", with "0" in "ILL" column

table(salex$ILL)

salex$ILL[salex$ILL==2] <- 0

table(salex$ILL)

#lets extract the first 5 rows from all the columns

salex[1:5, ]

#lets perform element wise subtraction from 2 as follows

salex <- 2-salex

salex[1:5, ]

#Lets use the generalised linear model glm() function to specify the logistic regression model as follows:

salex.lreg <- glm(formula= ILL ~ EGGS + MUSHROOM + PEPPER + PASTA + COLESLAW + CHOCOLATE + RICE + LETTUCE, family = binomial(logit),data = salex)

#Good job to me 😁, 

summary(salex.lreg)

#👏🏾 easy-peasy, it worked

plot(salex.lreg)
