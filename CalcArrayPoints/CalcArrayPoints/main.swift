//
//  main.swift
//  CalcArrayPoints
//
//  Created by Xinyue Chen on 10/12/17.
//  Copyright © 2017 Xinyue Chen. All rights reserved.
//

import Foundation

func add(valA:Int, valB:Int) -> Int {
    let value = valA + valB
    return value
}

func subtract(valA:Int, valB:Int) -> Int {
    let value = valA - valB
    return value
}

func multiply(valA:Int, valB:Int) -> Int {
    let value = valA * valB
    return value
}

func divide(valA:Int, valB:Int) -> Int {
    let value = valA / valB
    return value
}

func generic(op:String, valA:Int, valB:Int) -> Int {
    switch op {
    case "add": return add(valA: valA, valB: valB)
    case "subtract": return subtract(valA: valA, valB: valB)
    case "multiply": return multiply(valA: valA, valB: valB)
    case "divide": return divide(valA: valA, valB: valB)
    default:
        print("Unknown operation command - \(op)")
        return -1
    }
}

func addVariadic(values:Array<Int>) -> Int {
    var result:Int = 0
    
    for v in values {
        result += v
    }
    
    return result
}

func mulVariadic(values:Array<Int>) -> Int {
    var result:Int = 1
    
    for v in values {
        result *= v
    }
    
    return result
}

func countVariadic(values:Array<Int>) -> Int {
    var count = 0
    
    for _ in values {
        count += 1
    }
    
    return count
}

func avgVariadic(values:Array<Int>) -> Int {
    var count = 0
    var result = 0
    
    for v in values {
        count += 1
        result += v
    }
    
    return result / count
}

func generic2 (op:String, values:Int...) -> Int {
    switch op {
    case "add": return addVariadic(values: values)
    case "mul": return mulVariadic(values: values)
    case "count": return countVariadic(values: values)
    case "avg": return avgVariadic(values: values)
    default:
        print("Unknown operation command - \(op)")
        return -1
    }
}

func addTuples(point1:(x:Int, y:Int), point2:(x:Int, y:Int)) -> (Int, Int) {
    return (point1.x + point2.x, point1.y + point2.y)
}

func subTuples(point1:(x:Int, y:Int), point2:(x:Int, y:Int)) -> (Int, Int) {
    return (point1.x - point2.x, point1.y - point2.y)
}

func addDict(point1:Dictionary<String, Double>, point2:Dictionary<String, Double>) -> Dictionary<String, Double> {
    if point1["x"] != nil && point1["y"] != nil && point2["x"] != nil && point2["y"] != nil  {
        return ["x": point1["x"]! + point2["x"]!, "y": point1["y"]! + point2["y"]!]
    } else {
        print("At least one of the x/y coordinates is missing")
        return [:]
    }
}

func subDict(point1:Dictionary<String, Double>, point2:Dictionary<String, Double>) -> Dictionary<String, Double> {
    if point1["x"] != nil && point1["y"] != nil && point2["x"] != nil && point2["y"] != nil  {
        return ["x": point1["x"]! - point2["x"]!, "y": point1["y"]! - point2["y"]!]
    } else {
        print("At least one of the x/y coordinates is missing")
        return [:]
    }
}

func addDict(point1:Dictionary<String, Int>, point2:Dictionary<String, Int>) -> Dictionary<String, Int> {
    if point1["x"] != nil && point1["y"] != nil && point2["x"] != nil && point2["y"] != nil  {
        return ["x": point1["x"]! + point2["x"]!, "y": point1["y"]! + point2["y"]!]
    } else {
        print("At least one of the x/y coordinates is missing")
        return [:]
    }
}

func subDict(point1:Dictionary<String, Int>, point2:Dictionary<String, Int>) -> Dictionary<String, Int> {
    if point1["x"] != nil && point1["y"] != nil && point2["x"] != nil && point2["y"] != nil  {
        return ["x": point1["x"]! - point2["x"]!, "y": point1["y"]! - point2["y"]!]
    } else {
        print("At least one of the x/y coordinates is missing")
        return [:]
    }
}
