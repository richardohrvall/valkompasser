library(tidyverse)
library(ggplot2)
library(ggalt)
library(hrbrthemes)
library(ggthemes)
library(viridis)
library(extrafont)
#loadfonts(device = "win")

kompass <- read_csv("./data/tt_valkompass_2018.csv") 

ggplot(kompass, aes(x=parti, y=reorder(Fråga, desc(Område)), fill=svar)) + geom_tile(color="white", size=0.5) +
    coord_equal() +
    labs(x=NULL, y=NULL, title="Frågor i TT:s valkompass 2018", caption = "@richardohrvall") +
    theme_tufte(base_family="Roboto")+
    scale_fill_manual(values = c("#1a9641", "#a6d96a", "#fdae61", "#d7191c")) +
    theme(axis.ticks=element_blank()) +
    theme(legend.title=element_blank())

ggsave(filename = "./results/tt_valkompass_2018.png", h=5, w=10, dpi = 300, type = "cairo")

# Color blind safe version
ggplot(kompass, aes(x=parti, y=reorder(Fråga, desc(Område)), fill=svar)) + geom_tile(color="white", size=0.5) +
    coord_equal() +
    labs(x=NULL, y=NULL, title="Frågor i TT:s valkompass 2018", caption = "@richardohrvall") +
    theme_tufte(base_family="Roboto")+
    scale_fill_manual(values = c("#0571b0", "#92c5de", "#f4a582", "#ca0020")) +
    theme(axis.ticks=element_blank()) +
    theme(legend.title=element_blank())

ggsave(filename = "./results/tt_valkompass_2018_cs.png", h=5, w=10, dpi = 300, type = "cairo")

