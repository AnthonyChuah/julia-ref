# Use their weird interpretation of "compounded semi-anually"

s0 = 100
st = 125

r = 0.1

sf = 1 + r # 1.1
disc_0_T = 1 / sf # 1 / 1.1

halfsf = 1 + r/2
disc_t_T = 1 / halfsf

F0 = s0 / disc_0_T
Ft = st / disc_t_T

val_t = (Ft - F0) * disc_t_T
@printf("%f\n", val_t)
