# 安裝和載入必要的套件
install.packages("ggplot2")
library(ggplot2)

# 建立資料框
data <- data.frame(
  地區 = c("香港", "澳門", "大陸", "日本", "韓國", "新加坡", "馬來西亞", "泰國", "菲律賓", "印尼", "汶淶", "越南", "緬甸", "柬埔寨", "阿拉伯聯合大公國", "土耳其", "亞洲其他地區"),
  人口數 = c(743443, 275979, 1761134, 4225804, 954693, 316715, 245136, 777326, 208399, 125899, 6821, 853859, 7919, 46050, 121767, 78286, 3084)
)

# 繪製直條圖
ggplot(data, aes(x = 地區, y = 人口數)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(title = "亞洲各地區人口數", x = "地區", y = "人口數")