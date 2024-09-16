//
//  ViewController.swift
//  MickleCafe
//
//  Created by PETER MICKLE on 9/6/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var errorOutlet: UILabel!
    
    
    @IBOutlet weak var MenuOutlet: UILabel!
    
    
    @IBOutlet weak var cartOutlet: UILabel!
    
    
    @IBOutlet weak var costOutlet: UILabel!
    
    @IBOutlet weak var inputOutlet: UITextField!
    
    
    @IBOutlet weak var quantityOulet: UITextField!
    
    var totalCost = 0.0
    
    var menu : [String] = ["Coffee", "Pancakes", "Toast", "Scrambled eggs"]
    
    var prices : [Double] = [2.5, 7, 2, 5]
    
    var menuText : String = ""
    
    var cartText : String = ""
    
    var cart : [String:Int] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        errorOutlet.text = ""
        
        cartOutlet.text = ""

        for i in 0..<menu.count{
            menuText += menu[i] + "\nCost: " + String(prices[i]) + "\n"
        }
        MenuOutlet.text = menuText
        
    }

    
    @IBAction func addAction(_ sender: UIButton) {
        print("added nothing!")
        let quant = quantityOulet.text!
        let quantity = Int(quant) ?? 0
        var curItem = ""
        var itemFound = false
        var curCost = 0.0
        
        
        for i in 0..<menu.count{
            if menu[i] == inputOutlet.text {
                 curCost = prices[i]
                curItem = menu[i]
                itemFound = true
            }
        }

        for item in menu{
            if item == inputOutlet.text {
                 
                curItem = item
                itemFound = true
            }
        }
            if !itemFound{
                errorOutlet.text = "enter a valid menu item"
            }else{
                if quantity > 0{
                    
                    cartText += curItem + "\nQuantitiy : " + String(quantity) + "\n"
                    cartOutlet.text = cartText
                    totalCost += curCost * Double(quantity)
                    costOutlet.text = "Cart Cost: " + String(totalCost)
             print("added something")
                }else{
                    errorOutlet.text = "enter a positive number in quantity"
                }
            }
            }

        
       
    
    
    @IBAction func adminAction(_ sender: Any) {
        
        
        
    }
    
    
    

}

