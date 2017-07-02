#安裝packages (之前已經幫妳裝了)
install.packages("ggplot2")

#載入packages
library(ggplot2)

##前情提要
#ggplot2的概念，有點像是圖層，先用ggplot()作為畫布，再在上面畫東西，如geom_point()是畫散布圖
#stat_smooth()是畫統計資訊(平均數連線、信賴區間)

#畫出散布圖與折線圖(以快樂為例)
ggplot(data = dta, aes(x = 年齡組, y = 情緒))+
geom_point(data = dta, aes(x = 年齡組, y = 快樂),color = 1) +
stat_smooth(data = dta, aes(x = 年齡組, y = 快樂),color = 1)

##每個function之間，必須用 "+" 連接，否則R會不知道妳要畫在同一張圖上
#aes表示妳要從資料中取出什麼資料，一次只能取一個
#color是指顏色，數字是它預設的，也可以用 color = "red" 表示妳要的是紅色，示範如下：
ggplot(data = dta, aes(x = 年齡組, y = 情緒))+
geom_point(data = dta, aes(x = 年齡組, y = 快樂),color = "red") +
stat_smooth(data = dta, aes(x = 年齡組, y = 快樂),color = "red",)

##只是color裡面有甚麼顏色我不確定，我沒有查，妳可以自己找找看，或用預設的
#以下是所有情緒的折線圖，我不知道什麼顏色是什麼情緒，麻煩妳自己確認。
ggplot(data = dta, aes(x = 年齡組, y = 情緒))+
stat_smooth(data = dta, aes(x = 年齡組, y = 快樂),color = 1) +
stat_smooth(data = dta, aes(x = 年齡組, y = 悲傷),color = 2) +
stat_smooth(data = dta, aes(x = 年齡組, y = 厭惡),color = 3) +
stat_smooth(data = dta, aes(x = 年齡組, y = 憤怒),color = 4) +
stat_smooth(data = dta, aes(x = 年齡組, y = 驚訝),color = 5) +
stat_smooth(data = dta, aes(x = 年齡組, y = 恐懼),color = 6) 

##我覺得全部的情緒塞在一張圖裡面有點雜亂，妳再自己調整，ggplot2還有很多功能，
#有興趣妳可以參考備註四，有問題的話...就再說吧XDD


###備註一:R裡面不會執行的代號是#，matlab才是%，我記錯了sorry~
###備註二:ggplot這個packages是python(另一個統計程式)的，R的packages是ggplot2沒錯。
###備註三:不要一次用太多程式，不然就會像我一樣把matlab跟python的混用在R上面=ˇ=
###備註四:ggplot2的簡單應用說明，如果妳要要自學R可以參考這個網站:http://molecular-service-science.com/2013/11/27/r-ggplot-tutorial-1/