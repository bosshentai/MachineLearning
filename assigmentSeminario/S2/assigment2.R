library(ggplot2)

data <- read.csv("home/Documents/GitHub/MachineLearning/assigmentSeminario/data/Expanded_data_with_more_features.csv")

options(repr.plot.width = 10, repr.plot.height = 6)

total_female_standard <- sum(data$Gender == "female" & data$LunchType == "standard")

# Create bar plot
plot <- ggplot(data, aes(y = Gender, fill = LunchType)) +
  geom_bar(position = "stack") +
  theme_bw() +
  theme(panel.grid.major.x = element_blank()) +
  scale_x_continuous(breaks = seq(0, total_female_standard + 600, by = 600)) +
  labs(title = "Female vs Male", x = "", y = "") +
  guides(fill = guide_legend(title = "LunchType"))

# Display the plot
# print(plot)

