//
//  Cell.swift
//  GameOfThrones
//
//  Created by Ibraheem rawlinson on 11/20/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {

    
    @IBOutlet weak var firstImgView: UIImageView!
    @IBOutlet weak var episodeLabel: UILabel!
    @IBOutlet weak var seasonNumAndEpisodeNum: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
