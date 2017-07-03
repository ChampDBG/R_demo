### 建立一筆卡方分配的資料
x <- rchisq(10000, df = 4)

# 畫圖確認分配的樣子
hist(x, freq = FALSE, ylim = c(0, 0.2))
curve(dchisq(x, df = 4), col = 2, lty = 2, lwd = 2, add = TRUE)

### 進行抽樣
# 設定抽樣次數 (大約跑10秒，如果太久把數字改小)
times <- 100000

# 設定方資料的地方
dta_s <- matrix(0, times)

# 開始抽樣
for (i in 1:times) {
    x_s <- sample(x, 100)
    dta_s[i] <- sd(x_s)
}

# 畫圖看結果
hist(dta_s, freq = FALSE)
lines(density(dta_s), col = 2, lty = 2, lwd = 2)

### 改計算標準差
for (i in 1:times) {
    x_s <- sample(x, 100)
    dta_s[i] <- sd(x_s)
}
hist(dta_s, freq = FALSE)
lines(density(dta_s), col = 2, lty = 2, lwd = 2)

### 只抽樣30次
dta_s30 <- matrix(0, 30)

for (i in 1:30) {
    x_s <- sample(x, 100)
    dta_s30[i] <- mean(x_s)
}
hist(dta_s30, freq = FALSE)
lines(density(dta_s30), col = 2, lty = 2, lwd = 2)