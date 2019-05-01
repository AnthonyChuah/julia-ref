# Suppose the spot rates for 1 and 2 years are s_1 = 6.3 and s_2 = 6.9%
# with annual compounding. Recall that in this course interest rates are always
# quoted on an annual basis unless otherwise specified.
# What is the discount rate d(0,2)?

s1 = 0.063
s2 = 0.069
sf2 = (1+s2)^2
dr2 = 1/sf2
@printf("d(0, 2) is %f\n", dr2)
