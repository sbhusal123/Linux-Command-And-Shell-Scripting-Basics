# Arithmetic Operators

- **Addition (+)** Adds two values.
- **Subtraction (-)**: Subtracts the second value from the first.
- **Multiplication (`*`)**: Multiplies two values.
- **Division (/)**: Divides the first value by the second.
- **Modulus (%)**: Finds the remainder of the division of the first value by the second.
- **Exponentiation (``**``)**: Raises the first value to the power of the second (available in some shells like Bash).

## Evaluating an expression:

- Using ``expr <expression>`` => ``x=$(expr operand1 <operator> operand2)``. This requires escape characters for `*` and doesnt supports `**`

- Using ``$((...))`` => ``x=$((operand1 <operator> operand2))``


# Example

```sh
expr expression

# in terminal
> expr 5 + 3
8

# storing in variable
x=$(expr 5 + 3)
# echo $x => 8
```


## Evaluation using expr command: (Old way)

- With expr `*` requires escape character i.e. ```x=$(expr 4 \* 2)```
- Expr doesnt supports exponent operator.

```sh
# Addition
> result=$(expr 5 + 3)
> echo "5 + 3 = $result"
# 5 + 3 = 8

# Subtraction
> result=$(expr 10 - 4)
> echo "10 - 4 = $result"
# 10 - 4 = 6

# Multiplication: note that * operator requires, 
> result=$(expr 4 \* 2)
> echo "4 * 2 = $result"
# 4 * 2 = 8

# Division
> result=$(expr 9 / 3)
> echo "9 / 3 = $result"
# 9 / 3 = 3

# Modulus
result=$(expr 10 % 3)
echo "10 % 3 = $result"
```

## Evaluation with `$((...))` approach: (Recommended)

- Supports exponent operator
- No escape character is requied for `*` multiplication.
- Exponent evaluation is not supported by `sh` shell.

```sh
# Addition
> result=$((5 + 3))
> echo "5 + 3 = $result"
# 5 + 3 = 8

# Subtraction
> result=$((10 - 4))
> echo "10 - 4 = $result"
# 10 - 4 = 6

# Multiplication
> result=$((4 * 2))
> echo "4 * 2 = $result"
# 4 * 2 = 8

# Division
> result=$((9 / 3))
> echo "9 / 3 = $result"
# 9 / 3 = 3

# Modulus
> result=$((10 % 3))
> echo "10 % 3 = $result"
# 10 % 3 = 1

# Exponent: Note that sh shell doesnt supports this.
> result=$((10 ** 3))
> echo "10 ** 3 = $result"
# 10 ** 3 = 1000
```
