//
//  DetailCustomSixthCell.swift
//  wetherForQUOTESPART
//
//  Created by Роман Наумов on 03.01.2023.
//

import Foundation
import UIKit

class DetailCustomSixthCell: UITableViewCell {
    static let identifier = "detailCustomSixthCell"
    
    // MARK: - Setup state of weather
    
    private lazy var chanceOfRainLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 13)
        label.text = "CHANCE OF RAIN"
        label.numberOfLines = 0
        label.textColor = #colorLiteral(red: 0.6250039339, green: 0.7568511367, blue: 0.9331885576, alpha: 1)
        return label
    }()
    
    private lazy var humidityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 13)
        label.text = "HUMIDITY"
        label.numberOfLines = 0
        label.textColor = #colorLiteral(red: 0.6250039339, green: 0.7568511367, blue: 0.9331885576, alpha: 1)
        return label
    }()
    
    private lazy var dataOfRainLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 28)
        label.text = "10%"
        label.numberOfLines = 0
        label.textColor = .white
        return label
    }()
    
    private lazy var humidityDataLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 28)
        label.text = "50%"
        label.numberOfLines = 0
        label.textColor = .white
        return label
    }()
    
    // MARK: - Setup stack
    
    private var stackChanceOfRain: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .leading
        stack.distribution = .fillEqually
        stack.spacing = 1
        return stack
    }()
    
    private var stackHumidity: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .leading
        stack.distribution = .fillEqually
        stack.spacing = 1
        return stack
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

extension DetailCustomSixthCell {
    private func setupConstraintCell() {
        contentView.addSubview(stackChanceOfRain)
        stackChanceOfRain.addArrangedSubview(chanceOfRainLabel)
        stackChanceOfRain.addArrangedSubview(dataOfRainLabel)
        contentView.addSubview(stackHumidity)
        stackHumidity.addArrangedSubview(humidityLabel)
        stackHumidity.addArrangedSubview(humidityDataLabel)
        
        NSLayoutConstraint.activate([
            stackChanceOfRain.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 7.5),
            stackChanceOfRain.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            stackChanceOfRain.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -11),
            
            stackHumidity.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 7.5),
            stackHumidity.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 193),
            stackHumidity.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -11),
        ])
    }
}


