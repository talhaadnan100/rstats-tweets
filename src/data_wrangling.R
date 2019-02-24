library(tidyverse)

#raw_data <- readRDS("data/rstats_tweets.rds") # 400,000 tweets
raw_data <- readRDS("data/tidytuesday_tweets.rds") # 1,500 tweets

# Only including columns of interest
data_subset <- raw_data %>% 
  select(user_id, status_id, created_at, screen_name, text, source, display_text_width, 
         is_retweet, favorite_count, retweet_count, hashtags, urls_url, urls_expanded_url,
         media_type, mentions_user_id, mentions_screen_name, lang, followers_count, 
         friends_count, listed_count, statuses_count, favourites_count, account_created_at) %>% 
  mutate(urls_websitelapply(str_split(raw_data$urls_url, "\\/"), `[[`, 1))

