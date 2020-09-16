'Ryan's CashDrawer Program
'This program allows you to get the proper change for a customer while getting two inputs
'The cost of the item and the amount of money taken from the customer

'Variable for the amount of money recieved from the customer
cashIn = 0
'Variable for the cost of the items
itemCost = 0
'Variable for the amount of money to be returned to the customer
cashOut = 0
'Through lines 12-21 holds the Variables to the respected name of that variable
penny% = 0
nickel% = 0
dime% = 0
quarter% = 0
dollar% = 0
fiveDollars% = 0
tenDollars% = 0
twentyDollars% = 0
fiftyDollars% = 0
oneHundredDollars% = 0
'Allows you to loop the program
loopSwitch% = 0
'This is a flag allows you to go back to this point in the program
1
PRINT "Ryan's CashDrawer Program"
PRINT "Please input the cost of the items"
'Gets the cost of the item from the user
INPUT itemCost
PRINT "Item cost is: "; itemCost
PRINT "Please input the cash recieved from the customer"
'Gets the amount of cash from the customer
INPUT cashIn
PRINT "Cash Recieved from the customer is: "; cashIn
'Calculates the amount of money to be returned to the customer
cashOut = cashIn - itemCost
PRINT "Cash to be returned to the customer is: "; cashOut
'since you cant divide by the cents value you must shift everthing up into the ones place
cashOut = cashOut * 100
'For lines 42 through 90 this is the basic format
'IF cashreturned to the customer is greater then X(bill amount on each)
'Then take the cash out divide it by the bill value save it to an int.
'Then take the number of bills and multiply it by the bill value and
'Subtract that from the returned money to the customer
'This way it can count the number of bills you need. Remove the bills from the cash out then
'Check the next bill
'This is all done by each 4 lines of code then it will got to the next bill
'Untill line 90
IF cashOut >= 10000 THEN
    oneHundredDollars% = cashOut \ 10000
    cashOut = cashOut - oneHundredDollars% * 10000
END IF
IF cashOut >= 5000 THEN
    fiftyDollars% = cashOut \ 5000
    cashOut = cashOut - fiftyDollars% * 5000
END IF
IF cashOut >= 2000 THEN
    twentyDollars% = cashOut \ 2000
    cashOut = cashOut - twentyDollars% * 2000
END IF
IF cashOut >= 1000 THEN
    tenDollars% = cashOut \ 1000
    cashOut = cashOut - tenDollars% * 1000
END IF
IF cashOut >= 500 THEN
    fiveDollars% = cashOut \ 500
    cashOut = cashOut - fiveDollars% * 500
END IF
DO
    IF cashOut >= 100 THEN
        dollar% = dollar% + 1
        cashOut = cashOut - 100
    END IF
LOOP WHILE cashOut >= 100
IF cashOut >= 25 THEN
    quarter% = cashOut \ 25
    cashOut = cashOut - quarter% * 25
END IF
IF cashOut >= 10 THEN
    dime% = cashOut \ 10
    cashOut = cashOut - dime% * 10
END IF
IF cashOut >= 5 THEN
    nickel% = cashOut \ 5
    cashOut = cashOut - nickel% * 5
END IF
IF cashOut >= 1 THEN
    penny% = cashOut \ 1
    cashOut = cashOut - penny% * 1
END IF
'Prints out the number of each currency to give back to the customer
PRINT "Penny"; penny%
PRINT "Nickel"; nickel%
PRINT "Dimes"; dime%
PRINT "Quarters"; quarter%
PRINT "Dollars"; dollar%
PRINT "5 Dollar Bills"; fiveDollars%
PRINT "10 Dollar Bills"; tenDollars%
PRINT "20 Dollar Bills"; twentyDollars%
PRINT "50 Dollar Bills"; fiftyDollars%
PRINT "100 Dollar Bills"; oneHundredDollars%
PRINT "Would you like to continue this Program? 1=YES 2=NO"
'Gets the user input to see if they want to continue the program
INPUT loopSwitch%
'If they want to continue the program then
IF loopSwitch% = 1 THEN
    'Reset all the datafields
    cashIn = 0
    itemCost = 0
    cashOut = 0
    penny% = 0
    nickel% = 0
    dime% = 0
    quarter% = 0
    dollar% = 0
    fiveDollars% = 0
    tenDollars% = 0
    twentyDollars% = 0
    fiftyDollars% = 0
    oneHundredDollars% = 0
    loopSwitch% = 0
    'Clear the command line
    CLS
    'Go to the Flag 1
    GOTO 1
END IF
'Tells the program to end
END

