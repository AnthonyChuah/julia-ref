# A major lottery advertises that it pays the winner $10 million.
# However this prize money is paid at the rate of $500,000 each year
# (with the first payment being immediate) for a total of 20 payments.
# What is the present value of this prize at 10% interest compounded annually?

payments = Array{Float64}(20)
payments[1:20] = 500000.0

disc_factor = 1 / (1 + 0.1)
discount = Array{Float64}(20)
discount[1] = 1.0
for i in 2:20
    discount[i] = discount[i-1] * disc_factor
end

# elementwise multiply then vector sum
discounted_cashflow = payments .* discount
npv = sum(discounted_cashflow)
@printf("%f\n", npv)
