//
//  step1.swift
//  CodeStarterCamp_Week3
//
//  Created by suyeon park on 2023/03/09.
//

import Foundation

class Person {
    
    var totalMoney: Int
    
    init (totalMoney: Int) {
        self.totalMoney = totalMoney
    }
    
    func order(_ coffee: Coffee..., of coffeeShop: CoffeeShop, by name: String) {
        if coffeeShop.canOrder(coffee) {
            if calculateMoney(spendMoney: coffeeShop.getTotalPrice(coffees: coffee)) {
                coffeeShop.make(coffee, for: name)
            }
        }
    }
    
    private func calculateMoney(spendMoney: Int) -> Bool {
        if totalMoney >= spendMoney {
            totalMoney = totalMoney - spendMoney
            return true
        } else {
            print("잔액이 \(spendMoney-totalMoney)원 만큼 부족합니다.")
            return false
        }
    }
}
