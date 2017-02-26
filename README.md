# Grainger-All-seer

##Intro
For library-goers, Grainger Library could be a great place. But finding an unoccupied seat could be a major challenge. That’s when I start to think: what if we could figure out whether empty seats are out there by merely opening an app?

##Our solutionThat is where neural network comes to our rescue. If we could find out which seats on a table are occupied given a photo of the table, we should be able to make sure which seats are taken in a hall given a photo of the hall. So we trained a neural network to do just that. 

##Work Flow
Whenever a new photo is uploaded to our server, our well-trained neural network will take a guess based on the parameters from intensive trainning. After that, anyone who refresh the app could see the newly-updated seat distribution.

##Results
We are running a relatively small sample of only 143. However, its in-sample correct rate could be as high as 99%, while that of out-of-sample data could be above 70%. That's surprising enough since if it simply takes a wild guess, the probability is one out of sixteen.

##Usages 
Deploy the server according to the myServer folder.

The .m scripts could be run in both matlab and octave. Its prototype comes from Stanford Machine Learning on Coursera.

Install the iOS App on your phone.