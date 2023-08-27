# 3.1_BHAKTI_META

This contract -  "RequireAssertRevert" demonstrates vthe implementation of require(), assert() and revert() functions.

require() , assert() and revert() statements-

1) require: 
The require function is used to validate conditions before executing further code. If the condition is not met, the function call reverts, and any changes are reverted. In the contract, require is used in the decrement function to prevent decrementing the counter if it's already at zero.

2) assert: 
The assert function is used to ensure internal consistency of the contract's state. If an assertion fails, it indicates a bug in the contract code itself rather than external factors. In the contract, assert is used in the Even and Odd functions to ensure the counter value is not negative.

3) revert: 
The revert function is used to revert the current transaction and provide an error message. It is often used to handle exceptional cases or unsupported operations. In the contract, the unsupportedOperation function demonstrates how revert can be used to explicitly reject unsupported actions.


FUNCTIONS-

1) increment()-
Increases the counter value by 1.

2) decrement()-
Decreases the counter value by 1, but only if the counter is greater than 0.
Uses require to check the condition before modifying the counter.

3) Even()-
Checks if the counter value is even (divisible by 2).
Uses assert to ensure that the counter is not negative before performing the check.

4) Odd()-
Checks if the counter value is odd (not divisible by 2).
Also uses assert to validate the counter's non-negativity before performing the check.

5) getCount()-
Returns the current value of the counter.

6) unsupportedOperation()-
Demonstrates the use of revert by immediately reverting the transaction with an error message.
