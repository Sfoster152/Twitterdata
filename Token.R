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
