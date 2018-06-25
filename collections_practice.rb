# your code goes here
def begins_with_r(collection)
  return false if collection.length == 0
  all_r = []
  collection.each do |word|
    if word.chr == "r"
      all_r.push("true")
    else
      all_r.push("false")
    end
  end
  return false if all_r.include? "false"
  true
end



def contain_a(collection)
  collection.select do |word|
    word.include? ?a
  end
end


def first_wa(collection)
  collection.find do |word|
    word.slice(0, 2) == "wa"
  end
end

def remove_non_strings(collection)
  collection.select do |element|
    element.class == String
  end
end
    


def count_elements(collection)
  new_collection = []
  
  collection.each do |element|
    
    if new_collection.length == 0 
      new_collection.push({:name => element.name, :count => 1})
    else 
      i = 0
      while i < new_collection.length
        
        if new_collection[i][:name] == element[:name]
          new_collection[i][:count] += 1
          i += 1
        else
          new_collection.push({:name => element.name, :count => 1})
          i ++
        end
        
      end
    end
  new_collection
end










