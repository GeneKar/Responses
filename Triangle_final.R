######################Problem###########################################################################################################################
##If you break a straight line randomly in two places, what is the probability that you can form a triangle from the resulting three pieces?          ##
##Write a program that simulates 10,000 trails and output the program's results to display the number of successful events compared to overall tries. ##
########################################################################################################################################################

###############################################################################
##  Gene K 1/16/2013                                    				             ##	
###############################################################################

count<-0
triangles<-10000                # Set the number of possibilities that should be tested 
for (i in 1:triangles)
{
  tot<-runif(1,0,10000)             # Create the line
  cut1<-runif(1,0,tot)          # Make the longer cut inside of tot
  cut2<-runif(1,0,cut1)         # Make the shorter cut inside of cut1
  # to make this simple to follow, next we name 3 sections on the line tot, A B C
  # {-------------|---------------------|----------------------} <- length of tot
  #        A    cut2          B       cut1          C
  A<-cut2             
  B<-(cut1-cut2)
  C<-(tot-cut1)  
  #print(c('tot',tot))
  #print(c('A',A))
  #print(c('B',B))
  #print(c('C',C))
  #now we test to see if what was created is a viable triangle based on the 'Triangle Inequality Theorem'
  if     ((A+C>B) & (B+A>C) & (C+B>A) )
          {count<-(count+1)}                    # if this triangle is viable, we add one to our count
##print(c(count,'/',i))                         # uncomment to watch it count up
}
paste(count,'Total viable triangles created out of',i,'attempts')
paste('Percentage of viable triangles created out of samples',count*100/i,'%')
