require 'tdd_project'
require 'rspec'

describe 'Array' do
    describe "#my_uniq" do 
        it "check for uniqueness" do
            expect([1, 2, 1, 3, 3].my_uniq).to eq([1,2,3])
        end
    end

    describe "#two_sum" do
        it "find indices of pairs that equal to 0" do
            expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
        end
    end

    describe "#my_transpose" do
        it "transpose original square matrix" do
            rows = [
                [0, 1, 2],
                [3, 4, 5],
                [6, 7, 8]
            ]
            cols = [
                [0, 3, 6],
                [1, 4, 7],
                [2, 5, 8]
              ]
            expect(rows.my_transpose).to eq(cols)
        end
    end

    describe "#stock_picker" do
        #arr = [80,90,50,110,40] ==> [2,3]
        #create anrray populated with 7 different prices as elements
        it "picks most profitable pair of days as indices" do
            stocks = [80,90,50,110,40] 
            expect(stocks.stock_picker).to eq([2,3])
        end
    end

end