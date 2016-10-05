//
//  VC_DetalleBebidas.swift
//  Bartender
//
//  Created by Gerardo on 10/4/16.
//  Copyright © 2016 Gerardo. All rights reserved.
//

import UIKit

class VC_DetalleBebidas: UIViewController {
    
    var infoDetalle:NSDictionary?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = self.infoDetalle?["name"] as? String

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        
        
        self.txtPreparacion!.text = self.infoDetalle?["directions"] as! String
        
        let ingredientes:NSArray = ((self.infoDetalle?["ingredients"]!.componentsSeparatedByString(",")))!
        
        let ingrendientesfinal = NSMutableString()
        
        for dato in ingredientes {
            ingrendientesfinal.appendString("*\(dato as! String)*\n")
        }
        
        self.Ingredientes!.text =  ingrendientesfinal as String
        
        self.imgbebida.image = UIImage(named: self.infoDetalle!["image"] as! String)
        
    }
    
    @IBOutlet weak var imgbebida: UIImageView!

    
    @IBOutlet weak var Ingredientes: UITextView!
    
    @IBOutlet weak var txtPreparacion: UITextView!
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
