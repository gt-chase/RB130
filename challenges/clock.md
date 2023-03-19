P: Clock that is independant of date
Using the Clock#at method instantiates the clock object
You can instantiate with one integer in to represent an hour.
  instantiate with two integers to represent an hour and minutes
  If you add or subtract minutes, they instantiate a new clock object with the added/subtracted time. 

E: Clock.at(8).to_s == '08:00'
  Clock.at(11, 9).to_s == '11:09'


  Rules: 
  minutes and hours are always two digits (formatting)
    Minutes are 0-59
      If you go over 59, the hour increments and the minutes goes back to 0
      If you go below 0, the hour decrements and minutes goes to 59
    Hours are 0-23
      going over 23 goes to 0
      going below 0 goes to 23

Data: 
Class clock
at method

Integers, to_s string output, comparison with string
integer -> a formatting function -> string

adding/subtracting -> new clock object - integer change total with the proper changes.

integers with padded 0 if necessary
  If string length is 1 then '0' + string
  Regex? or just with length

Algo:

define clock class

define class method `at`
  takes one or two integers. 
    second integer defaults to 0 if none given

to_s method
  outputs a string "hour : min"
  prepend 0 where needed

+ method
  Instantiate a new clock object.
    first:
      min_split if given_num > 59. 
        min = given_num % 60
        hour = 3061/60
      new_min = additional min + min
        if new_min > 59
          new_hour +=1
          new_min -= min
          new clock with new_min and new_hour

          min = 10
          num = 30
          min - num = -20
          new_min = 60 + new_min
        else
          new clock with hour and new_min
        

        deal with 23 hour clock: tie to the adjusting minutes. 
          if the hour is > 23
          (start)22 + (num)4 = 26
          26 - 24 = 2

          if the hour is < 0
          3 - 5 = -2
          24 - 2 = 22 

Revisit the relationship between minutes and hours. How can I make something more durable? That is more or a 'rule'
75 min = 1 hour 15 min
1440 min = 24 hours 0 min which equal 1 hour and 0 min
  if > 23 then num - 23. 

Any hour < 0 needs to be converted
Any hour > 23 needs to be converted
Any min < 0 needs to be converted
Any min > 59 needs to be converted. 
  This must happen in two places. 
  The input, if the num is > 59 it should be converted to hours and minutes.
    And if hours is greater than 23, that is converted to days and hours and only hours is returned. 
    72 - ((72%23) * 24)
    hour given - ((divmo of given and 23) *24)

    When greater than 1440
      num%1440 = min left over
      then min_left_over/ 60 for hours to use
      min_left_over%60 for min to use

    





