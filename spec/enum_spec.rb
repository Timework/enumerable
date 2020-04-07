require './lib/enum'

describe "Enumerable" do

    describe "#my_each" do
        it "goes through all elements correctly" do
            answer = []
            test = [1, 2, 4, 8]
            test.my_each {|x| answer << x * 2}
            expect(answer).to eql([2, 4, 8, 16])
        end
    end

    describe "#my_select" do
        it "selects properly" do
            test = [1, 2, 4, 8]
            answer = []
            test.my_select {|x| answer << x if x > 5}
            expect(answer).to eql([8])
        end
    end

    describe "#my_each_with_index" do
        it "displays index" do
            test = [1, 2, 4, 8]
            answer = []
            test.my_each_with_index {|x, index| answer << index}
            expect(answer).to eql([0, 1, 2, 3])
        end
    end

    describe "#my_all?" do
        it "true works" do
            test = [1, 2, 4, 8]
            answer = test.my_all? {|x| x > 0}
            expect(answer).to eql(true)
        end

        it "false works" do
            test = [1, 2, 4, 8]
            answer = test.my_all? {|x| x < 8}
            expect(answer).to eql(false)
        end
    end

    describe "#my_any?" do
        it "true works" do
            test = [1, 2, 4, 8]
            answer = test.my_any? {|x| x > 7}
            expect(answer).to eql(true)
        end

        it "false works" do
            test = [1, 2, 4, 8]
            answer = test.my_any? {|x| x < 0}
            expect(answer).to eql(false)
        end
    end

    describe "#my_none?" do
        it "true works" do
            test = [1, 2, 4, 8]
            answer = test.my_none? {|x| x < 0}
            expect(answer).to eql(true)
        end

        it "false works" do
            test = [1, 2, 4, 8]
            answer = test.my_none? {|x| x > 7}
            expect(answer).to eql(false)
        end
    end




end