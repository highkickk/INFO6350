//
//  ViewController.swift
//  Tourist App
//
//  Created by Lan on 9/29/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let TouristPlacesNames = ["Dubrovnik", "Kayangan", "London", "TajMahal", "GreatWall"]
    
    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TouristPlacesNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let cell = Bundle.main.loadNibNamed("TouristCell", owner: self)?.first as! TouristCell
        
        cell.imgTourist.image = UIImage(named: TouristPlacesNames[indexPath.row])
        cell.lblTourist.text = TouristPlacesNames[indexPath.row]
        
        return cell
    }
}

