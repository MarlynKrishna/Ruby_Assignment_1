
class Dictionary
    def dict
        @dict = Hash.new
        @dict = {
        "Meticulous" => " Showing great attention to detail; very careful and precise.",
        "Anointed" => "Bodies were anointed after death for burial.",
        "Philosophical" => "Relating or devoted to the study of the fundamental nature of knowledge, reality.",
        "Java" => "java is high level, class based, object oriented programming language.",
        "Organization" => "A group of people who from a business, club,etc together in order to achieve a particular aim.",
        "Savior" => "a person who rescues you from harm or danger.",
        }
        puts @dict.sort
        def search(word)
            if @dict.key?(word)==true
                a=@dict.fetch(word)
                puts " Meaning of word is #{a}"
                puts "\n\n"
            else
                puts "Sorry word is not found in the dictionary \n\n"
            end
        end

        def add(word,meaning)
        @dict[word]=meaning
        puts "\n"
        puts @dict.sort
        puts "\n\n"
        end

        def update(word, meaning)
            if @dict.key?(word)==true
                @dict[word]=meaning
                puts "Word is updated in the dictionary "
                puts @dict.sort
                puts "\n\n"
            else
                puts "Sorry word is not found in the dictionary \n\n"
            end
        end

        def del(word)
            if @dict.key?(word)==true
                @dict.delete(word)
                puts "Deleted the word from the dictionary"
                puts @dict.sort
            else
                puts "Sorry word is not found in the dictionary"
            end
        end

    x=0
        while x!=6
            puts "Choose from the Dictionary list"
            puts "1. View the content of dictionary"
            puts "2. Search for a word"
            puts "3. Add a word "
            puts "4. Update a word"
            puts "5. Delete a word"
            puts "6. Exit"
            x=gets.to_i
            case x
                when 1
                    puts @dict.sort
                when 2
                    puts "Search a word"
                    word=gets.strip
                    search(word)
                when 3
                    puts "Enter the word to be added"
                    word=gets.strip
                    puts "Enter the meaning of the word #{word}"
                    meaning=gets.strip
                    add(word,meaning)
                when 4
                    puts "Enter the update word"
                    word=gets.strip
                    puts "Enter the updated meaning of a word #{word}"
                    updated_meaning=gets.strip
                    update(word,meaning)
                when 5
                    puts "Enter the word to be deleted from the dictionary"
                    word = gets.strip
                    del(word)
                when 6
                    puts " thank you!, I hope u knew some new words"
                else
                puts " Enter a valid value "
            end
        end
        puts x
    end
end

obj=Dictionary.new
obj.dict
