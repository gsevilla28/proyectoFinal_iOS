//
//  TableViewControllerListaBebidas.swift
//  Bartender
//
//  Created by Gerardo on 10/4/16.
//  Copyright © 2016 Gerardo. All rights reserved.
//

import UIKit

class TableViewControllerListaBebidas: UITableViewController {
    
    var lasBebidas : NSArray?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let ruta = NSBundle.mainBundle().pathForResource("Drinks", ofType: "plist")
        self.lasBebidas = NSArray(contentsOfFile: ruta!)
        self.navigationItem.title = "Bebidas"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.lasBebidas!.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        let dictionaryInfo = self.lasBebidas![indexPath.row] as! NSDictionary
        cell.textLabel?.text = (dictionaryInfo["name"] as! String)
        cell.textLabel?.font = UIFont(name: "Champagne&Limousines-Bold", size: 17.0)
        

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       
        let destino = segue.destinationViewController as! VC_DetalleBebidas
        
        let indexPath = self.tableView.indexPathForSelectedRow
        
        let dictionaryInfo = self.lasBebidas![indexPath!.row] as! NSDictionary
        
        destino.infoDetalle = dictionaryInfo
        //infodetalle es una variable que se encuentra en el controlador de destino
    }
    

}
