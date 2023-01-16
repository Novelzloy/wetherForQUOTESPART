//
//  DetailCustomFifthCell.swift
//  wetherForQUOTESPART
//
//  Created by Роман Наумов on 03.01.2023.
//

import Foundation
import UIKit

class DetailCustomFifthCell: UITableViewCell {
    static let identifier = "detailCustomFifthCell"
    
    // MARK: - Setup state of weather
    
    private lazy var sunriseLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 13)
        label.text = "SUNRISE"
        label.numberOfLines = 0
        label.textColor = #colorLiteral(red: 0.6250039339, green: 0.7568511367, blue: 0.9331885576, alpha: 1)
        return label
    }()
    
    private lazy var sunsetLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 13)
        label.text = "SUNSET"
        label.numberOfLines = 0
        label.textColor = #colorLiteral(red: 0.6250039339, green: 0.7568511367, blue: 0.9331885576, alpha: 1)
        return label
    }()
    
    private lazy var timeSunriseLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 28)
        label.text = "7:05"
        label.numberOfLines = 0
        label.textColor = .white
        return label
    }()
    
    private lazy var timeSunsetLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 28)
        label.text = "7:05"
        label.numberOfLines = 0
        label.textColor = .white
        return label
    }()
    
    // MARK: - Setup stack
    
    private var stackSunrise: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .leading
        stack.distribution = .fillEqually
        stack.spacing = 1
        return stack
    }()
    
    private var stackSunset: UIStackView = {
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

extension DetailCustomFifthCell {
    private func setupConstraintCell() {
        contentView.addSubview(stackSunrise)
        stackSunrise.addArrangedSubview(sunriseLabel)
        stackSunrise.addArrangedSubview(timeSunriseLabel)
        contentView.addSubview(stackSunset)
        stackSunset.addArrangedSubview(sunsetLabel)
        stackSunset.addArrangedSubview(timeSunsetLabel)
        
        NSLayoutConstraint.activate([
            stackSunrise.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 7.5),
            stackSunrise.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            stackSunrise.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -11),
            
            stackSunset.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 7.5),
            stackSunset.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 193),
            stackSunset.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -11),
        ])
    }
}
