library("magrittr")
library("ggplot2")
library("dplyr")
library("tidyverse")
df_country <- 
  tribble(
    ~jp,~ch,~ko,~vi,~th,
    422,176,95,85,77
  )
df_country
value_country_color = c("日本"="#FF6347","中國"="#FFD700","韓國"="#FF8C00","越南"="#7ffc03","泰國"="#03fce7")

df_country %>% 
  rename(`日本` = 1, `中國` = 2, `韓國` = 3, `越南` = 4, `泰國` = 5) %>%
  pivot_longer(cols = 1:5, names_to = "people", values_to = "value") %>%
  mutate(per = value/sum(value)) %>% ungroup() %>%
  mutate(people = fct_reorder(as_factor(people), -value)) %>%
  mutate(value2 = str_c(round(value,0), "萬人")) %>%
  ggplot(aes(x = "", y = value, fill = people)) +
  geom_bar(stat = "identity", width = 1) +
  geom_text(aes(label = value2),
            position = position_stack(vjust = 0.5), family = "Noto Sans CJK TC Regular", size = 5) +
  coord_polar("y", start = 0) +
  labs(x= "",y= "", 
       title = "亞洲前五大台灣人最愛出遊地區",
       subtitle = "地區人數佔比, 民國112年",
       caption = "\n資料來源：交通部",
       fill = "出國人口") +
  scale_fill_manual(values = value_country_color) +
  theme_void() +
  theme(text = element_text(family = "Noto Sans CJK TC Regular", size = 14))

df_country2 <- 
  tribble(
    ~am,~ca,
    46,7
  )
df_country2
value_country2_color = c("美國"="#FF6347","加拿大"="#FFD700")

df_country2 %>% 
  rename(`美國` = 1, `加拿大` = 2) %>%
  pivot_longer(cols = 1:2, names_to = "people", values_to = "value") %>%
  mutate(per = value/sum(value)) %>% ungroup() %>%
  mutate(people = fct_reorder(as_factor(people), -value)) %>%
  mutate(value2 = str_c(round(value,0), "萬人")) %>%
  ggplot(aes(x = "", y = value, fill = people)) +
  geom_bar(stat = "identity", width = 1) +
  geom_text(aes(label = value2),
            position = position_stack(vjust = 0.5), family = "Noto Sans CJK TC Regular", size = 5) +
  coord_polar("y", start = 0) +
  labs(x= "",y= "", 
       title = "美洲前兩大台灣人最愛出遊地區",
       subtitle = "地區人數佔比, 民國112年",
       caption = "\n資料來源：交通部",
       fill = "出國人口") +
  scale_fill_manual(values = value_country2_color) +
  theme_void() +
  theme(text = element_text(family = "Noto Sans CJK TC Regular", size = 14))

df_country3 <- 
  tribble(
    ~ge,~fr,~Au,~It,~En,
    7,6,5.5,5,3
  )
df_country3
value_country3_color = c("德國"="#FF6347","法國"="#FFD700","奧地利"="#FF8C00","義大利"="#7ffc03","英國"="#03fce7")

df_country3 %>% 
  rename(`德國` = 1, `法國` = 2, `奧地利` = 3, `義大利` = 4, `英國` = 5) %>%
  pivot_longer(cols = 1:5, names_to = "people", values_to = "value") %>%
  mutate(per = value/sum(value)) %>% ungroup() %>%
  mutate(people = fct_reorder(as_factor(people), -value)) %>%
  mutate(value2 = str_c(round(value,0), "萬人")) %>%
  ggplot(aes(x = "", y = value, fill = people)) +
  geom_bar(stat = "identity", width = 1) +
  geom_text(aes(label = value2),
            position = position_stack(vjust = 0.5), family = "Noto Sans CJK TC Regular", size = 5) +
  coord_polar("y", start = 0) +
  labs(x= "",y= "", 
       title = "歐洲前五大台灣人最愛出遊地區",
       subtitle = "地區人數佔比, 民國112年",
       caption = "\n資料來源：交通部",
       fill = "出國人口") +
  scale_fill_manual(values = value_country3_color) +
  theme_void() +
  theme(text = element_text(family = "Noto Sans CJK TC Regular", size = 14))

df_country4 <- 
  tribble(
    ~Au,~Ne,~Pa,
    13,3,1,
  )
df_country4
value_country4_color = c("澳大利亞"="#FF6347","紐西蘭"="#FFD700","帛琉"="#FF8C00")

df_country4 %>% 
  rename(`澳大利亞` = 1, `紐西蘭` = 2, `帛琉` = 3) %>%
  pivot_longer(cols = 1:3, names_to = "people", values_to = "value") %>%
  mutate(per = value/sum(value)) %>% ungroup() %>%
  mutate(people = fct_reorder(as_factor(people), -value)) %>%
  mutate(value2 = str_c(round(value,0), "萬人")) %>%
  ggplot(aes(x = "", y = value, fill = people)) +
  geom_bar(stat = "identity", width = 1) +
  geom_text(aes(label = value2),
            position = position_stack(vjust = 0.5), family = "Noto Sans CJK TC Regular", size = 5) +
  coord_polar("y", start = 0) +
  labs(x= "",y= "", 
       title = "大洋洲前三大台灣人最愛出遊地區",
       subtitle = "地區人數佔比, 民國112年",
       caption = "\n資料來源：交通部",
       fill = "出國人口") +
  scale_fill_manual(values = value_country4_color) +
  theme_void() +
  theme(text = element_text(family = "Noto Sans CJK TC Regular", size = 14))

