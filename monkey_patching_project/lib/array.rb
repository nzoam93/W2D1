# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
        return nil if self.length == 0
        max = self.max
        min = self.min
        return max - min
    end

    def average
        return nil if self.length == 0
        return self.sum / (self.length*1.0) #make sure the 1.0 is in parentheses to make it a float
    end

    def median
        return nil if self.length == 0
        sortedArr = self.sort
        if self.length.odd?
            return sortedArr[sortedArr.length / 2] #.length / 2 gives the middle number
        else
            middleSum = sortedArr[(sortedArr.length / 2) - 1] + sortedArr[sortedArr.length / 2]
            return middleSum / 2.0 #takes the average of the two numbers in the middle
        end
    end

    def counts
        count = Hash.new(0)
        self.each {|ele| count[ele] += 1}
        return count
    end

    #part 2 of RSPEC
    def my_count(value)
        count = 0
        self.each {|ele| count += 1 if ele == value}
        return count
        # self.count(value) #cool!
    end

    def my_index(value)
        return nil if !self.include?(value) #if it doesn't include the value, return nil
        self.each.with_index {|ele, i| return i if ele == value}
        # return self.index(value)
    end

    def my_uniq #sweet!
        new_arr = []
        self.each {|ele| new_arr << ele if !new_arr.include?(ele)} #sweet way to describe what's happening and have it accepted as code
        return new_arr
        # return self.uniq
    end

    def my_transpose #awesome
        #goal is to get return a 2D array where each of the rows are actually the columns from before
        new_mat = []
        rows, cols = self.length, self[0].length
        (0...rows).each do |row| #iterate through all the rows of the original array
            new_row = [] #create a new row that will be empty at the beginning of each call
            (0...cols).each do |col| #iterate through all the cols of the original array
                new_row << self[col][row] #shovel in the information from each i,j. Now it's flipped so it grabs a col rather than a row!
            end
            new_mat << new_row #shovel each new_row (the previous col) into the new matrix I created
        end
        return new_mat
    end
end
