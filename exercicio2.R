library(ggplot2)

dados_carros <- mtcars

?mtcars

# Exercício 01:
# letra a) diagrama p investigar variáveis hp e mpg

ggplot(data = mtcars, aes(x = hp, y = mpg)) +
  geom_point(size = 2) +
  theme_classic() +
  xlab("Cavalos de potência") +
  ylab("Milhas por galão") +
  geom_smooth(method = "lm", se = TRUE)

cor(mtcars$mpg, mtcars$hp)

modelo <- lm(formula = mpg ~ hp, data = dados_carros)  # “y” primeiro e “x” depois
summary(modelo)

plot(dados_carros$hp, rstandard(modelo), xlab = "Potência do motor", ylab = "Resíduos")
abline(0,0)

new_dado_car <- data.frame(hp = 200)
predict(modelo_1, new_dado_car)

