iris
class(iris)

View(iris)

nrow(iris)

colnames(iris)

iris[ , c("Sepal.Length","Species")]

iris[ c(100,103,105) ,]

iris[ 50:100 , ]

mean(iris$Sepal.Length)

median(iris$Sepal.Length)


sd(iris$Petal.Length)

quantile(iris$Petal.Width, probs = seq(from = 0.1, to = 0.9, by =0.1))



dfManga = read.csv("C:/Users/m/Downloads/manga.csv", header = TRUE, sep = ",", dec = ".")
dfAnime = read.csv("C:/Users/m/Downloads/anime.csv", header = TRUE, sep = ",", dec = ".")
class(dfManga)
class(dfAnime)


dim(dfAnime)
dim(dfManga)
mean(dfManga$Score)
mean(dfAnime$Score)
sum(dfManga$Vote)
sum(dfAnime$Vote)
sd(dfManga$Score)
sd(dfAnime$Score)
quantile(dfManga$Score, probs = seq(from = 0.1, to = 0.9, by = 0.1))
quantile(dfAnime$Score, probs = seq(from = 0.1, to = 0.9, by = 0.1))
extraction1 <- subset(dfManga, Score > 9)
nrow(extraction1)
extraction2 <- subset(dfManga, Vote >= 200000)
nrow(extraction2)
extraction3 <- subset(dfManga, Vote >= 200000 & Score >= 8)
nrow(extraction3)
extraction4 <- subset(dfManga, Score >= 7 & Score <= 8)
nrow(extraction4)
effectifRating <- table(dfAnime$Rating)
print(effectifRating)
length(effectifRating)
prop.table(effectifRating)
extraction2 <- subset(dfAnime, Rating == "R - 17+ (violence & profanity)")
nrow(extraction2)
extraction3 <- subset(dfAnime, Rating == "R - 17+ (violence & profanity)" &
                        Score >= 8)
nrow(extraction3)
extraction4 <- subset(dfAnime, Rating != "R - 17+ (violence & profanity)")
nrow(extraction4)
extraction5 <- subset(dfAnime, Rating %in% c("PG - Children","G - All Ages"))
nrow(extraction5)
extraction6 <- subset(dfAnime, !Rating %in% c("PG - Children","G - All Ages"))
nrow(extraction6)
extraction7 <- subset(dfAnime, Score >= 9 | Vote > 400000)
nrow(extraction7)
dfAnime <- dfAnime[ , c("Title","Score","Vote","Ranked")]
dfManga <- dfManga[ , c("Title","Score","Vote","Ranked")]
dfAnime$Type <- "Anime"
dfManga$Type <- "Manga
dfConcat <- rbind(dfManga,dfAnime)
View(dfConcat)
write.table(x = dfConcat, file = "C:/Users/DELL/Downloads/ExportTp1.csv","," sep = ";", row.names = FALSE)