# The current price of a stock is $400 per share and it pays no dividends.
# Assuming a constant interest rate of 8% per year compounded quarterly,
# what is the stock's theoretical forward price for delivery in 9 months?

# weird terminology: "4% per annum compounded semi-anually" means
# it's 2% per half-annum, i.e. more than 4% per annum in reality.
# So "compounded X" where "X" is shorter than "annual" means bonus...
# In our case, compounded quarterly is a big bonus to us.

r = 0.08
scaleyear = 1 + r # d(-0.25, +0.75) = 1 / scaleyear
scalequarter = 1 + r/4

scale3q = scalequarter^3
discount = 1 / scale3q

forward = 400 / discount
@printf("%f\n", forward)
