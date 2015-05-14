=Accelerometer Data Assignment
== Coursera
== Getting And Cleaning Data (getdata-014)
== Roy Pardee (rpardee@gmail.com)


 trx <- read.table('train/X_train.txt')
 xlabs <- read.table('features.txt')
 names(trx) <- xlabs$V2
