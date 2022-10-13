

# FIRST QUESTION

//

Given the following table 'decimals':

** decimals table schema **

id
number1
number2
Return a table with one column (mod) which is the output of number1 modulus number2.

//

# RESULT


SELECT MOD(number1, number2) FROM decimals;

SELECT MOD(rental_id, amount) FROM payment AS Remainder;



# SECOND QUESTION

// Return a table with two columns (number1, number2), the value in number1 should be rounded down and the value in number2 should be rounded up. //


# RESULT

SELECT FLOOR(number1), CEILING(number2) FROM decimales;

SELECT FLOOR(345.499); # Output = 345
SELECT CEILING(345.499); # Output = 346


# THIRD QUESTION

// 

to hexYou have access to a table of monsters as follows:

monsters table schema
id
name
legs
arms
characteristics
Your task is to turn the numeric columns (arms, legs) into equivalent hexadecimal values.

output table schema
legs
arms

//

# RESULT

SELECT HEX(legs), HEX(arms) FROM monsters,








