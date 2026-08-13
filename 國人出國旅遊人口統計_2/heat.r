require(ggplot2)
tyear=read.csv("total.csv",fileEncoding = "Big5")
tt=tyear[,2]
print(tt)
ttyear=data.frame(
  year = rep(100:112, each = 12),
  month = rep(1:12, times = 13),
  count = c(tt))

ggplot(ttyear, aes(x = factor(month), y = factor(year), fill = count)) +
  geom_tile() +
  labs(title = "台灣人出國統計熱力圖", x = "月份", y = "年份") +
  theme_minimal() +
  scale_fill_gradient(low = "lightpink", high = "red")

