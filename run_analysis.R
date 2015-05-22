# run_analysis.R
# Massages/subsets some data from the human activity recognition using smartphones dataset.
# Roy Pardee
# rpardee@gmail.com

# Data is split column-wise into dependent var (activity--numerically coded) a
# subject indicator var, and a vector of 561 (!) predictors ('features'). Data
# is split row-wise into training and test subsets, which are stored in text
# files in different subdirs under $root/data.
# The feature var names are contained in data/features.txt.
# The names of the activity var (factor levels) are in
# data/activity_labels.txt

# Assignment:
#   1. Merges the training and the test sets to create one data set.
#   2. Extracts only the measurements on the mean and standard deviation for each measurement.
#   3. Uses descriptive activity names to name the activities in the data set
#   4. Appropriately labels the data set with descriptive variable names.
#   5. From the data set in step 4, creates a second, independent tidy data
#      set with the average of each variable for each activity and each subject.

# source('C:/Users/pardre1/documents/vdw/gacd/run_analysis.R')

# Start w/a clean environment.
rm(list=ls())

library('plyr')
library('reshape2')

proj_root <- 'C:/Users/pardre1/Documents/vdw/gacd/'
setwd(proj_root)

ylabs <- read.table('data/activity_labels.txt')$V2
xlabs <- read.table('data/features.txt')$V2
wanted_features <- grep('-(std|mean)[(]', xlabs)
ugly_feature_names <- xlabs[wanted_features]

# Ditch parens & change dashes to underscores.
pretty_feature_names <- gsub('\\(\\)', '', ugly_feature_names)
pretty_feature_names <- gsub('-', '_', pretty_feature_names)

# The training & test data live in parallel subdirs & need the same
# wrangling--let's keep it DRY.
unify <- function(subset) {
  y_loc <- paste('data/', subset, '/y_'       , subset, '.txt', sep = '')
  s_loc <- paste('data/', subset, '/subject_' , subset, '.txt', sep = '')
  x_loc <- paste('data/', subset, '/X_'       , subset, '.txt', sep = '')

  y <- read.table(y_loc)
  names(y) <- 'activity'
  # Convert this numeric to a factor.
  y$activity <- as.factor(y$activity)
  # Give the factor human-readable levels.
  levels(y$activity) <- ylabs
  # Laying seems the most passive 'activity'--let's make that the reference level.
  relevel(y$activity, ref="LAYING")

  s <- read.table(s_loc)
  names(s) <- 'subject'
  s$subject <- as.factor(s$subject)

  x <- read.table(x_loc)

  names(x) <- xlabs
  # Subset to the features we want.
  x <- x[, wanted_features]
  # Give the features our nice, god-fearing names.
  names(x) <- pretty_feature_names
  # Mash the columns together & return.
  return(cbind(s, y, x))
}

test    <- unify('test')
train   <- unify('train')
unified <- rbind(test, train)

rm(test, train, xlabs, ylabs, wanted_features)

write.table(unified, 'submit/harus_tidy.txt', row.names=FALSE)

melted <- melt(unified, id=c('subject', 'activity'), measure.vars=pretty_feature_names)
meany <- dcast(melted, subject + activity ~ variable, mean)

write.table(meany, 'submit/harus_means_tidy.txt', row.names=FALSE)

rm(melted, meany)

