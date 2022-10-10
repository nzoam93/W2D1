class Array #these monkey patches are like using what we know as building blocks to create more things and functionality (should be used in a good way!)
    def average
        sum = self.sum
        length = self.length
        average = self.sum / self.length
        return average
    end
end

class Bootcamp
    def initialize(name,slogan,student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = [] #you can create an instance variable even if it's not taken in as an argument
        @students = []
        @grades = Hash.new {|hash, k| hash[k] = []} #hash where each key will be a student and the value will be an array of their grades
    end

    def name
        @name
    end

    def slogan
        @slogan
    end

    def teachers
        @teachers
    end

    def students
        @students
    end

    def hire(teacher)
        @teachers << teacher
    end

    def enroll(student)
        if @students.length < @student_capacity
            students << student
            return true
        else
            return false
        end
    end

    def enrolled?(student)
        return @students.include?(student)
    end

    #part 2 of RSPEC
    def student_to_teacher_ratio
        return @students.length / @teachers.length #automatically rounds down
    end

    def add_grade(student, grade) #nice. This is cool to see how it's done! Coding ftw
        if enrolled?(student)
            @grades[student] << grade #shovel a grade into the hash
            return true
        else
            return false
        end
    end

    def num_grades(student)
        return @grades[student].length
    end

    def average_grade(student)
        return nil if !enrolled?(student) #if they are not enrolled
        return nil if num_grades(student) == 0 #if they have no grades
        return @grades[student].average #uses the class Array average I made up top. Sweet!
    end
end
