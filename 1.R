starttime <- proc.time() #Save start time

nums<-1:999                               #Generate vector 1-999
print(sum(which(nums%%3==0|nums%%5==0)))  #Sum matching entries with which

print(proc.time()-starttime) #Print run time