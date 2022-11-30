# Analyzing the Drugbank DataBase with the esquisse library

# Library installation

install.packages("esquisse")

# Viewing available packages

library(esquisse)

# Making the library to open in browser

options("esquisse.viewer" = "browser")

# Accessing the library

esquisser(DBdrugbank)

# 1° graphic: relating JCHEM_ACCEPTOR_COUNT to JCHEM_DONOR_COUNT

ggplot(DBdrugbank) +
  aes(x = JCHEM_ACCEPTOR_COUNT, y = JCHEM_DONOR_COUNT) +
  geom_point(shape = "circle", size = 1.5, colour = "#EF562D") +
  theme_light()

# 2° graphic: relating JCHEM_ROTATABLE_BOND_COUNT to JCHEM_NUMBER_OF_RINGS

ggplot(DBdrugbank) +
  aes(
    x = JCHEM_ROTATABLE_BOND_COUNT,
    y = JCHEM_NUMBER_OF_RINGS
  ) +
  geom_line(colour = "#112446") +
  theme_minimal()

# 3° graphic: relating EXACT_MASS to JCHEM_POLAR_SURFACE_AREA

ggplot(DBdrugbank) +
  aes(x = EXACT_MASS, y = JCHEM_POLAR_SURFACE_AREA) +
  geom_point(shape = "bullet", size = 1.5, colour = "#112446") +
  theme_minimal()

# 4° graphic: relating EXACT_MASS to JCHEM_LOGP, making the color be EXACT_MASS

ggplot(DBdrugbank) +
  aes(x = EXACT_MASS, y = JCHEM_LOGP, colour = EXACT_MASS) +
  geom_point(shape = "bullet", size = 3.45) +
  scale_color_viridis_c(option = "magma", direction = 1) +
  theme_minimal()
