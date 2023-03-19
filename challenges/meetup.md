P: Given a month, a year, a weekday, and a descriptor (second) relative to the weekday, return the date. 

E: 2nd Wednesday of May 2021 will return the 12th of May 2021

Rules:
  Teenth - 13-19 - seven days, each as a day of the week
  fifth occurance of the week, does not always happen

  descriptors:
  first
  second
  third
  forth
  fifth
  last
  teenth

A Meetup obj, is instantiated with a year, then a month

A day instance method, takes a 'day' and a 'descriptor' and returns the date.

D: Turn the integers for year, month into custom object representing that month. 

Alog:
Meetup class
instantiate with month/year
  method `wday` returns an indexed weekday, where 0 is sunday


day instance method - going to instantiate a Date.civil with year, month, day
  Data: descriptor. 
    downcase the input
    first = 1
    second = 2
  
  create a loop
    counter = 0 >> represents the occurance we are trying to match
    day = input_day
    counter += 1 when date being evaluated against wday are the same
      how do I drive the correct method based on the input?
      Hash, with key as word and value as number
        wday must return the hash[word]'s value to increment counter.
        {'sunday' => 0, }
