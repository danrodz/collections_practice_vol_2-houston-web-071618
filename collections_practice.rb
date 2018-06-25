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
   new_collection.push({:name => element[:name], :count => 1})
  end
  
  new_collection.sort! do |x,y| 
    y[:name] <=> x[:name] 
  end
  
  i = 0
  while i < new_collection.length - 2
    if new_collection[i][:name] == new_collection[i + 1][:name]
      new_collection[i][:count] += 1 
      new_collection.delete_at(i + 1)
    end
    i += 1
  end
  
  new_collection    
end

def merge_data(collection1, collection2)
  new_collection = []
  collection1.each do |name|
    new_collection.push(name)
  end
  
  collection2.each do |obj|
    flatten_obj = obj.flatten
    new_collection.each.with_index do |new_obj, index|
      if new_obj[:first_name] == flatten_obj[0]
        new_collection[index].merge!(flatten_obj.response)
      end
    end
  end
end