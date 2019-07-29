
# (*) block
  #-> use {} or do and end
    [1, 2 ,3, 4, 5].each { |num|
      puts num
    }

    [1, 2 ,3, 4, 5].each do |num|
      puts num
    end 

# (*) Core data types

  #-> The core data types in Ruby are -numbers -strings -symbols -arrays -hashes -and booleans.

  # * number

    num = 123/2
    puts num #61

    num = 123/2.0
    puts num #61.5 
    #unless a decimal is involved a calculation will always be interger

  # * string

    #-> there are couple of ways to declare string

    string1 = 'this is a string1'
    string2 = "this is a string2"
    string3 = %Q(this is a string3)
    string4 = String.new('this is a string4')

    puts string1, string2, string3, string4

    #-> multiline string
    multiline = '
    hello
    hey
    '
    puts multiline

    #-> string interpolation #{}
    interpolated = 'world'
    puts "interpollation => Hello #{interpolated}"

  # * Symbols

    #-> The major difference between strings and symbols is if declared 
    # multiple times, no matter where and how many times you declare them in your programs, a single symbol will always point to the same object.

    str1 = "I am a string"
    str2 = "I am a string"

    puts str1.object_id # prints 70229514771560
    puts str2.object_id # prints 70229518541680

    str1 = :"I am a string"
    str2 = :"i am a string"

    puts str1.object_id # prints 1151348
    puts str2.object_id # prints 1151348

  # * Arrays

    #-> can be declared using multiple ways
      arr1 = ["I", "am", 2, "array"] # results in ["I", "am", "an", "array"]
      arr2 = %W(I am an array) # results in ["I", "am", "an", "array"]
      arr3 = %w(I am an array) # results in ["I", "am", "an", "array"]

      puts arr1[0], arr1[2]
      puts arr2[1]

    #-> push and pop to add or remove an element at the end

      arr1.push('pushed element')
      print arr1

      arr1.pop
      print arr1

      puts 

  # * Hashes

    #-> You can think of hashes as special arrays where you can add the keys associated with values.

    #-> a key can be a string or a symbol

      # (#) for old ruby
      hsh1 = { :one => 1, :two => 2, :three => 3 } 
      hsh2 = { "one" => 1, "two" => 2, "three" => 3 } 

      # (#) new synthax
      hsh = { one: 1, two: 2, three: 3 } # results in {:one=>1, :two=>2, :three=>3}

  # * Booleans
      #-> can be TRUE, FALSE or NIL


# (*) Conditions

  #-> if and unless cases
    # * simple if
      income = 1200
      expense = 1000
      
      if expense > income
        puts "You need to reduce your expenses"
      end
    # * if elsif and else
      if income > 1200
        puts 'income greater than 1200'
      elsif income < 1200
        puts 'income less than 1200'
      else
        puts 'income maybe equal to 1200'  
      end
    # * if !somthing is equal to unless something

      unless income > 1200
        puts 'income is not greater than 1200'
      end
  
  #-> if and unless are often used on assignment
    progress = "positive" if income > expense
    progress = "negative" unless income > expense
  #-> case statement used to check multiple conditions 
    age = 18
    case age
      when 1..15
        puts "please just sleep"
      when 16
        puts "You realy need to grow up!"
      when 17
        puts "You are almost there!"
      when 18
        puts "Hooola you are a grown up!"
      else
        puts "marry someone now!"
    end
  #-> ternary condition a ? b : c
    income = 800
    puts (income > expense ? "progress positive" : "progress negative")
    
    # * However, in Ruby if statement has a then , if x then y else z end === x ? y : z
    progress = if income > expense then
      "The progress is #{income - expense}"
    else 
      "The value has decreased by #{income - expense}"
    end

    puts progress

# (*) Iterators

