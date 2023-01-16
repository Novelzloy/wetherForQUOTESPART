//
//  DetailCustomFourthCell.swift
//  wetherForQUOTESPART
//
//  Created by Роман Наумов on 03.01.2023.
//

import Foundation
import UIKit

class DetailCustomFourthCell: UITableViewCell {
    static let identifier  = "detailCustomFourthCell"
    
    // MARK: - Setup state of weather
    
    private lazy var stateOfWeatherLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 17)
        label.text = "Cloudy conditions will continue all day. Wind gusts are up it 9 pm"
        label.numberOfLines = 0
        label.textColor = .white
        return label
    }()
    
    // MARK: - Setup init cell
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupConstraintCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Setup constraint

extension DetailCustomFourthCell {
    private func setupConstraintCell() {
        contentView.addSubview(stateOfWeatherLabel)
        
        NSLayoutConstraint.activate([
            stateOfWeatherLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10.5),
            stateOfWeatherLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            stateOfWeatherLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            stateOfWeatherLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
        ])
    }
}
