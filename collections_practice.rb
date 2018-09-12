# your code goes here
require 'pry'
def begins_with_r(arr)
  begins_r = true
  arr.each do |tool|
    if tool.chars[0] != 'r'
      begins_r = false
    end
  end
  begins_r
end
def contain_a(arr)
  arr.select do |element| element.include?("a")
  end
end  
def first_wa(arr)
  arr.find do |element| element.to_s.start_with?("wa")
  end
end
def remove_non_strings(arr)
  arr.delete_if{|element| !element.instance_of?(String)}
end
def count_elements(arr)
  counting_arr = []
  arr.each do |element|
    if counting_arr.size == 0 
      counting_arr[0] = {:count => 1, :name => element[:name]}
    else
      counting_arr.each do |counting_element|
        if element[:name] == counting_element[:name]
          counting_element[:count] = counting_element[:count].to_i + 1
        else
          counting_arr << {:count => 0, :name => element[:name]}
        end
      end
    end
  end
  counting_arr
end

def merge_data(s_keys,data)
  merged_data = []
  s_keys.each do |key_data|
    data.each do |name, info|
      name.keys.each do |name_keys|
        if name_keys == key_data[:first_name]
          merged_data << name
        end
      end
    end
  end
  merged_data
end

def find_cool(hashes)
  cool_hashes = []
  hashes.each do |hash|
    if hash[:temperature] == "cool"
      cool_hashes << hash
    end
  end
  cool_hashes
end

def organize_schools(orig_schools)
  organized_school = {}
  orig_schools.each do |school|
    if organized_school[school[1][:location]] == nil
      organized_school[school[1][:location]] = [school[0]]
    else
      organized_school[school[1][:location]] << school[0]
    end
  end
  organized_school
end
