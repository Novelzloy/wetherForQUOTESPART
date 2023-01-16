//
//  DetailCustomEighthCell.swift
//  wetherForQUOTESPART
//
//  Created by Роман Наумов on 03.01.2023.
//

import Foundation
import UIKit

class DetailCustomEighthCell: UITableViewCell {
    static let identifier = "detailCustomEighthCell"
    
    // MARK: - Setup state of weather
    
    private lazy var precipitationLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 13)
        label.text = "PRECIPITATION"
        label.numberOfLines = 0
        label.textColor = #colorLiteral(red: 0.6250039339, green: 0.7568511367, blue: 0.9331885576, alpha: 1)
        return label
    }()
    
    private lazy var pressureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 13)
        label.text = "PRESSURE"
        label.numberOfLines = 0
        label.textColor = #colorLiteral(red: 0.6250039339, green: 0.7568511367, blue: 0.9331885576, alpha: 1)
        return label
    }()
    
    private lazy var dataPrecipitationLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 28)
        label.text = "0 cm"
        label.numberOfLines = 0
        label.textColor = .white
        return label
    }()
    
    private lazy var dataPressureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 28)
        label.text = "1025 hPa"
        label.numberOfLines = 0
        label.textColor = .white
        return label
    }()
    
    // MARK: - Setup stack
    
    private var stackPrecipitation: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .leading
        stack.distribution = .fillEqually
        stack.spacing = 1
        return stack
    }()
    
    private var stackPressure: UIStackView = {
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

extension DetailCustomEighthCell {
    private func setupConstraintCell() {
        contentView.addSubview(stackPrecipitation)
        stackPrecipitation.addArrangedSubview(precipitationLabel)
        stackPrecipitation.addArrangedSubview(dataPrecipitationLabel)
        contentView.addSubview(stackPressure)
        stackPressure.addArrangedSubview(pressureLabel)
        stackPressure.addArrangedSubview(dataPressureLabel)
        
        NSLayoutConstraint.activate([
            stackPrecipitation.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 7.5),
            stackPrecipitation.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            stackPrecipitation.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -11),
            
            stackPressure.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 7.5),
            stackPressure.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 193),
            stackPressure.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -11),
        ])
    }
}

