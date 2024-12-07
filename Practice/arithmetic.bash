# !/bin/bash
# # Addition
# result=$(expr 5 + 3)
# echo "5 + 3 = $result"

# # Subtraction
# result=$(expr 10 - 4)
# echo "10 - 4 = $result"

# # Multiplication
# result=$(expr 4 \* 2)  # Note the escaping of '*' with a backslash
# echo "4 * 2 = $result"

# # Division
# result=$(expr 9 / 3)
# echo "9 / 3 = $result"

# # Modulus
# result=$(expr 10 % 3)
# echo "10 % 3 = $result"

# Addition
result=$((5 + 3))
echo "5 + 3 = $result"
# 5 + 3 = 8

# Subtraction
result=$((10 - 4))
echo "10 - 4 = $result"
# 10 - 4 = 6

# Multiplication
result=$((4 * 2))
echo "4 * 2 = $result"
# 4 * 2 = 8

# Division
result=$((9 / 3))
echo "9 / 3 = $result"
# 9 / 3 = 3

# Modulus
result=$((10 % 3))
echo "10 % 3 = $result"
# 10 % 3 = 1

# Exponent
result=$((10 ** 3))
echo "10 ** 3 = $result"
# 10 ** 3 = 1000
