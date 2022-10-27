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
end