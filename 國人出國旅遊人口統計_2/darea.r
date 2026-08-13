require(ggplot2)
ayear=read.csv("year.csv",fileEncoding = "Big5")
head(ayear)
column1=ayear[1,3:ncol(ayear) ]
column2=ayear[2,3:ncol(ayear) ]
column3=ayear[3,3:ncol(ayear) ]
column4=ayear[4,3:ncol(ayear) ]
column5=ayear[5,3:ncol(ayear) ]
column6=ayear[6,3:ncol(ayear) ]
column7=ayear[7,3:ncol(ayear) ]
column8=ayear[8,3:ncol(ayear) ]
column9=ayear[9,3:ncol(ayear) ]
column10=ayear[10,3:ncol(ayear) ]
column11=ayear[11,3:ncol(ayear) ]
column12=ayear[12,3:ncol(ayear) ]
column13=ayear[13,3:ncol(ayear) ]
column14=ayear[14,3:ncol(ayear) ]
c1=as.numeric(column1)
c2=as.numeric(column2)
c3=as.numeric(column3)
c4=as.numeric(column4)
c5=as.numeric(column5)
c6=as.numeric(column6)
c7=as.numeric(column7)
c8=as.numeric(column8)
c9=as.numeric(column9)
c10=as.numeric(column10)
c11=as.numeric(column11)
c12=as.numeric(column12)
c13=as.numeric(column13)
c14=as.numeric(column14)

year=data.frame(
  tyear = rep(100:112, each = 5),
  country = rep(c("亞洲", "美洲", "歐洲","大洋洲","非洲"), times = 13),
  count = c(c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13))
ggplot(year, aes(x = factor(tyear), y = count, fill = country)) +
  geom_bar(stat = "identity") +
  labs(title = "台灣人出國統計堆積柱狀圖", x = "年份", y = "出國人數") +
  theme_minimal() +
  scale_fill_brewer(palette = "Set3")
