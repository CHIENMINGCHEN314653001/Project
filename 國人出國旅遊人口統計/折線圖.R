# 載入所需的套件
library(ggplot2)
library(tidyr)

# 定義資料
data <- data.frame(
  Month = c("112年1月", "112年2月", "112年3月", "112年4月", "112年5月", 
            "112年6月", "112年7月", "112年8月", "112年9月", "112年10月", 
            "112年11月", "112年12月"),
  Total = c(696474, 652943, 736283, 830184, 877833, 1131234, 
            1235822, 1182468, 1080168, 1218643, 1096976, 1056806),
  Asia = c(607783, 591293, 661285, 755352, 790604, 1021676, 
           1128885, 1083486, 980814, 1126806, 1019656, 984674),
  America = c(51411, 31667, 39901, 38832, 46289, 56388, 
              59025, 52875, 47413, 42556, 37845, 39261),
  Europe = c(20834, 14325, 22394, 21624, 26736, 34160, 
             29139, 27283, 35315, 33241, 25959, 20031),
  Oceania = c(16178, 15499, 12497, 13124, 11312, 14243, 
              16721, 14938, 13596, 15463, 13399, 12540),
  Africa = c(59, 18, 24, 28, 12, 14, 
             37, 25, 47, 32, 19, 25)
)

# 將Month轉換為因子，並指定順序
data$Month <- factor(data$Month, levels = c("112年1月", "112年2月", "112年3月", "112年4月", "112年5月", 
                                            "112年6月", "112年7月", "112年8月", "112年9月", "112年10月", 
                                            "112年11月", "112年12月"))


data_long <- pivot_longer(data, cols = -Month, names_to = "Region", values_to = "Count")

# 繪製折線圖
ggplot(data_long, aes(x = Month, y = Count, color = Region, group = Region)) +
  geom_line() +
  geom_point() +
  labs(title = "Monthly Outbound Number of People by Region",
       x = "Month",
       y = "Number of People") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


