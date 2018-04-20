# read data
dta = read.csv('FakeData.csv', h = T)

# create a list for numerate
tmp = list()

# count the number of each id
id_times = table(dta$id)
id_table = as.data.frame(id_times)
for (i in 1:length(id_times)) {
  tmp = append(tmp, seq(1,id_table$Freq[i]))
}
tmp = as.numeric(tmp)

# numerate
id_char = as.character(dta$id)
id_char = id_char[order(id_char)]
id_numerate = paste0(id_char, '-', tmp)

# arrange the data
dta = dta[order(dta$id),]
dta$numerate = id_numerate

# output csv file
write.csv(dta, 'FakeDataNumerate.csv', row.names = F)
