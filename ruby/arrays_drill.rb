def build_array(a, b, c)
  return [a, b, c] #turns parameters to arrays.
end

def add_to_array(b, a)
  b << a  #store new string into the array base
end
empty_array = []
p empty_array
empty_array << "california" << "taiwan" << "thailand" << "korea" << "china"
# + [] was not able to add strings, << allowed us to
p empty_array
empty_array.delete("thailand")  #delete index two
p empty_array
empty_array.insert(2, "germany")  #insert new string to inex 2
p empty_array
empty_array.delete("california") #delete index 0
p empty_array
p ["california", "taiwan", "thailand", "korea", "china"].include? ("taiwan")  #ask string included or not (return true/false)
second_array = ["phone", "computer", "car"]
p second_array
combined_array = empty_array + second_array
p combined_array


p build_array("Hank", "Aaron", "two hours")
p add_to_array(["hi", "hello"], "hola")