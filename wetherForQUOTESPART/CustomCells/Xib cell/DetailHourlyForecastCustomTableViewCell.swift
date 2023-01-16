//
//  DetailHourlyForecastCustomTableViewCell.swift
//  wetherForQUOTESPART
//
//  Created by Роман Наумов on 11.01.2023.
//  Посмотри что такое composition layout - это по поводу коллекций, floating header collection view в Гугле тоже посмотри, это о хиддере

import UIKit

class DetailHourlyForecastCustomTableViewCell: UITableViewCell {
    static let identifier = "detailHourlyForecastCustomCollectionViewCell"
    
    @IBOutlet var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(
            DetailCustomFirstCell.nib(),
            forCellWithReuseIdentifier: DetailCustomFirstCell.identifier
        )
        collectionView.reloadData()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension DetailHourlyForecastCustomTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DetailCustomFirstCell.identifier, for: indexPath) as! DetailCustomFirstCell
//        cell.degreeLabel.text = "10"
//        cell.timeLabel.text  = "8"
//        cell.imageView.image = UIImage(named: "rain")
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 31, height: 112.5)
    }
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
}
