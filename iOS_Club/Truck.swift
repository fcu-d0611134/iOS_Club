//
//  Truck.swift
//  iOS_Club
//
//  Created by RTC33 on 2018/8/15.
//  Copyright © 2018年 RTC33. All rights reserved.
//

import Foundation

class Truck: Cars {
    override init(brand: String, plate: String) { 
        super .init(brand: brand, plate: plate) //變數標籤：變數名稱
        self.type = "貨車"
        self.capcity = 100
        self.stock = self.capcity
        self.consume = 30
    }
    override func addPassenger() {
        if passengers! < 3{
            passengers? += 1
        }
    }
    override func addGoods() {
        if super.getGoods()! < 10{ //沒有權限時的寫法
            super.addGoods()
        }
    }
}
