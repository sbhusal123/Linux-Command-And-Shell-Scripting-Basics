# SingleQuotes, DoubleQuotes, BackTicks

This section covers how use of  SingleQuote (`''`), DoubleQuotes(`""`), BackTicks(`) differes in linux terminal.

**Basic Usage of Echo**

Basic usage of echo:

```sh
echo [option] [string]

options:
-e => enable interpretation of backslash escapes
-E => disable interpretation of backslash escapes (default)

# reference from man echo

       If -e is in effect, the following sequences are recognized:

       \\     backslash

       \a     alert (BEL)

       \b     backspace

       \c     produce no further output

       \e     escape

       \f     form feed

       \n     new line

       \r     carriage return

       \t     horizontal tab

       \v     vertical tab
```

```sh
# using tab
> echo -e 'ram\thari'
ram     hari


```

## 1. SingleQuotes(`''`)

When single quote is used:

-  No variables or literals are evaluated.
-  No command substitution are allowed

```sh
# variable is not expanded, and the output shows the literal string.
echo 'Hello, $USER!'
# Output:
Hello, $USER!


# Special characters are not interpreted
echo 'The date is $(date)'
# Output:
The date is $(date)

# escape sequence are not evaluated
echo '\"hi \"'
# Output
\"hi \"
```

## 2. DoubleQuotes(`""`)

Allows:
- Variable expansion inside double quotes `($variable)`

- Command substitution with `$(command)`

- Escape sequence are interpreted:

```sh
# Variable expansion inside double quotes
echo "$HOME"
# Output:
/home/user

# command substitution
echo "Date is: $(date)"
# Output:
Date is: Fri Dec  6 04:28:39 PM +0545 2024

# escape sequence are evaluated
echo "\"hi\""
# Output
"hi"
```

## BackTicks (`)

- Generally used for **command substitution.**

```sh
current_dir=`pwd`
echo "The current directory is: $current_dir"

echo $current_dir
# The current directory is: /home/user
```

**More Examples:**

```sh
#  Command Substitution in Another Command
# date command is executed inside the backticks, and its output (the current date and time) is used as part of the string printed by echo.
echo "Today’s date is: `date`"
```

> For better readability and nesting support, it's generally recommended to use `$(...)` instead of backticks. For example:

```sh
current_dir=$(pwd)
```

