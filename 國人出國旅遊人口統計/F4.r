require(ggplot2)
require(dplyr)
data1221=read.csv("1221.csv",fileEncoding = "Big5")
c1b=data1221[9,4:4]
c1g=data1221[9,5:5]
c2b=data1221[9,7:7]
c2g=data1221[9,8:8]
c3b=data1221[9,10:10]
c3g=data1221[9,11:11]
c4b=data1221[9,13:13]
c4g=data1221[9,14:14]
c5b=data1221[9,16:16]
c5g=data1221[9,17:17]
c6b=data1221[9,19:19]
c6g=data1221[9,20:20]
c7b=data1221[9,22:22]
c7g=data1221[9,23:23]
c8b=data1221[9,25:25]
c8g=data1221[9,26:26]
c9b=data1221[9,28:28]
c9g=data1221[9,29:29]

age_groups=c("1-12歲", "13-19歲", "20-29歲", "30-39歲", "40-49歲", "50-59歲", "60-65歲","66歲以上")
males=na.omit(c(c2b,c3b,c4b,c5b,c6b,c7b,c8b,c9b))
females=na.omit(c(c2g,c3g,c4g,c5g,c6g,c7g,c8g,c9g))

data_male=data.frame(
  AgeGroup = factor(age_groups, levels = age_groups),
  Gender = "男性",
  Population = males
)

data_female=data.frame(
  AgeGroup=factor(age_groups, levels = age_groups),
  Gender="女性",
  Population=females
)

data = bind_rows(data_male, data_female)

ggplot(data, aes(x = AgeGroup, y = Population, fill = Gender)) +
  geom_bar(data = data %>% filter(Gender == "男性"), stat = "identity") +
  geom_bar(data = data %>% filter(Gender == "女性"), stat = "identity", aes(y = -Population)) +
  coord_flip() +
  scale_y_continuous(labels = abs, limits = c(-max(females), max(males))) +
  labs(y = "人口", x = "年齡組別", fill = "性別") +
  theme_minimal() +
  theme(legend.position = "bottom") +
  scale_fill_manual(values = c("男性" = "lightblue", "女性" = "lightpink"))
