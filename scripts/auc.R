library(tidyverse)
library(effsize)
library(ggsignif)

# auc --------------------------------------------------------------------------
# load
auc <- 
  
  read.csv(
    "data/auc.csv"
  ) %>%
  
  select(
    Study, 
    DESR, 
    Conventional
  )

# t.test
t.test(
  x = auc$DESR,
  y = auc$Conventional,
  paired = TRUE,
  var.equal = FALSE
)

# means and sd
mean(auc$DESR)
sd(auc$DESR)
mean(auc$Conventional)
sd(auc$Conventional)

# effect size
cohen.d(
  auc$DESR, 
  auc$Conventional
)

# plot
auc %>% 
  
  pivot_longer(
    cols = c("DESR", "Conventional"),
    names_to = "Method",
    values_to = "AUC"
  ) %>%
  
  ggplot(
    aes(
      x = Method,
      y = AUC
    )
  ) +
  
  geom_boxplot(outlier.shape = NA) +
  
  geom_signif(
    comparisons = list(c("DESR", "Conventional")),
    map_signif_level = TRUE,
    annotations = c("***"),
    color = "black"
  ) +
  
  geom_point(
    aes(color = Study),
    position = position_dodge(width = 0.3),
    size = 4
  ) +
  
  labs(
    x = "Detection Method",
    y = "AUC"
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
      "Kelcz et al. (1994)" = "Kelcz et al. (1994)",
      "Kido et al. (1995)" = "Kido et al. (1995)",
      "Kido et al. (2000)" = "Kido et al. (2000)",
      "Tsukuda et al. (2002)" = "Tsukuda et al. (2002)",
      "Uemura et al. (2005)" = "Uemura et al. (2005)",
      "Ide et al. (2007)" = "Ide et al. (2007)",
      "Tagashira et al. (2007)" = "Tagashira et al. (2007)",
      "Szucs-Farkas et al. (2008)" = "Szucs-Farkas et al. (2008)",
      "Ruhl et al. (2008)" = "Rühl et al. (2008)",
      "Li et al. (2008)" = "Li et al. (2008)",
      "S. Oda et al. (2010)" = "Oda et al. (2010)",
      "Kashani et al. (2010)" = "Kashani et al. (2010)",
      "Bae et al. (2022)" = "Bae et al. (2022)",
      "Wu et al. (2021)" = "Wu et al. (2021)",
      "Song et al. (2016)" = "Song et al. (2016)",
      "Von Berg et al. (2016)" = "Von Berg et al. (2016)",
      "Kumar et al. (2015)" = "Kumar et al. (2015)",
      "Szucs-Farkas et al. (2013)" = "Szucs-Farkas et al. (2013)"
    )
  )

ggsave(
  "plots/auc.png", 
  width = 7,
  height = 5.25
)
