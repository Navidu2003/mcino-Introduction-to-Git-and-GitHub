#!/bin/bash

# Simple Interest Calculator
# Formula: SI = (Principal * Rate * Time) / 100

echo "----- Simple Interest Calculator -----"

read -p "Enter Principal amount: " principal
read -p "Enter Rate of Interest (%): " rate
read -p "Enter Time period (in years): " time

# Calculate simple interest using bc for decimal precision
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

echo "---------------------------------------"
echo "Principal Amount : $principal"
echo "Rate of Interest : $rate%"
echo "Time Period      : $time year(s)"
echo "Simple Interest  : $simple_interest"
echo "---------------------------------------"
