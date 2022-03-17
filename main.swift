//
//  main.swift
//  CodeWars
//
//  Created by Дмитрий on 14.03.2022.
//

import Foundation

func multiply(_ a: Double, _ b: Double) -> Double {
    return a / b
}

func evaluate(good: String, vsEvil evil: String) -> String {
    // "1 2 3 4 5".split(separator: " ") = ["1", "2", "3", "4", "5"]
    // ["1", "2", "3", "4", "5"].map { Int($0)!} = [1, 2, 3, 4, 5]
let goodArray = good.split(separator: " ").map { Int($0)!}
let goodWorth = [1, 2, 3, 3, 4, 10]
  
let evilArray = evil.split(separator: " ").map { Int($0)!}
let evilWorth = [1, 2, 2, 2, 3, 5, 10]
  
    // zip([1, 2, 3], [4, 5, 6]) = [[1,4], [2, 5], [3, 6]]
    // [[1,4], [2, 5], [3, 6]].map { $0 * $1 } = [[1 * 4], [2 * 5], [3 * 6]]
    // [[1 * 4], [2 * 5], [3 * 6]].reduce(0, +) = 4 + 10 + 18 = 32
let goodPower = zip(goodArray, goodWorth).map { $0 * $1 }.reduce(0, +)
let evilPower = zip(evilArray, evilWorth).map { $0 * $1 }.reduce(0, +)
  
  if goodPower > evilPower{
    return "Battle Result: Good triumphs over Evil"
  }
  
  if goodPower < evilPower{
    return "Battle Result: Evil eradicates all trace of Good"
  }
  else {return "Battle Result: No victor on this battle field"}
}

func find_short(_ str: String) -> Int
{
    // ["World", "Hi"].sorted{$0.count < $1.count} = ["Hi", "World"]
    // ["Hi", "World"][0].count = Hi.count = 2
  let strArray = str.split(separator: " ").sorted{$0.count < $1.count}[0].count;
  return strArray
  
}
