#!/bin/bash

echo "Running skeptic..."
skeptic --lines-per-method 10 --line-length 80 --max-nesting-depth 2 --no-semicolons --no-trailing-whitespace --check-syntax --no-global-variables --english-words-for-names='bgn usd eur gbp leva dollars euro pounds' --naming-conventions solution.rb
printf "\n"

echo "Running spec..."
rspec spec.rb --require ./solution.rb --colour --format documentation