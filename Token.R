#API keys 
API_key <-  "h6hZC837wesEZssGa43Blz4l0"

API_secret_key <-  "aDefAgoh7fuHaO0PAAPQT8DQ30kyTlovHY5azPydHhax6j1Oeq"

#authenticate via webbrowser 

APItoken <- create_token( 
  app = "rstatslearningreserch",
  consumer_key = API_key,
  consumer_secret = API_secret_key)

APItoken

rstats_tweets <- search_tweets(q="#rstats",
                               n = 1000)
rstats_tweets

rstats_tweets <- search_tweets(q="#rstats",
                               n = 1000, include_rts = F)
head(rstats_tweets$screen_name)
unique(rstats_tweets$screen_name)
 write_xlsx(rstats_tweets,"C:\\Users\\sfost\\OneDrive\\Documents\\R\\R-Projects\\Twitterdata\\twiter.xlsx")
Users<- unique(rstats_tweets$screen_name)
count(rstats_tweets$screen_name,Users)
count.fields(rstats_tweets$screen_name=Users)
Name <- rstats_tweets$screen_name
table(Name)
table(Name)[names(table(Name))=>10]
## using base R
table(rstats_tweets$screen_name)

## using dplyer

rstats_tweets %>% count(screen_name)
Users1 <- rstats_tweets %>% count(screen_name)
Data1<-Users1$n >10
user_list<-Users1[Data1,]
user_list
write_xlsx(WorkData,"C:\\Users\\sfost\\OneDrive\\Documents\\R\\R-Projects\\Twitterdata\\twiter1.xlsx")
qw
Filter <- (rstats_tweets$screen_name == "chidambara09") | (rstats_tweets$screen_name == "CRANberriesFeed") | (rstats_tweets$screen_name == "DerFredo") | (rstats_tweets$screen_name == "gp_pulipaka") | (rstats_tweets$screen_name == "icymi_r")|(rstats_tweets$screen_name =="Rbloggers")|(rstats_tweets$screen_name =="tidyversetweets")|(rstats_tweets$screen_name =="xvaca")
WorkData <- rstats_tweets[Filter,]
WorkData
typeof(WorkData$created_at)
P <- ggplot(data=WorkData, aes(x=screen_name, y=created_at))
P +geom_boxplot()
P + geom_bar(y=NUll)
ggplot (data = WorkData, aes(x=screen_name,))+ geom_bar()
ggplot (data = WorkData, aes(x=created_at,y=screen_name, size=retweet_count))+ geom_line()+geom_smooth()
