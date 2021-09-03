print("Coded By Veena")
#here I have used head command which prints 1st 6 data from the top
#loading CSV File
csv_viewer <- read.csv("Iris.csv")
head(csv_viewer)

#To view XLS and XLSX files we need to install readxl package for that run install.packages("readxl")
#Loading Library
library("readxl")
# xls files
xls_viewer <- read_excel("gold.xls")
head(xls_viewer)
# xlsx files
xlsx_viewer <- read_excel("waterquality.xlsx")
head(xlsx_viewer)
