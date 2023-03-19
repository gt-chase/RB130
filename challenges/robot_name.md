Problem: 
Write a program that manages robot factory settings.

When robots come off the factory floor, they have no name. The first time you boot them up, a random name is generated, such as RX837 or BC811.

Every once in a while, we need to reset a robot to its factory settings, which means that their name gets wiped. The next time you ask, it will respond with a new random name.

The names must be random; they should not follow a predictable sequence. Random names means there is a risk of collisions. Your solution should not allow the use of the same name twice.

Example
class Robot can instantiate a new Robot object
Must call `name` to generate a random name
`reset` wipes the name and robot.name needs to be called again. 
*note that `name` is kind of a hidden setter method. Do I need to guard against calling it without reset? Yes* If a name is not nil, than return the name. If the name is nil, set the name. So custom getter and setter, encapsulated. 'generate_name' and `get_name`

Guard against generating the same name twice.
  Does this have to be 'ever' or for a given Robot.
  I'll start with a given Robot... think about this some more. 

Equality of names `==` method. 