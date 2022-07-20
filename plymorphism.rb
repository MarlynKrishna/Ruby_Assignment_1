class College
    def enters
      puts "A student enters"
    end
    
    def type(student)
      student.type
    end
    
    def course(student)
      student.course
    end
  end
  
  class Ug
    def type
      puts "student is a under graduate student"
    end
    
    def course
      puts "BCA student"
    end
  end
  
  class Pg
    def type
      puts "student is a post graduate student"
    end
    
    def course
      puts "MCA student"
    end
  end
  
  college = College.new
  puts "This student is Under graduate"
  stu = Ug.new
  college.type(stu)
  college.course(stu)
  
  puts "This student is Post graduate"
  stu = Pg.new
  college.type(stu)
  college.course(stu)