# Function to count the number of words in a text
#' Count Words
#'
#' This function counts the number of words in a given text.
#'
#' @param text A character string containing the text to be analyzed.
#' @return An integer representing the number of words in the text.
#' @examples
#' word_count("Hello world!")
#' @export
word_count <- function(text) {
  words <- strsplit(text, "\\s+")[[1]]
  return(length(words))
}

# Function to calculate word frequency
#' Word Frequency
#'
#' This function calculates the frequency of each word in a given text.
#'
#' @param text A character string containing the text to be analyzed.
#' @return A named vector with words as names and their frequencies as values.
#' @examples
#' word_frequency("Hello world! Hello again.")
#' @export
word_frequency <- function(text) {
  words <- strsplit(text, "\\s+")[[1]]
  word_table <- table(words)
  return(as.vector(word_table))
}

# Load the package
devtools::load_all()

# Document the package
devtools::document()
