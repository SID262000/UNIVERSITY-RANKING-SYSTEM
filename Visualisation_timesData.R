thePlotYear <- function(nYear) {
  timesData %>% filter(year==nYear) %>% top_n(10,-wr) %>%
    ggplot(aes(x=reorder(university_name,-wr), y=wr)) + geom_bar(stat="identity", aes(fill=reorder(university_name,-wr)), colour="black") +
    theme_bw() + coord_flip() +  scale_fill_manual(values=c(rep("lightgreen",7), "#CD7F32", "grey", "gold")) + guides(fill=FALSE) +
    labs(x="University name", y="World Rank",
         title=paste("Rank in ",nYear), subtitle="(smaller value is better)")
}

thePlotYear(2011) -> d1
thePlotYear(2012) -> d2
thePlotYear(2013) -> d3
thePlotYear(2014) -> d4
thePlotYear(2015) -> d5
thePlotYear(2016) -> d6
grid.arrange(d1,d2,d3,d4,d5,d6, ncol=2)

timesData %>% group_by(country) %>% summarise(n = length(teaching)) %>% top_n(10,n) %>% ungroup() -> ct
timesData %>% filter(country %in% ct$country) %>%
  ggplot(aes(x=country, y=teaching, col=country)) + guides(col=FALSE) +
  geom_boxplot() +  theme_bw() + coord_flip() +
  labs(x="Country", y="Teaching score",
       title="Teaching score", subtitle="Grouped by country") -> d1
timesData %>% filter(country %in% ct$country) %>%
  ggplot(aes(x=country, y=international, col=country)) + guides(col=FALSE) +
  geom_boxplot() +  theme_bw() + coord_flip() +
  labs(x="Country", y="International outlook score",
       title="International outlook score", subtitle="Grouped by country") -> d2
timesData %>% filter(country %in% ct$country) %>%
  ggplot(aes(x=country, y=research, col=country)) + guides(col=FALSE) +
  geom_boxplot() +  theme_bw() + coord_flip() +
  labs(x="Country", y="Research score",
       title="Research score", subtitle="Grouped by country") -> d3
timesData %>% filter(country %in% ct$country) %>%
  ggplot(aes(x=country, y=citations, col=country)) + guides(col=FALSE) +
  geom_boxplot() +  theme_bw() + coord_flip() +
  labs(x="Country", y="Citations score",
       title="Citations score", subtitle="Grouped by country") -> d4
timesData %>% filter(country %in% ct$country) %>%
  ggplot(aes(x=country, y=income, col=country)) + guides(col=FALSE) +
  geom_boxplot() +  theme_bw() + coord_flip() +
  labs(x="Country", y="Industry income score",
       title="Industry income score", subtitle="Grouped by country") -> d5
timesData %>% filter(country %in% ct$country) %>%
  ggplot(aes(x=country, y=total_score, col=country)) + guides(col=FALSE) +
  geom_boxplot() +  theme_bw() + coord_flip() +
  labs(x="Country", y="Total score",
       title="Total score", subtitle="Grouped by country") -> d6
grid.arrange(d1,d2,d3,d4, d5, d6, ncol=2)
