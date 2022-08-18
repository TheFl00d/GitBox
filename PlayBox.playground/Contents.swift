import UIKit

var greeting = "Hello, playground"
/* 1. 2Sum problem.

Given an array of values and a sum, return the number of pairs available in that array that add to that sum, in linear time.


input array: [1, 2, 3, 4, 5]
input sum: 5

output: 2

reasoning: [1, 4] and [2, 3] are the only pairs with the sum 5


```*/
func twoSum(arr: [Int], sum: Int) -> Int {
  var dict: [Int: Int] = [:]
  var count = 0
  arr.forEach{
      let delta = sum - $0
      if let _ = dict[delta] {
          count += 1
      }
      dict[$0] = delta
  }
  return count
}

let val = twoSum(arr: [1,2,3,4,5], sum: 5)
print(val)

func greeting(name: String) -> String {
    return "Hello \(name)! The matrix has you."
}

print(greeting(name: "Neo"))

/*
 3: Questionnaire:
  
   What is the difference between var and let?
     Let is used to declare immutable constants of which values can not be changed after.
     Var is used to create mutable constants of which values can be change later
  
   What is an optional?
     An optional is swift is a container / variable that holds a value or a nill value.
     Often when an optional value is printed to the console it is wrapped be the optainl container like so: optional("Something")
   What is optional chaining vs optional binding?
    Optional Chaining:
  When we are calling any properties, methods and subscripts on optional values which may contain a nil value is called optional chaining. We won’t get any errors when we are querying optional value , we will get a nil value in return. We will use “?” for optional chaining.
  
 Optional Binding:
  Instead of force unwrapping an optional value , first we will check if there is any value inside the optional value then we will use it , this process is called optional binding. We can do this two ways by using if statement and guard statement.
  
   What are the different ways to unwrap an optional? How do they work? Are they safe?
     There are 6 ways in which to unwrap an optional:
  1.if-let :
 The “if let” allows us to unwrap optional values safely only when there is a value, and if not, the code block will not run.

 In the example the optional variable can only be used or printed within the if let scope as the variable (_name ) does not exit outside the if condition scope.
  
     2.guard-let:
 Guard let allows for a quick exit if optional variable is equal to nil. If variable value is not nil the code will continue on to execute.

     
     3.conditional binding
     4.force unwrapping

 Very simple but dangerous. If used and the value is nil this forced way of unwrapping optionals can crush your code.
     5.nil-coalescing:
 Nil-coalescing operator use for defines a default value where a more specific value is an optional type. In the following example, we let users set a specific string value for a cell's title, but we set it to default if they decided not to do that.
    
 Prints “default value ” when optional is nil
  
  6.behind the scenes
  
   What is a closure?
 Closures are self-contained blocks of functionality that can be passed around and used in your code
 .
   What is the difference between a class and a struct?
 Struct : a struct very similar to class. A struct has its own initialiser automatically. Structs are value type. Structs do not inherit
 Class :  a struct very similar to struct however you will have to create an initialiser for each value. Classes are reference type. Classes can inherit from other classes
 In Swift there are two categories of types: value types and reference types. A value type instance keeps a unique copy of its data, for example, a struct or an enum . A reference type, shares a single copy of its data, and the type is usually a class
  
   What is the syntax '??' do?
 ?? :  This operator is called nil coalescing operator. It is used to return first none nil value of the two swift variables. For example, for swift code let z = x ?? y , if x’s value is not nil then assign x’s value to z, otherwise it will assign y’s value to z.
  
  
   What is a tuple?
  
 In Swift, a tuple is a group of different values. And, each value inside a tuple can be of different data types.
 A tuple type is a comma-separated list of types, enclosed in parentheses. You can use a tuple type as the return type of a function to enable the function to return a single tuple containing multiple values.
  
  
   What is Any vs AnyObject?
 Any can represent an instance of any type at all, including function types. AnyObject can represent an instance of any class type

  
   What is a protocol?
 In iOS development, a protocol is a set of methods and properties that encapsulates a unit of functionality. The protocol doesn't actually contain any of the implementation for these things; it merely defines the required elements.
  

 What is an enum?
 In Swift, an enum (short for enumeration) is a user-defined data type that has a fixed set of related values.

 Enum raw data?
 As an alternative to associated values, enumeration cases can come prepopulated with default values (called raw values), which are all of the same type.


 Raw values can be strings, characters, or any of the integer or floating-point number types. Each raw value must be unique within its enumeration declaration.

 Assciated value Enum?
 You can define Swift enumerations to store associated values of any given type, and the value types can be different for each case of the enumeration if needed.
 Define an enumeration type called Barcode, which can take either a value of upc with an associated value of type (Int, Int, Int, Int), or a value of qrCode with an associated value of type String.

 Can properties be created within a protocal?
 Yes, A protocol can require any conforming type to provide an instance property or type property with a particular name and type.
 Property requirements are always declared as variable properties, prefixed with the var keyword. Gettable and settable properties are indicated by writing { get set } after their type declaration, and gettable properties are indicated by writing { get }.


 What is an Extensions

 Extensions add new functionality to an existing class, structure, enumeration, or protocol type.
 Extensions in Swift can:
 Add computed instance properties and computed type properties
 Define instance methods and type methods
 Provide new initializers
 Define subscripts
 Define and use new nested types
 Make an existing type conform to a protocol

 Can we create variables(properties) in extention?
 Extensions can add computed instance properties and computed type properties to existing types.

 */
