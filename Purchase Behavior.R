#  Page Views, Gender Proportions & Purchase Behavior

# Load dataset
ecomm.df <- read.csv("~/Downloads/ecommerce-data-4.csv")
str(ecomm.df)

# Q1: Convert Pageviews to Integer
pageViewInt <- rep(NA, length(ecomm.df$behavPageviews))
pageViewInt[ecomm.df$behavPageviews == "0"] <- 0
pageViewInt[ecomm.df$behavPageviews == "1"] <- 1
pageViewInt[ecomm.df$behavPageviews == "2 to 3"] <- 2
pageViewInt[ecomm.df$behavPageviews == "4 to 6"] <- 4
pageViewInt[ecomm.df$behavPageviews == "7 to 9"] <- 7
pageViewInt[ecomm.df$behavPageviews == "10+"] <- 10
ecomm.df$pageViewInt <- pageViewInt

# Q2: Summary of page views by profile
aggregate(pageViewInt ~ profile, data = ecomm.df, summary)

# Q3: Total page views by profile
aggregate(pageViewInt ~ profile, data = ecomm.df, sum)

# Q4: Gender proportions by profile (excluding unspecified)
table(ecomm.df$gender)
gender.clean <- ecomm.df[ecomm.df$gender %in% c("Female", "Male"), ]
prop.table(table(gender.clean$profile, gender.clean$gender), margin = 1)

# Q5: Who made the most purchases recently?
table(ecomm.df$profile, ecomm.df$purchasedWhen)

# Q6: Histogram of purchases by profile and time
library(lattice)
histogram(~profile | purchasedWhen, data = ecomm.df, scales = list(x = list(rot = 45)))

# Q7: Proportions instead of raw counts
prop.table(table(ecomm.df$profile, ecomm.df$purchasedWhen), margin = 1)

# Q8: Total purchases by profile + gender
aggregate(behavAnySale ~ profile + gender, data = ecomm.df, sum)

# Q9: Purchase rate by profile + gender
aggregate(behavAnySale ~ profile + gender, data = ecomm.df, mean)
