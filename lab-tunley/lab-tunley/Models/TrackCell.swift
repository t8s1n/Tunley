//
//  TrackCell.swift
//  lab-tunley
//
//  Created by Jesse Oseafiana on 2/28/23.
//

import UIKit
import Nuke

class TrackCell: UITableViewCell {

    // Outlets from each label and image view in the story board
    
    @IBOutlet weak var trackNameLabel: UILabel!
    
    @IBOutlet weak var artistNameLabel: UILabel!
    
    @IBOutlet weak var trackImageView: UIImageView!
    
    
    // Configures the cell's UI for the given track.
    
    func configure(with track: Track) {
        trackNameLabel.text = track.trackName
        artistNameLabel.text = track.artistName

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: track.artworkUrl100, into: trackImageView)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
    }
    

}
