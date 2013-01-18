######################Problem###########################################################################################################################
##If you break a straight line randomly in two places, what is the probability that you can form a triangle from the resulting three pieces?          ##
##Write a program that simulates 10,000 trails and output the program's results to display the number of successful events compared to overall tries. ##
########################################################################################################################################################

###############################################################################
##  Gene K 1/16/2013                                      			             ##	
###############################################################################

count<-0                        # Set the start number of already created viable triangles
triangles<-10000                # Set the number of possibilities that should be tested 
for (i in 1:triangles)          # start the for loop
{
  tot<-runif(1,0,1)             # Create the line
  cut1<-runif(1,0,tot)          # First cut
  cut2<-runif(1,0,tot)          # Second cut 
  # to make this simple to follow, next we name 3 sections on the line tot, A B C
  # {-------------|---------------------|----------------------} <- length of tot
  #        A    cut%          B       cut%          C
 if(cut1>=cut2)     #Cut 1 is on the right 
 { A<-cut2             
   B<-(cut1-cut2)
   C<-(tot-cut1)  }
  else if (cut1<cut2){  #Cut 2 is on the right 
    A<-cut1             
    B<-(cut2-cut1)
    C<-(tot-cut2)}

  #print(c('tot',tot))
  #print(c('A',A))
  #print(c('B',B))
  #print(c('C',C))
  #----------------------------------------------------------------------
  #now we test to see if what was created is a viable triangle based on the 'Triangle Inequality Theorem'
  if     ((A+C>B) & (B+A>C) & (C+B>A) )
  {count<-(count+1)}                    # if this triangle is viable, we add one to our count
  ##print(c(count,'/',i))                         # uncomment to watch it count up
}
##Print the output
paste(count,'Total viable triangles created out of',i,'attempts')
paste('Percentage of viable triangles created out of samples',count*100/i,'%')
