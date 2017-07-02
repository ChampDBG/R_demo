pacman::p_load(ggplot2, grid)

a <- qplot(1:10, rnorm(10), main = "a")
b <- qplot(1:10, rnorm(10), main = "b")
c <- qplot(1:10, rnorm(10), main = "c")
grid.newpage()
pushViewport(viewport(layout = grid.layout(2, 2)))
vplayout <- function(x, y) viewport(layout.pos.row = x, layout.pos.col = y)
print(a, vp = vplayout(1, 1:2))  # key is to define vplayout
print(b, vp = vplayout(2, 1))
print(c, vp = vplayout(2, 2))