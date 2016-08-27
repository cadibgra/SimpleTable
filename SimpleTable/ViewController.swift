//
//  ViewController.swift
//  SimpleTable
//
//  Created by Souvik Das on 27/08/16.
//  Copyright © 2016 Souvik Das. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var restaurantNames = [TableRow(description: "Cafe Deadend", imageName: "cafedeadend"), TableRow(description: "Homei", imageName: "homei"),
                           TableRow(description:"Teakha", imageName: "teakha"), TableRow(description:"Cafe Loisl", imageName: "cafeloisl"),
                           TableRow(description:"Petite Oyster", imageName: "petiteoyster"), TableRow(description: "For Kee Restaurant", imageName: "forkeerestaurant"), TableRow(description: "Po's Atelier", imageName: "posatelier"), TableRow(description:"Bourke Street Bakery",imageName: "bourkestreetbakery"), TableRow(description:"Haigh's Chocolate", imageName: "haighschocolate"), TableRow(description:"Palomino Espresso", imageName: "palominoespresso"), TableRow(description:"Upstate", imageName: "upstate"), TableRow(description:"Traif", imageName: "traif"), TableRow(description:"Graham Avenue Meats And Deli", imageName: "grahamavenuemeats"), TableRow(description:"Waffle & Wolf", imageName: "wafflewolf"), TableRow(description:"Five Leaves", imageName: "fiveleaves"), TableRow(description:"Cafe Lore", imageName: "cafelore"),TableRow(description: "Confessional", imageName: "confessional"), TableRow(description: "Barrafina", imageName: "barrafina"), TableRow(description: "Donostia", imageName: "donostia"), TableRow(description: "Royal Oak", imageName: "royaloak"), TableRow(description: "CASK Pub and Kitchen", imageName: "upstate")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //Return the number of rows in the section
        return restaurantNames.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath)
        
        //Configure the Cell ...
        let tableRow = restaurantNames[indexPath.row]
        
        cell.textLabel?.text = tableRow.description
        cell.imageView?.image = UIImage(named: tableRow.imageName)
        return cell;
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

}

