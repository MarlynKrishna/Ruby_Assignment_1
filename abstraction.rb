class Abstraction
  
    public
  
    def publicMethod 
        puts "In Public mode!"
        privateMethod
    end

    private 
  
    def privateMethod 
        puts "In Private mode!"
    end
end
   
obj = Abstraction.new
obj.publicMethod

