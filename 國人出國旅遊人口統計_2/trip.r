require(ggplot2)
trip100=read.csv("100.csv",fileEncoding = "Big5")
ggplot(trip100, aes(x = factor(統計期), y = (合計))) +
  geom_bar(stat = "identity", fill = "pink") +
  labs(title = "民國100年台灣人出國長條圖", x = "統計期", y = "合計") +
  theme_minimal()
trip102=read.csv("102.csv",fileEncoding = "Big5")
ggplot(trip102, aes(x = factor(統計期), y = (合計))) +
  geom_bar(stat = "identity", fill = "lightgreen") +
  labs(title = "民國102年台灣人出國長條圖", x = "統計期", y = "合計") +
  theme_minimal()
trip104=read.csv("104.csv",fileEncoding = "Big5")
ggplot(trip104, aes(x = factor(統計期), y = (合計))) +
  geom_bar(stat = "identity", fill = "lightblue") +
  labs(title = "民國104年台灣人出國長條圖", x = "統計期", y = "合計") +
  theme_minimal()
trip106=read.csv("106.csv",fileEncoding = "Big5")
ggplot(trip106, aes(x = factor(統計期), y = (合計))) +
  geom_bar(stat = "identity", fill = "lightyellow") +
  labs(title = "民國106年台灣人出國長條圖", x = "統計期", y = "合計") +
  theme_minimal()
trip108=read.csv("108.csv",fileEncoding = "Big5")
ggplot(trip108, aes(x = factor(統計期), y = (合計))) +
  geom_bar(stat = "identity", fill = "purple") +
  labs(title = "民國108年台灣人出國長條圖", x = "統計期", y = "合計") +
  theme_minimal()
trip110=read.csv("110.csv",fileEncoding = "Big5")
ggplot(trip110, aes(x = factor(統計期), y = (合計))) +
  geom_bar(stat = "identity", fill = "orange") +
  labs(title = "民國110年台灣人出國長條圖", x = "統計期", y = "合計") +
  theme_minimal()
trip112=read.csv("112.csv",fileEncoding = "Big5")
ggplot(trip112, aes(x = factor(統計期), y = (合計))) +
  geom_bar(stat = "identity", fill = "black") +
  labs(title = "民國112年台灣人出國長條圖", x = "統計期", y = "合計") +
  theme_minimal()