##########Problem#########################################
#For the numbers 1 through 100,                          #
#print out "Fizz" when the number is divisible by 3,     #
#"Buzz" when the number is divisible by 5,               #
#and "Fizzbuzz" when the number is divisible by 3 and 5. #
#Otherwise just print the number itself.                 #
##########################################################


###############################################################################
##This code finds and shows which numbers are divisible by 3,5 or both.      ##
##Brute force method                                                         ##
##Gene K 1/16/2013                                    				               ##	
###############################################################################

print('starting fizzbuzz output ...')
dist<-100              ## how far you would like to count
for (i in 1:dist){       ##loop is started 
  val<-0                 ## set score value equal to zero
  if(i%%3==0 & i%%5==0){            ##test divisibility by 3 and 5
    cat('fizzbuzz','\n',sep="")}
  else if(i%%3==0)            ##test divisibility by 3
     {cat('fizz','\n',sep="")
     }          
  else if(i%%5==0)			       ##test divisibility by 5
    {cat('buzz','\n',sep="")
     }          
  else {
    cat(i,'\n',sep="")
  }
}


