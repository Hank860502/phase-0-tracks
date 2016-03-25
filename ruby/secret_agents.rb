#for each index of a string in a variables
#calculate the next letter for the string value
#store the result in the current index
#return updated string

def encrypt(var)
   store = ''
   len = var.length
   count = 0 
   full = "abcdefghijklmnopqrstuvwxyz"
   while count < len
       if var[count].next == "aa" 
           store << "a"
       else
           store << var[count].next
       end    
       #store << full[full.index(var[count])+1]
       count += 1

   end
   puts store
end

#print encrypt('theduckfliesatmidnight')

#for each index of a string in a variables
#calculate the previous letter for the string value
#store the result in the current index
#return updated string

def decrypt(var)
   store = ''
   len = var.length
   count = 0
   full = "abcdefghijklmnopqrstuvwxyz"
   while count < len
       #index = count
       #store << (var[index].ord-1).chr
       store << full[full.index(var[count])-1]
       count += 1
   end
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