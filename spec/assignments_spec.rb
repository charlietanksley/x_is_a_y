require_relative '../assignments'

describe Assignments do
  describe "assigns an y to each x" do
    it 'when given an even number on each side' do
      x = ['x', 'x', 'x']
      y = ['is a y', 'is a y', 'is a y']
      assignment = Assignments.new(x: x, y: y)
      expect(assignment.set).to eq(['x is a y', 'x is a y', 'x is a y'])
    end

    it 'when given more xs than ys' do
      x = ['x', 'x', 'x']
      y = ['is a y', 'is a y']
      assignment = Assignments.new(x: x, y: y)
      expect(assignment.set).to eq(['x is a y', 'x is a y', 'x is a y'])
    end

    it 'when given more ys than xs' do
      x = ['x', 'x']
      y = ['is a y', 'is a y', 'is a y']
      assignment = Assignments.new(x: x, y: y)
      expect(assignment.set).to eq(['x is a y', 'x is a y'])
    end
  end
end
