install.package(“NLP”)
install.package("tm")
install.package(“RColorBrewer”)
install.package(“wordcloud”)
filePath <- "/home/ARTIFICAL INTELLIGENCE.TXT"
text_file <- readLines(filePath)
head(text_file)
text_file1 <- paste(text_file, collapse = " ")
head(text_file1)
clean_text <- tolower(text_file1)
head(clean_text)
clean_text1 <- gsub(pattern = "\\W", replace = " " ,clean_text)
head(clean_text1)
clean_text2 <- gsub(pattern = "\\d", replace = " ", clean_text1)
head(clean_text2)
library(NLP)
library(tm)
stopwords()
clean_text3 <- removeWords(clean_text2,words = c(stopwords(),"ai","â"))
head(clean_text3)
clean_text4  <- gsub(pattern = "\\b[A-z]\\b{1}", replace = " ", clean_text3 )
head(clean_text4)
clean_text5 <- stripWhitespace(clean_text4)
head(clean_text4)
clean_text6 <- strsplit(clean_text5, " ")
head(clean_text6)
word_freq <- table(clean_text6)
head(word_freq)
word_freq1 <- cbind(names(word_freq), as.integer(word_freq))
head(word_freq1)
library(RColorBrewer)
library(wordcloud)
class(clean_text6)
word_cloud <- unlist(clean_text6)
wordcloud(word_cloud)
wordcloud(word_cloud,min.freq = 5 , random.order = FALSE, scale=c(3, 0.5))
wordcloud(word_cloud,min.freq = 3, max.words=1000, random.order=F, rot.per=0.2, colors=brewer.pal(5, "Dark2"), scale=c(4,0.2))