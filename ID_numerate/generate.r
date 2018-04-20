## generate ID
#  setseed
set.seed(20180420)
id = runif(10)
id = paste0('N', gsub('0.', '', as.character(id)))
print(id)

# random time
set.seed(20180420)
RepTimes = round(runif(10,1,10))
id = rep(id,RepTimes)
dta = as.data.frame(id)
dta$val = runif(sum(RepTimes), 1, 10)

write.csv(dta, 'FakeData.csv', row.names = F)
