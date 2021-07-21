input_lines = readlines

room = input_lines[0].to_i
airconditioner = input_lines[1].to_i
air_flow = input_lines[2].to_i

tempreture_diff = (room - airconditioner).abs
require_time = 0

if tempreture_diff < 5
  require_time = 15
elsif tempreture_diff >= 5 && tempreture_diff < 10 then
  require_time = 30
elsif tempreture_diff >= 10 then
  require_time = 60
end

case air_flow
when 1 then
  require_time
when 2 then
  require_time = require_time - 5
when 3 then
  require_time = require_time - 10
else
  p "風量の値は1-3にしてください"
  exit
end
p require_time