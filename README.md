# String Calculator - TDD Kata in Ruby

## What’s This About?

This project is my solution to the classic String Calculator kata, built using Ruby and the Test-Driven Development (TDD) approach. The idea is simple: given a string with numbers separated by delimiters, your calculator adds them all up!

I tackled this step-by-step, starting from the basics and adding features as I wrote tests to guide each change.

## What Can It Do?

- Returns 0 if you give it an empty string.
- Handles one or more numbers separated by commas.
- Also understands new lines (`\n`) as separators.
- Lets you specify your own delimiter, for example: `//;\n1;2` sums to 3.
- Throws a friendly error if negative numbers show up, listing every negative number.
- Ignores numbers bigger than 1000 instead of adding them.

## How To Run The Tests

If you want to try it yourself, make sure Ruby and Bundler are installed, then run:

--> bundle install
--> bundle exec rspec

You should see all tests passing smoothly.

## How I Built This - My TDD Journey

I started by writing the simplest test possible - that an empty string should return 0. Then, I gradually added tests for:

- Single numbers
- Two or more numbers
- Newline as an extra delimiter
- Custom delimiters
- Handling negatives with exceptions
- Ignoring numbers over 1000

For every test that passed, I refactored the code to keep it clean and simple. I also committed after each meaningful step, so you can track how the code evolved.

## Feel Free to Explore

If you want, check out the tests and the implementation to see how the problem was tackled in small, manageable steps. This is a great way to practice writing readable, testable code while embracing the TDD mindset.

---

*Happy coding!*