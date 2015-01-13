# word cloud 

words <- c("math", "coins","probability","numbers","data",'analysis','help','percentags',
           'average','challenging','required','math','timeconsuming','death','math','surveys',
           'sports','scary','numbers','scary','difficult','suck','data','data','exciting',
           'moneyball','difficult','numbers','variance','science','numbers','numbers','math',
           'gambling','percentages','math','numbers','data','graphs','probability','terror',
           'difficult','hard','meltdown','data','death','numbers','numbers','difficult','numbers',
           'math','numbers','excel','math','graphs','whimsical','what','boring','confusing','graphs',
           'probability','hard','numbers','math','difficult','charts','scarry','math','math','graphs',
           'probability','data','rationality','probability','concern','data','patterns',
           'money','science','experiments','probability','numbers','math','math','facts','math')

words2 <- c("math", "coins","data",'analysis','help','percentags',
           'average','challenging','required','math','timeconsuming','death','math','surveys',
           'sports','scary','numbers','scary','difficult','suck','data','exciting',
           'moneyball','difficult','variance','science','numbers','math',
           'gambling','percentages','graphs','probability','terror',
           'difficult','hard','meltdown','death','difficult','numbers',
           'math','numbers','excel','math','graphs','whimsical','what','boring','confusing','graphs',
           'probability','hard','numbers','difficult','charts','scarry','graphs',
           'data','rationality','probability','concern','data','patterns',
           'money','science','experiments','probability','facts')
wordcloud(words2, random.order=F, scale=c(5,.5),colors=brewer.pal(4,"Dark2"), min.freq=1)


library(wordcloud)
library(tm)

wordcloud(words, random.order=F, scale=c(3,0.1),colors=brewer.pal(4,"Dark2"))

