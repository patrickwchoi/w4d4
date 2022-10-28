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
        attr_accessor :towers
    def initialize(n)
        @towers = [[], [], [] ]
        arr = (1..n).to_a
        towers[0] = arr
    end

    def valid_start?(pos)
        towers[pos].length > 0
    end

    def valid_end?(size, pos)                              
        return true if towers[pos].length == 0 #[1, 2] [3, 4] []
        towers[pos][0] > size
    end

    #User inputs logic
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

    # 1. user choose the tower (in our case we'll shift the first elem)
    # 2. user pick end tower; we check if our shifted element is LESS then the first elem of the chosen tower
            # 1. if chosen number is less: we self.unshift(el)
            # 2. if chosen number is greater: we ask user to change the END_INPUT
        #3. if user choose the other tower and 

    def move
            until won?
                got_input = false
                while got_input != true
                    p towers
                    got_input = true
                    start_pos = self.get_start_input
                    end_pos = self.get_end_input
                    size = towers[start_pos][0]
                    if self.valid_start?(start_pos) && self.valid_end?(size, end_pos)
                        #add to tower
                        disk = towers[start_pos].shift
                        towers[end_pos].unshift(disk)
                    else
                        got_input = false
                        puts "Invalid positions"
                    end
                end
                
            end
            puts "Hey, you won the game"
        end
        
        
        def won?
            if towers[2].length == 3
                puts "The game is over"
            end
        end

end

# class Game
#     #Player.get_end_input is not valid => we ask user to reenter data
#     attr_accessor :board
#     def initialize(n)
#         @tower = Towers.new(n)
#     end



    
# end

