# R code for creating list of student names

roster_H <- read.csv("~/GitHub/epwalsh.github.com/Stat101/Files/roster_H.csv")
roster_G <- read.csv("~/GitHub/epwalsh.github.com/Stat101/Files/roster_G.csv")

roster_H$name <- as.character(roster_H$Name................)
roster_G$name <- as.character(roster_G$Name................)

# Combine sections
roster <- c(roster_H$name, roster_G$name)

# Alphabetize
roster <- roster[order(roster)]
roster <- data.frame(roster)
names(roster) <- c("name")

# Create csv file with names
write.csv(roster, "~/GitHub/epwalsh.github.com/Stat101/Files/roster.csv", row.names=F)
