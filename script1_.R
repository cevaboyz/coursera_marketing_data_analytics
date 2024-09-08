Getting Started in R: Scatter Plots

#Instructions:  Paste each block of code into R, one at a time, to see what it does;

# Script 1: Create a scatter plot of Sales vs. Price in the Carseats dataset; 

# Data dictionary for Carseats: 
https://rdrr.io/cran/ISLR/man/Carseats.html
; 

# Install R from 
https://cran.r-project.org/
 and open a new R session.;

# Install package ISLR if it is not already installed;

if (!require(ISLR)) install.packages('ISLR'); 

#  (If prompted, choose a location from which to download the package.); 

 

# Load package ISLR into your current R session;

library(ISLR);

 

# Attach the Carseats dataset to the current R session so that R will recognize the names of its variables (columns); 

attach(Carseats);

 

#  Create a simple plot of Sales vs. Price using the plot function;

plot(Price, Sales); 

# Create a better-looking plot by expanding character sizes for dots, axis labels, and axis numbers and making the dots solid;

plot(Price, Sales, cex = 1.6, cex.lab = 1.6, cex.axis = 1.6, pch = 16);

# Color the dots by shelf location (ShelveLoc);

plot(Price, Sales, cex = 1.6, cex.lab = 1.6, cex.axis = 1.6, pch = 16, col= ShelveLoc);

# Install and load car package if not installed and loaded;

if (!require(car)) install.packages('car'); library(car); 

scatterplot(Price, Sales, cex = 1.6, cex.lab = 1.6, cex.axis = 1.6, pch = 16, boxplots = F, col = "black");

# Show multiple regression lines, by value of ShelveLoc;

scatterplot(Sales ~ Price | ShelveLoc, col = c("blue", "red", "black"), cex = 1.6, cex.lab = 1.6, cex.axis = 1.6, boxplots = F,pch = 20:3);


# Create and display regression line and smoothing regression curve and uncertainty band for Sales vs. Advertising;

scatterplot(Advertising, Sales, cex = 1.6, cex.lab = 1.6, cex.axis = 1.6, pch = 16, boxplots = F, col = "black");
