//
//  ViewController.swift
//  iOS_Club
//
//  Created by RTC33 on 2018/8/14.
//  Copyright © 2018年 RTC33. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var type: UILabel!
    @IBOutlet weak var brand: UILabel!
    @IBOutlet weak var plate: UITextField!
    @IBOutlet weak var consume: UILabel!
    @IBOutlet weak var passengers: UILabel!
    @IBOutlet weak var goods: UILabel!
    @IBOutlet weak var stock: UILabel!
    @IBOutlet weak var miles: UILabel!
    @IBOutlet weak var slider: UISlider!
    
//    var cars = [Cars(brand:"Honda",plate:"AP-123"),
//                Cars(brand:"Toyota",plate:"GG-380"),
//                Cars(brand:"Mazda",plate:"NM-204"),
//        Cars(brand:"Ford",plate:"QQ-340"),
//        Cars(brand:"Lexus",plate:"RR-074"),]
    
    var choose = 0
    
    var cars: [Cars] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cars.append(Truck(brand:"Honda",plate:"AP-123"))
        cars.append(Rv(brand:"Toyota",plate:"GG-380"))
        cars.append(Truck(brand:"Mazda",plate:"NM-204"))
        cars.append(Rv(brand:"Ford",plate:"QQ-340"))
        cars.append(Truck(brand:"Lexus",plate:"RR-074"))
        
        // Do any additional setup after loading the view, typically from a nib.
        slider.minimumValue = 0
        slider.maximumValue = Float(cars.count - 1)
        refresh()
        self.hideKeyboardWhenTappedAround()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func refresh(){
        type.text = cars[choose].getType()
        brand.text = cars[choose].getBrand()
        plate.text = cars[choose].getPlate()
        consume.text = String(cars[choose].getConsume()!)
        passengers.text = String(cars[choose].getPassengers()!)
        goods.text = String(cars[choose].getGoods()!)
        stock.text = String(cars[choose].getStock()!)
        miles.text = String(cars[choose].getMiles()!)
    }
    
    @IBAction func changePlate(_ sender: Any) {
        cars[choose].setPlate(plate: plate.text!)
        refresh()
    }
    @IBAction func addPassenger(_ sender: Any) {
        cars[choose].addPassenger()
        refresh()
    }
    @IBAction func removePassenger(_ sender: Any) {
        cars[choose].removePassenger()
        refresh()
    }
    @IBAction func addGood(_ sender: Any) {
        cars[choose].addGoods()
        refresh()
    }
    @IBAction func removeGood(_ sender: Any) {
        cars[choose].removeGood()
        refresh()
    }
    @IBAction func drive(_ sender: Any) {
        cars[choose].drive()
        refresh()
    }
    @IBAction func refuel(_ sender: Any) {
        cars[choose].refuel()
        refresh()
    }
    @IBAction func selected(_ sender: Any) {
        slider.value = Float(Int(slider.value))
        choose = Int(slider.value)
        refresh()
    }
    
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
