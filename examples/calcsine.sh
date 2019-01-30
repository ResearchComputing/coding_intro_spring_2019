#!/bin/bash
# Calculate the sine of the argument.

sine=$(echo "s($1)" | bc -l )
echo "The sine of $1 is ${sine}"
