

# Geometries ####
g = ggplot(data = mpg, mapping = aes(x=cty,y=hwy))

# Facets ####
g + geom_point() + facet_grid(. ~ cyl)
g + geom_point() + facet_grid(drv ~ .)
g + geom_point() + facet_grid(drv ~ cyl)
g + geom_point() + facet_wrap( ~ class)