# Bonhwang Koo
# 1/27/2017
attach(mtcars) # Sample dataset for cars
head(mtcars) # Show the first 6 rows of mtcars
plot(mtcars$wt, mtcars$mpg) # Scatter plot for MPG vs. Weight (tons)

# Plot with same data as above, with some modifications
plot(mtcars$wt, mtcars$mpg, main = "Auto Fuel Efficiency vs. Weight",
     xlab = "Weight (tons)", ylab = "Fuel Efficieny (Miles per Gallon)",
     xlim = c(0, 6), ylim = c(0, 40), pch = 21)
# Add a line of best fit
abline(lm(mtcars$mpg ~ mtcars$wt), col = "blue")

# Provides intercept and slop for line of best fit
lm(mtcars$mpg ~ mtcars$wt) # Y-Intercept: 37.285; Slope: -5.344

# Create a dataframe from SM KBIT data
sm_kbit = read.csv("/Volumes/data/Research/CDB/RA Didactics/Programming_Jan2017/Week 3/example_csv/SM_EEG_KBIT.csv")
# Abbreviate column names
names(sm_kbit)[names(sm_kbit) == "KBIT.Verbal.Standard.Score"] = "KBIT_Verbal"
names(sm_kbit)[names(sm_kbit) == "KBIT.Nonverbal.Standard.Score"] = "KBIT_Nonverbal"
names(sm_kbit)[names(sm_kbit) == "KBIT.IQ.Standard.Score"] = "KBIT_IQ"

# T-test comparing Verbal scores between SM and controls
t.test(sm_kbit$KBIT_Verbal ~ sm_kbit$SM_dx)

# T-test comparing Verbal and Nonverbal scores between all participants
t.test(sm_kbit$KBIT_Verbal, sm_kbit$KBIT_Nonverbal, paired = TRUE) # Note: If the argument "paired" is not specified, it defaults to FALSE

# Boxplot comparing Verbal scores between SM and controls
boxplot(KBIT_Verbal ~ SM_dx, data = sm_kbit)

# Boxplot with modifications
png(filename = "/Users/bonhwang.koo/Desktop/KBIT_boxplot_modified.png") # Specify where to save image as .png
boxplot(KBIT_Verbal ~ SM_dx, data = sm_kbit, main = "KBIT Verbal Scores", 
        xlab = "SM Diagnosis", ylab = "KBIT Verbal Score",
        ylim = c(50, 150), col = c("#0067A0", "#919d9d"))
dev.off()