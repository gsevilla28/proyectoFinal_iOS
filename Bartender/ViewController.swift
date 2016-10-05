//
//  ViewController.swift
//  Bartender
//
//  Created by Gerardo on 10/3/16.
//  Copyright © 2016 Gerardo. All rights reserved.
//


/*
 
 
 */


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(animated: Bool) {
        
        self.lblBienvenido.font = UIFont(name: "Champagne&Limousines-Bold", size: 24.0)
        self.txtEmail.font = UIFont(name: "Champagne&Limousines", size: 17.0)
        self.txtPWD.font = UIFont(name: "Champagne&Limousines", size: 17.0)

    }
    // funcion para ocultar teclado dando un **tab en la pantalla
    @IBAction func tabOcultaTeclado(sender: AnyObject) {
        if self.txtEmail.isFirstResponder(){
            self.txtEmail.resignFirstResponder()
        }
        if self.txtPWD.isFirstResponder() {
            self.txtPWD.resignFirstResponder()
        }
    }

    @IBOutlet weak var txtEmail: UITextField!

    @IBOutlet weak var txtPWD: UITextField!
    
    @IBOutlet weak var lblBienvenido: UILabel!
    
    @IBAction func btnEntrar(sender: AnyObject) {
        
        if (self.txtEmail.text != ""){
            if (self.txtPWD.text != ""){
                performSegueWithIdentifier("SegueLogin", sender: nil)
            }
        }
        let ac:UIAlertController = UIAlertController(title: "Faltan Datos", message: "Ningun Campo debe estar vacio", preferredStyle: .Alert)
        
        let bac:UIAlertAction=UIAlertAction(title: "OK", style: .Default, handler: nil)
        ac.addAction(bac)
        
        self.presentViewController(ac, animated: true, completion: nil)
        
        
    }
    
    
    
}

