# A young couple has made a deposit of the first month's rent (equal to $1,000)
# on a 6-month apartment lease. The deposit is refundable at
# the end of six months if they stay until the end of the lease.
# The next day they find a different apartment that they like just as well,
# but its monthly rent is only $900. And they would again have to put a
# deposit of $900 refundable at the end of 6 months. They plan to be in the
# apartment only 6 months. Should they switch to the new apartment? Assume
# an (admittedly unrealistic!) interest rate of 12% per month compounded monthly.

payments_first = Array{Float64}(6)
payments_second = Array{Float64}(6)

# Sunk cost of first apartment's deposit = 1000
# Pay 1000 after 1 month, 2 months, etc. Get 1000 back after 6,
# cancels out the rent of 6th month.
payments_first[2:6] = 1000

# Deposit at 0th month, get back 900 at end of 6th,
# cancels out rent of 6th month and front-loads it to 0th.
payments_second[1:6] = 900

disc_factor = 1 / (1 + 0.12)
discounts = Array{Float64}(6)
discounts[1] = 1.0
for i in 2:6
    discounts[i] = discounts[i-1] * disc_factor
end

dcf_first = discounts .* payments_first
dcf_second = discounts .* payments_second
npv_first = sum(dcf_first)
npv_second = sum(dcf_second)

@printf("Net discounted loss of sticking to first is %f, switching to second is %f\n", npv_first, npv_second)
