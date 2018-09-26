#Загрузите данные о землятресениях
anss <- readLines("https://raw.githubusercontent.com/SergeyMirvoda/MD-DA-2017/master/data/earthquakes_2011.html", warn=FALSE)
#Выберите строки, которые содержат данные с помощью регулярных выражений и функции grep
x<-grep("\\d{4}/\\d{2}/\\d{2}\\s\\d{2}.*", anss)
#Проверьте что все строки (all.equal) в результирующем векторе подходят под шаблон. 
anss[x]
all.equal("\\d{4}/\\d{2}/\\d{2}\\s\\d{2}.*", x)
