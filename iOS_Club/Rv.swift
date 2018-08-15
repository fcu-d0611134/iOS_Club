//
//  Rv.swift
//  iOS_Club
//
//  Created by RTC33 on 2018/8/15.
//  Copyright © 2018年 RTC33. All rights reserved.
//

import Foundation

class Rv: Cars {
    override init(brand: String, plate: String) {
        super .init(brand: brand, plate: plate)
        self.type = "休旅車"
        self.capcity = 50
        self.stock = self.capcity
        self.consume = 10
    }
    override func addPassenger() {
        if passengers! < 6{
            passengers? += 1
        }
    }
    override func addGoods() {
        if super.getGoods()! < 3{ //沒有權限時的寫法
            super.addGoods()
        }
    }
}

