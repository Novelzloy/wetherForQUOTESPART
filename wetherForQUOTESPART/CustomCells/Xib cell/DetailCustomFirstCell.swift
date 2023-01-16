//
//  DetailCustomFirstCell:.swift
//  wetherForQUOTESPART
//
//  Created by Роман Наумов on 26.12.2022.
//

import Foundation
import UIKit

class DetailCustomFirstCell: UICollectionViewCell {
    static let identifier = "detailCustomFirstCell"
    
    // MARK: - Setup labels
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var degreeLabel: UILabel!
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure() {
        imageView.image = UIImage(named: "rain")
        timeLabel.text = "10"
        degreeLabel.text = "8"
    }
}

