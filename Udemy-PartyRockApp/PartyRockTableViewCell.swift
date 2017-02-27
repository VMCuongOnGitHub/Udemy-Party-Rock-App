//
//  PartyRockTableViewCell.swift
//  Udemy-PartyRockApp
//
//  Created by Cuong on 2/27/17.
//  Copyright © 2017 Cuong. All rights reserved.
//

import UIKit

class PartyRockTableViewCell: UITableViewCell {

    @IBOutlet weak var coverImage: UIImageView!
    @IBOutlet weak var songNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(partyRock: PartyRock) {
        songNameLabel.text = partyRock.videoTitle
    }

}
