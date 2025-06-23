//
//  main.swift
//  learning-swift
//
//  Created by Navid Shokouhi on 25/4/2025.
//

print("Loop through a list of names")
forLoopNames()

print("Loop through a range of numbers")
forLoopRange()

print("Loop through a range of numbers with custom size")
forLoopRange(till: 3)

print("Loop through a range of numbers with custom size and stride")
forLoopStrideTo(to: 3)

print("Loop through a closed range of numbers with custom size and stride")
forLoopStrideThrough(through: 3)

print("Iterate over a dictionary")
iterDictionary()

print("Iterate over a custom collection")
let liftOff = customIterator(count: 10)
for i in liftOff {
    print(i)
}

print("Example using defer")
temporaryBonus()

print("Example using two defers")
multipleDefer()

print("Example using struct")
let person = Person(clothes: "suit")
let anotherPerson = Person(clothes: "shirt")
var personCopy = person

print(person.clothes)
print(anotherPerson.clothes)
print(personCopy)
personCopy.clothes = "tie"
print(personCopy)
print(person)
print(person.describeClothes())


print("Example using class")
var personClass = PersonClass(clothes: "socks")
print(personClass.clothes)
print(personClass.describeClothes())
let childClass = ChildClass(clothes: "socks", toy: "bike")
print(childClass.describeClothes())

print("Show properties of a class")
var childClass2 = ChildClass(clothes: "socks", toy: "bike")
print(childClass2.toy)
childClass2.toy = "teddy" // changing toy invokes willSet and oldSet
print(childClass2.toy)

print("Polymorphism example")
var child1 = ChildClass(clothes: "socks", toy: "bike")
var adult1 = PersonClass(clothes: "coat")

var collection = [child1, adult1]
print("The array can be created easily, because the types of the class (i.e., ChildClass) and it's parent (i.e., PersonClass) are compatible")
print(collection)
print("even though they are different types")
for item in collection {
    print(type(of: item))
}
print("and the type of the array is the type of the parent class (i.e., PersonClass):")
print(type(of: collection))


