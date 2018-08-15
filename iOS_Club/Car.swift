//
//  File.swift
//  iOS_Club
//
//  Created by RTC33 on 2018/8/14.
//  Copyright © 2018年 RTC33. All rights reserved.
//

import Foundation
class  Cars {
    internal var brand:String? //廠牌
    private var plate:String? //車牌
    internal var consume:Double? //耗油量
    internal var capcity:Double? //油箱大小
    internal var stock:Double? //油量
    private var miles:Double? //里程
    internal var passengers:Int? //乘客
    internal var goods:Int? //貨物
    
    internal var type:String? //型態
    
    public init(brand:String, plate:String){
        self.brand = brand
        self.plate = plate
        self.consume = 1
        self.capcity = 1
        self.stock = capcity
        self.miles = 0
        self.passengers = 0
        self.goods = 0
    }
    
   
    
    public func setPlate(plate:String){
        if plate.count == 6{
            self.plate = plate
        }
    }
    
    public func drive(){
        self.miles = miles! + (stock! * consume!)
        self.stock = 0
    }
    
    public func refuel(){
        self.stock = capcity
    }
    
    public func addPassenger(){
        self.passengers? += 1
    }
    
    public func removePassenger(){
        if self.passengers! > 0{
            passengers? -= 1
        }
    }
    
    public func addGoods(){
        self.goods? += 1
    }
    public func removeGood(){
        if self.goods! > 0{
            self.goods? -= 1
        }
    }
    
    public func getBrand() -> String?{
        return self.brand
    }
    public func getPlate() -> String?{
        return self.plate
    }
    public func getConsume() -> Double?{
        return self.consume
    }
    public func getCapcity() -> Double?{
        return self.capcity
    }
    public func getStock() -> Double?{
        return self.stock
    }
    public func getMiles() -> Double?{
        return self.miles
    }
    public func getPassengers() -> Int?{
        return self.passengers
    }
    public func getGoods() -> Int?{
        return self.goods
    }
    public func getType() -> String?{
        return self.type
    }
}
