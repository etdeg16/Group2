//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground!"
class Person {
    var name: String = "Ethan"
    var age: Int = 16
    /*init(str: String, num: Int) {
    name = str
    age = num
    }*/
}
var me = Person()
var you = Person()
me.age = 14
you = me
println(me.age)
println(you.age)