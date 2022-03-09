heart <- read.csv("Heart.csv")
sum(is.na(heart))

str(heart)

class(heart)

head(heart, 5)

tail (heart, 5)

library(corrplot)

library(ggplot2)

corrplot(cor(heart), type="upper")

ggplot(heart,aes(x=age,y=chol))


ggplot(heart,aes(x=age,y=chol))+
    geom_point()

ggplot(heart,aes(x=age,y=chol))+
    geom_point()+
    geom_smooth(method = "lm", se = FALSE)


ggplot(heart,aes(x=age,y=chol))+
    geom_point()+
    geom_smooth(method = "lm", se = FALSE)+
    scale_x_continuous(name="Age")+
    scale_y_continuous(name="Chol Level")


ggplot(heart,aes(x=age,y=chol))+
    geom_point()+
    geom_smooth(method = "lm", se = FALSE)+
    scale_x_continuous(name="Age")+
    scale_y_continuous(name="Chol Level")+
    theme_economist_white(gray_bg = FALSE)


ggplot(heart,aes(x=age,y=chol, color = red))+
    geom_point(aes(type = 2)+
    geom_smooth(method = "lm", se = FALSE)+
    scale_x_continuous(name="Age")+
    scale_y_continuous(name="Chol Level")+
    theme_economist_white(gray_bg = FALSE)+
    ggtitle("Age & Cholesterol")+
    theme(plot.title = element_text(hjust = 0.5))

summary(heart$age)

summary(heart$chol)

summary(heart)