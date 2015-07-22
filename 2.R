starttime <- proc.time() #Save start time

#I initially implemented a simple brute force solution. 
#Afterwards I investigated the problem more and discovered the golden ratio algorithm implemented below
# fiblast<-1                        
# fib<-1
# count<-0
# while (fib < 4000000) {
#   if(fib %% 2 == 0)count=count+fib
#   temp=fib
#   fib=fib+fiblast
#   fiblast=temp
# }


#calculate the golden ratio which is the ~spacing of fib numbers ^3 for every third even number
phi3=((1+sqrt(5))/2)^3

#initialize at the first even fib number and the count
count=0
fib=2
while(fib<4000000){
  count=count+fib
  fib=round(fib*phi3)  #the next even fib number is to round the previous fib*phi^3 
}

print(count)

print(proc.time()-starttime) #Print run time
