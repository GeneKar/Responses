##########Problem#########################################
#For the numbers 1 through 100,                          #
#print out "Fizz" when the number is divisible by 3,     #
#"Buzz" when the number is divisible by 5,               #
#and "Fizzbuzz" when the number is divisible by 3 and 5. #
#Otherwise just print the number itself.                 #
##########################################################


###############################################################################
##This code finds and shows which numbers are divisible by 3,5 or both.      ##
##String build  method                                                       ##
##Gene K 1/16/2013                                      			               ##	
###############################################################################
print('starting fizzbuzz output ...')
dist<-100                      ## how far you would like to count
for (i in 1:100){              ##loop is started 
 output<- c(( if(i%%3==0)      ##test divisibility by 3
  {'fizz'}),                   ##outputs fizz if div/3
      (if(i%%5==0)             ##test divisibility by 5
      {('buzz')}      )        ##outputs buzz if div/3
              )
    if(length(output)==0) {    ##if not divisible by either 3 or 5
      cat(i,'\n',sep="")}      ##outputs current number
       else {
  
  cat(output,'\n',sep="")}     ##else outputs the generated string (3-fizz, 5-buzz, 15-fizzbuzz)
}