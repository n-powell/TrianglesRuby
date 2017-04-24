require('rspec')
require('triangle')

describe(Triangle) do
  describe("#equilateral?") do
    it("returns false if the triangle has 3 sides that are not equal length") do
    test_triangle = Triangle.new(15,15,20)
    expect(test_triangle.equilateral?()).to(eq(false))
    end

    it("returns true if the triangle has 3 sides that are an equal length") do
    test_triangle = Triangle.new(15,15,15)
    expect(test_triangle.equilateral?()).to(eq(true))
    end
  end

  describe("#isosceles?") do
    it('returns false if the triangle does not have two equal sides') do
      test_triangle = Triangle.new(10,11,12)
      expect(test_triangle.isosceles?()).to(eq(false))
    end

    it('returns true if the triangle does have two equal sides') do
      test_triangle = Triangle.new(10,10,12)
      expect(test_triangle.isosceles?()).to(eq(true))
    end
  end

  describe('#scalene?') do
    it('returns true if the triangle has no equal sides') do
      test_triangle = Triangle.new(5,6,7)
      expect(test_triangle.scalene?()).to(eq(true))
    end
  end


end
