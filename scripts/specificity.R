library(tidyverse)
library(effsize)
library(ggsignif)

# specificity -------------------------------------------------------------------------
# load
specificity <- 
  
  read.csv(
    "data/specificity.csv"
  ) %>%
  
  select(
    Study, 
    DESR, 
    Conventional
  )

# t.test
t.test(
  x = specificity$DESR,
  y = specificity$Conventional,
  paired = TRUE,
  var.equal = FALSE
)

# means and sd
mean(specificity$DESR)
sd(specificity$DESR)
mean(specificity$Conventional)
sd(specificity$Conventional)

# effect size
cohen.d(
  specificity$DESR, 
  specificity$Conventional
)

# plot
specificity %>% 
  
  pivot_longer(
    cols = c("DESR", "Conventional"),
    names_to = "Method",
    values_to = "Specificity"
  ) %>%
  
  ggplot(
    aes(
      x = Method,
      y = Specificity
    )
  ) +
  
  geom_boxplot(outlier.shape = NA) +
  
  geom_signif(
    comparisons = list(c("DESR", "Conventional")),
    map_signif_level = TRUE,
    annotations = c("n.s."),
    color = "black"
  ) +
  
  geom_point(
    aes(color = Study),
    position = position_dodge(width = 0.3),
    size = 4
  ) +
  
  labs(
    x = "Detection Method",
    y = "Specificity"
  ) +
  
  theme_bw() +
  
  theme(
    legend.position = "right",
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    axis.text.x = element_text(size = 12),
    axis.text.y = element_text(size = 12),
    axis.title.x = element_text(size = 15, margin = margin(t = 15)),
    axis.title.y = element_text(size = 15, margin = margin(r = 15)),
    legend.text = element_text(size = 9),
    legend.title = element_text(size = 12)
  ) +
  
  scale_color_discrete(
    labels = c(
      "Ricke et al. (2003)" = "Ricke et al. (2003)",
      "Szucs-Farkas et al. (2008)" = "Szucs-Farkas et al. (2008)",
      "Ruhl et al. (2008)" = "Rühl et al. (2008)",
      "Oda et al. (2010)" = "Oda et al. (2010)",
      "Manji et al. (2016)" = "Manji et al. (2016)",
      "Dobbins III et al. (2017)" = "Dobbins III et al. (2017)",
      "Bae et al. (2022)" = "Bae et al. (2022)",
      "Wu et al. (2021)" = "Wu et al. (2021)",
      "Kumar et al. (2015)" = "Kumar et al. (2015)",
      "Fischbach et al. (2003)" = "Fischbach et al. (2003)"
    )
  )

ggsave(
  "plots/specificity.png", 
  width = 7,
  height = 5.25
)