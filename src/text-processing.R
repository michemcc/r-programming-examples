# Basic text processing in R

# Install the necessary packages if not done yet
install.packages("tidyverse")
install.packages("tokenizers")

# Load the packages for use (must be done every time)
libary(tidyverse)
library(tokenizers)

# Paste some test to a variable called text (in this case, a paragraph from the opening of Barack Obama's
# final State of the Union address in 2016
text <- paste("Now, I understand that because it's an election season",
          "expectations for what we will achieve this year are low.",
          "But, Mister Speaker, I appreciate the constructive approach",
          "that you and other leaders took at the end of last year",
          "to pass a budget and make tax cuts permanent for working",
          "families. So I hope we can work together this year on some",
          "bipartisan priorities like criminal justice reform and",
          "helping people who are battling prescription drug abuse",
          "and heroin abuse. So, who knows, we might surprise the",
          "cynics again")
          
# Sort the text into individual words with tokenize_words()
words <- tokenize_words(text)

# Print the tokenized output which will display the words and a counter indicating their position
words

[[1]]
 [1] "now"          "i"            "understand"   "that"         "because"
 [6] "it's"         "an"           "election"     "season"       "expectations"
[11] "for"          "what"         "we"           "will"         "achieve"
[16] "this"         "year"         "are"          "low"          "but"
[21] "mister"       "speaker"      "i"            "appreciate"   "the"
[26] "constructive" "approach"     "that"         "you"          "and"
[31] "other"        "leaders"      "took"         "at"           "the"
[36] "end"          "of"           "last"         "year"         "to"
[41] "pass"         "a"            "budget"       "and"          "make"
[46] "tax"          "cuts"         "permanent"    "for"          "working"
[51] "families"     "so"           "i"            "hope"         "we"
[56] "can"          "work"         "together"     "this"         "year"
[61] "on"           "some"         "bipartisan"   "priorities"   "like"
[66] "criminal"     "justice"      "reform"       "and"          "helping"
[71] "people"       "who"          "are"          "battling"     "prescription"
[76] "drug"         "abuse"        "and"          "heroin"       "abuse"
[81] "so"           "who"          "knows"        "we"           "might"
[86] "surprise"     "the"          "cynics"       "again"

# To see the count of words (inside the first document), use length() with the symbol [[1]] to select
# just the first element
length(words([[1]]))
[89]

# Create a table of the individual words and the number of times they appear in the document
# with the table() and data_frame() functions
tab <- table(words([[1]])
tab <- data_frame(word = names(tab), count = as.numeric(tab))
tab
# A tibble: 71 × 2
         word count
        <chr> <dbl>
1           a     1
2       abuse     2
3     achieve     1
4       again     1
5          an     1
6         and     4
7  appreciate     1
8    approach     1
9         are     2
10         at     1
# ... with 61 more rows

# Sort the table and print again with the arrange() function
arrange(tab, desc(count))
# A tibble: 71 × 2
    word count
   <chr> <dbl>
1    and     4
2      i     3
3    the     3
4     we     3
5   year     3
6  abuse     2
7    are     2
8    for     2
9     so     2
10  that     2
# ... with 61 more rows

# To detect and list the individual sentences of the text, we use the tokenize_sentences() function
sentences <- tokenize_sentences(text)
sentences
[[1]]
[1] "Now, I understand that because it's an election season expectations for what we will achieve this year are low."
[2] "But, Mister Speaker, I appreciate the constructive approach that you and other leaders took at the end of last year to pass a budget and make tax cuts permanent for working families."
[3] "So I hope we can work together this year on some bipartisan priorities like criminal justice reform and helping people who are battling prescription drug abuse and heroin abuse."
[4] "So, who knows, we might surprise the cynics again"

# Pass the sentences split from the paragraph into tokenize_words() to treat eat sentence as its
# own document
sentence_words <- tokenize_words(sentences([[1]])
sentence_words
             
# Take the length of each sentence individually to find out how many words are in each
length(sentence_words[[1]])
length(sentence_words[[2]])
length(sentence_words[[3]])
length(sentence_words[[4]])
# Alternatively, use sapply(), which applies its second argument to every element of the first argument,
# to accomplish the same thing in one line
sapply(sentence_words, length)
[1] 19 32 29  9
                                 
