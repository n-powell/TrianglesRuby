require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:index)
end

get ('/results') do
  @side1 = params.fetch('side1').to_i
  @side2 = params.fetch('side2').to_i
  @side3 = params.fetch('side3').to_i
  babyAngle = Triangle.new(@side1,@side2,@side3)
  @not_a_triangle = babyAngle.not_a_triangle?
  @equilateral = babyAngle.equilateral?
  @isosceles = babyAngle.isosceles?
  @scalene = babyAngle.scalene?
  erb(:result)
end
