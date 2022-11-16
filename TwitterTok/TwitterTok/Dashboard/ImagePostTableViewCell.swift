//
//  ImagePostTableViewCell.swift
//  TwitterTok
//
//  Created by Lan on 11/15/22.
//

import UIKit

class ImagePostTableViewCell: UITableViewCell {

    
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var caption: UILabel!
    
    
    @IBOutlet weak var location: UILabel!
    
    
    @IBOutlet weak var dateTime: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
