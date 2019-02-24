library(tidyverse)
library(tidytext)

data <- readRDS("data/tidytuesday_tweets.rds") # 1,500 tweets

# table with one-token-per-row
data <- data %>% 
  unnest_tokens(word, text)


# Remove stop words

data(stop_words)

data <- data %>%
  anti_join(stop_words)

# Word Frequencies
data %>% 
  count(word, sort = TRUE) %>% 
  head()

