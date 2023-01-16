//
//  CustomTableViewCell.swift
//  wetherForQUOTESPART
//
//  Created by Роман on 19.12.2022.
//

import Foundation
import UIKit

class CustomTableViewCell: UITableViewCell {
    
    static let identifier  = "customCell"
    
    private lazy var timeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        label.textColor = .white
        label.font = UIFont(name: "SFProDisplay-Regular", size: 15)
        label.text = "19:55"
        return label
    }()
    
    private lazy var cityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        label.textColor = .white
        label.font = UIFont(name: "SFProDisplay-Medium", size: 25)
        label.text = "Moscow"
        return label
    }()
    
    private lazy var imageWeather: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "rain")
        return image
    }()
    
    private lazy var temperatureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 1
        label.textColor = .white
        label.font = UIFont(name: "SFProDisplay-Thin", size: 50)
        label.text = "20C°"
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupConstraintCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CustomTableViewCell {
    private func setupConstraintCell() {
        contentView.addSubview(timeLabel)
        contentView.addSubview(cityLabel)
        contentView.addSubview(imageWeather)
        contentView.addSubview(temperatureLabel)
        
        NSLayoutConstraint.activate([
            timeLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            timeLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            
            cityLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            cityLabel.topAnchor.constraint(equalTo: timeLabel.bottomAnchor, constant: 3),
            cityLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
            
            temperatureLabel.leadingAnchor.constraint(equalTo: cityLabel.trailingAnchor, constant: 150),
            temperatureLabel.bottomAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 0),
            temperatureLabel.topAnchor.constraint(equalTo: timeLabel.topAnchor, constant: 0),
            
            imageWeather.heightAnchor.constraint(equalToConstant: 42),
            imageWeather.widthAnchor.constraint(equalToConstant: 42),
            imageWeather.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -150),
            imageWeather.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20)
            
        ])
    }
}
