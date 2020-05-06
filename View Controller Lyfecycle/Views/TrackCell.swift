//
//  TrackCell.swift
//  View Controller Lyfecycle
//
//  Created by Алексей Пархоменко on 06.05.2020.
//  Copyright © 2020 Алексей Пархоменко. All rights reserved.
//

import UIKit
import SDWebImage

class TrackCell: UITableViewCell {
    
    static let reuseId = "TrackCell"
    
    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var trackName: UILabel!
    @IBOutlet weak var artistName: UILabel!
    @IBOutlet weak var collectionName: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
//        trackImageView.image = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func set(track: Track) {
        self.trackName.text = track.trackName
        self.artistName.text = track.artistName
        self.collectionName.text = track.collectionName
        
        guard let url = URL(string: track.artworkUrl60 ?? "") else { return }
        trackImageView.sd_setImage(with: url, completed: nil)
    }
    
}
