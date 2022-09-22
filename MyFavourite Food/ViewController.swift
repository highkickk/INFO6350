//
//  ViewController.swift
//  MyFavourite Food
//
//  Created by Lan on 9/22/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tblView: UITableView!
    
    let foods = ["Philly cheesesteak sandwich",
                 "Mint chocolate",
                 "Beef tougue",
                 "Brown sugar boba tea",
                 "Salmon sashimi",
                 "Seafood pancake",
                 "Beef short ribs",
                 "Pistachio gelato"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = foods[indexPath.row]
        return cell
    }

}

