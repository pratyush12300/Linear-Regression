#Linear Regression
#author: "Pratyush Jain"
#date: "20/08/2019"



#importing the data
data<-read.csv('F:/DATA IMP/Downloads/Performance Index.csv')
head(data)
#empid -Employee ID
#jpi -Job Profile Index
#aptitude -Aptitude Score
#tol
#technical -Technical Aptitude
#general -General Aptitude

#Check for any missing values
sum(is.na(data))

#Check for the normality of the independant variables and the dependant variable

ggdensity(data$jpi)
shapiro.test(data$jpi)

ggdensity(data$aptitude)
shapiro.test(data$aptitude)

ggdensity(data$tol)
shapiro.test(data$tol)

ggdensity(data$technical)
shapiro.test(data$technical)

ggdensity(data$general)
shapiro.test(data$general)

#from this we figure out that 
#except tol all the other independant variables are normally distributed 
#jpi is not normally distributed but it doesn't matter as it is the dependant variable
#We left out empid as it not relevant to our linear model naturally
data$empid<-NULL

#Model Deployement
datamodel<-lm(jpi~.,data = data)
summary(datamodel)

