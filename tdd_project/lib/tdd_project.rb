class Array
    def my_uniq
        res = []
        self.each do |el|
           res << el if !res.include?(el) 
        end
        res
    end

    def two_sum
        res = []
        (0...self.length).each do |i|
            (i+1...self.length).each do |j|
                res << [i, j] if self[i] + self[j] == 0
            end
        end
        res
    end

    def my_transpose
        result = []
        (0...self.length).each do |i|
            new_row = []
            (0...self.length).each do |j|
                new_row << self[j][i]
            end
            result << new_row
        end
        result
    end

    def stock_picker
        result = 0
        result_arr = []
        (0...self.length).each do |i|
            (i+1...self.length).each do |j|
                if (self[j]-self[i]) > result
                    result = self[j]-self[i] 
                    result_arr = [i,j]
                end
            end
        end
        result_arr
    end

end


class Towers
    #instance var for array => an array of 3 arrays
    #@tower1 = [["-"], ["-", "-"], ["-", "-", "-"]]
        attr_accessor :towers
    def initialize(n)
        @towers = [[], [], [] ]
        arr = (1..n).to_a
        towers[0] = arr
    end

    def valid_start?(pos)

    end

    def valid_end?(size, pos)

    end
        # this will represent our tower 
        # ["-"] - length 1
        #["-", "-"] - length 2
        #["-", "-", "-"] length 3
end

class Player
    # 1 Step game start input = gets.chomp  choose the tower and we put hte first element in a tower of your choice [1,2,3] [ ] [ ]
    def get_start_input
        puts "Choose tower to pick first disk from"
        start_input = gets.chomp.to_i
        return start_input
    end

    def get_end_input
        puts "Choose tower to place disk on"
        end_input = gets.chomp.to_i
        return end_input
    end
end

class Game
    #Player.get_end_input is not valid => we ask user to reenter data
end

