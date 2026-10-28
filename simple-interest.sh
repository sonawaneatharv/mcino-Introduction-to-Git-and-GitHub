#!/bin/bash

# Simple Interest Calculator
# This script calculates simple interest based on user input.
# Formula: Simple Interest = (Principal * Rate * Time) / 100

echo "========================================"
echo "      Simple Interest Calculator        "
echo "========================================"

# Input: Principal amount
echo -n "Enter the Principal amount (P): "
read principal

# Input: Rate of interest
echo -n "Enter the Rate of Interest (R in % per annum): "
read rate

# Input: Time period
echo -n "Enter the Time Period (T in years): "
read time

# Calculate Simple Interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display result
echo "========================================"
echo "         Calculation Results            "
echo "========================================"
echo "Principal Amount     : $principal"
echo "Rate of Interest     : $rate%"
echo "Time Period          : $time years"
echo "----------------------------------------"
echo "Simple Interest      : $simple_interest"
echo "Total Amount         : $(echo "scale=2; $principal + $simple_interest" | bc)"
echo "========================================"
