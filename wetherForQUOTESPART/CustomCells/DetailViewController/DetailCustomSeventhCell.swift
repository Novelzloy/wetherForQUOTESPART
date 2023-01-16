//
//  DetailCustomSeventhCell.swift
//  wetherForQUOTESPART
//
//  Created by Роман Наумов on 03.01.2023.
//

import Foundation
import UIKit

class DetailCustomSeventhCell: UITableViewCell {
    static let identifier = "detailCustomSeventhCell"
    
    // MARK: - Setup state of weather
    
    private lazy var windLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 13)
        label.text = "WIND"
        label.numberOfLines = 0
        label.textColor = #colorLiteral(red: 0.6250039339, green: 0.7568511367, blue: 0.9331885576, alpha: 1)
        return label
    }()
    
    private lazy var feelsLikeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 13)
        label.text = "FEELS LIKE"
        label.numberOfLines = 0
        label.textColor = #colorLiteral(red: 0.6250039339, green: 0.7568511367, blue: 0.9331885576, alpha: 1)
        return label
    }()
    
    private lazy var dataOfWindLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 28)
        label.text = "s 3 km/hr"
        label.numberOfLines = 0
        label.textColor = .white
        return label
    }()
    
    private lazy var feelsLikeDataLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 28)
        label.text = "3°"
        label.numberOfLines = 0
        label.textColor = .white
        return label
    }()
    
    // MARK: - Setup stack
    
    private var stackWind: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .leading
        stack.distribution = .fillEqually
        stack.spacing = 1
        return stack
    }()
    
    private var stackFeelsLike: UIStackView = {
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

extension DetailCustomSeventhCell {
    private func setupConstraintCell() {
        contentView.addSubview(stackWind)
        stackWind.addArrangedSubview(windLabel)
        stackWind.addArrangedSubview(dataOfWindLabel)
        contentView.addSubview(stackFeelsLike)
        stackFeelsLike.addArrangedSubview(feelsLikeLabel)
        stackFeelsLike.addArrangedSubview(feelsLikeDataLabel)
        
        NSLayoutConstraint.activate([
            stackWind.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 7.5),
            stackWind.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            stackWind.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -11),
            
            stackFeelsLike.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 7.5),
            stackFeelsLike.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 193),
            stackFeelsLike.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -11),
        ])
    }
}

