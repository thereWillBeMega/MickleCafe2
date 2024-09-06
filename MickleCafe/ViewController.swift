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
    
    
    @IBOutlet weak var inputOutlet: UITextField!
    
    
    @IBOutlet weak var quantityOulet: UITextField!
    

    
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
        var quant = quantityOulet.text!
        var quantity = Int(quant) ?? 0
        var curItem = ""
        var itemFound = false
        
        for item in menu{
            if item == inputOutlet.text {
                curItem = item
                itemFound = true
            }
        }
            if !itemFound{
                errorOutlet.text = "enter a valid menu item"
            }

        
        if quantity > 0{
            
            cartText += curItem + "\nQuantitiy :" + String(quantity)
            
        }else{
            errorOutlet.text = "enter a positive number in quantity"
        }
    }
    
    
    @IBAction func adminAction(_ sender: Any) {
        
        
        
    }
    
    
    

}

