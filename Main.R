install.packages("tidyverse")
install.packages(c("nycflights13", "gapminder", "Lahman"))

library(tidyverse)
library(nycflights13)
library(gapminder)
library(Lahman)

#1+2

#mtcars <- dput(mtcars)

?mpg
mpg.data <- mpg

#ggplot2
install.packages("ggplot2")
library(ggplot2)

ggplot(data = mpg.data) +
  geom_point(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg.data)
#Nothing is shown

View(mpg.data)
#234 rows

?mpg
#drv f = fornt wheel drive, r = rear wheel drive, 4 = 4wd

ggplot(data = mpg.data) + 
  geom_point(mapping = aes(x = hwy, y = cyl))

ggplot(data = mpg.data) + 
  geom_point(mapping = aes(x = class, y = drv))
#because it only gives information about the type of car and the drive of the car.

ggplot(data = mpg.data) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class))
#color: color-codes the geo_point based on the the values in the class.

ggplot(data = mpg.data) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class, size = class))
#size: gives the geom_point a different sized base on the level o the class (ej. 1 - 10)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))
#alpha: gives the geom_point a different level of transparency (lightest to darkest)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))
#shap: gives the geom_point a differente type of shape 

#Uni color
ggplot(data = mpg.data) +
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")


#3.3.1 Exercises
#1. What’s gone wrong with this code? Why are the points not blue?
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = "blue"))
# The reason why it doesn't show the dots blue is because it is inside the aes() function.


#2. Which variables in mpg are categorical? 
# Which variables are continuous? 
# (Hint: type ?mpg to read the documentation for the dataset).
# How can you see this information when you run mpg?

# model, cyl, trans, drv, fl, class
# displ, year, cty, hwy
# With the values in the table that is shown.

#3. Map a continuous variable to color, size, and shape.
# How do these aesthetics behave differently for categorical vs. continuous variables?

#continuous variable
ggplot(data = mpg.data) + 
  geom_point(mapping = aes(x = cyl, y = cty), color = "green", size = 5, shape = 5)

#catigorical variables
ggplot(data = mpg.data) + 
  geom_point(mapping = aes(x = cyl, y = cty, color = class, size = class, shape = class))

# You understand difrently the data and can't see details with it to make better and more
# precises asumptions.

# 4.What happens if you map the same variable to multiple aesthetics?
# You lose clarity of the image, and everything is inunderstandable.

# 5. What does the stroke aesthetic do? What shapes does it work with? 
# (Hint: use ?geom_point)
?geom_point

# It modifies the width of the border.
ggplot(data = mpg.data) + 
  geom_point(mapping = aes(x = cyl, y = cty, color = class, size = class, shape = class, stroke = 3))
# All of the shapes.

#6. What happens if you map an aesthetic to something other than a variable name,
#   like aes(colour = displ < 5)?
# Note, you’ll also need to specify x and y.

ggplot(data = mpg.data) + 
  geom_point(mapping = aes(x = cyl, y = cty, colour = displ <5))
# It creates a boolean color coded graph where it takes de operation in colour (true/false)

#Hello fix

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy))







