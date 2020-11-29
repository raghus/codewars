# https://www.codewars.com/kata/566be96bb3174e155300001b
# 6 kyu

def max_ball(v0)
  # height = v*t - 0.5*t*t
  # Max Height is when dh/dt = 0 ie when v - gt = 0 or when t = v/g (in seconds)
  # here v is in km/h so we have to multiply by it by 1000 and divide by 3600 to get m/s
  # also measurements are every 10th of a second vs continuous so the device might 'miss' the exact moment and get the 'nearest'
  # we multiply by 10 (since there are 10 measurements a second) and then round the result
  ((v0*1000)/(3600*9.81)*10).round
end