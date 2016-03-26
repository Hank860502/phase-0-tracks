#for each index of a string in a variables
#calculate the next letter for the string value
#store the result in the current index
#return updated string

def encrypt(var)  #var=random string.
   store = ''
   len = var.length   #prepare for line 10
   count = 0  #represent the first word in a string, just like index.
   while count < len  #loop through each character at a time until every words have been looped.
       if var[count].next == "aa"  
           store << "a"    #Normally the word after a is aa, but I want only a.
       else
           store << var[count].next   #first time looping through will be var[0].next 
       end                            #and second time looping through become var[1].next etc.
       #store << full[full.index(var[count])+1]
       count += 1   #go on to the next index.

   end
   puts store
end

#print encrypt('theduckfliesatmidnight')

#for each index of a string in a variables
#calculate the previous letter for the string value
#store the result in the current index
#return updated string

def decrypt(var)   #var=random string.
   store = ''
   len = var.length   #prepare for line 35
   count = 0           #represent the first word in a string, just like index.
   full = "abcdefghijklmnopqrstuvwxyz"  #prepare for line 38, so the code knows the previous word of a word. For example: b-1=a
   while count < len
       #index = count
       #store << (var[index].ord-1).chr
       store << full[full.index(var[count])-1]    #var(0) return the inex 0 word in a string. So return string. WHY WE DON'T NEED "" OUTSIDE STRING?
       count += 1                                 #full.index(var[count]) finds string index in full. So return an index(number).
   end                                            #full[full.index(var[count])-1]  minus 1 index to the index that is found in previous step.
   puts store
end
#print decrypt('uifevdlgmjftbunjeojhiu')

#To use this function make all letters lower case and do not include any special characters
#print decrypt(encrypt("theduckfliesatmidnight"))


#Prompt user to see if they want to encrypt or decrypt
#store answer in variable
#Ask for password and store in variable
#Uses password variable to run the correct chosen function
#prints result to screen
#exits program

def prompt ()
puts "Do you want to encrypt or decrypt(e/d)"
method = gets.chomp
puts "Enter Password as a string"
pass = gets.chomp
    if method == "e"
        puts encrypt(pass)
    else 
        puts decrypt(pass)    
    end 
end

puts prompt


#pair with genius Dmitry
#line 38 question of why don't we need "" for string