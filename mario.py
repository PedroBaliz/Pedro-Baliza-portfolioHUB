#import height
while True:
    height = int(input("Digit a number between 1 and 8: "))
    if 1 <= height <=8:
         break
#construction
for i in range (height):
     #spaces
    for s in range (height - i - 1):
      print(" ",end="")
     #print #
    for a in range (i + 1):
      print("#", end="")

    print()

      
  
