//
//  DetailCustomFirstCell.swift
//  wetherForQUOTESPART
//
//  Created by Роман Наумов on 03.01.2023.
//

import Foundation
import UIKit

func addHeader() -> UIView {
    
    let customView: UIView = {
        let view = UIView()
        view.frame.size.height = 326
        view.frame.size.width = view.frame.width
        return view
    }()
    
    let cityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Thin", size: 34)
        label.text = "New York"
        label.numberOfLines = 1
        label.textColor = .white
        return label
    }()
    
    let degreeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Thin", size: 96)
        label.text = "7°"
        label.numberOfLines = 1
        label.textColor = .white
        return label
    }()
    
    let weatherLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Medium", size: 20)
        label.text = "Mostly Cloudy"
        label.numberOfLines = 1
        label.textColor = .white
        return label
    }()
    
    let highDegreeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Medium", size: 20)
        label.text = "H:8"
        label.numberOfLines = 1
        label.textColor = .white
        return label
    }()
    
    let lowDegreeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Medium", size: 20)
        label.text = "L:0"
        label.numberOfLines = 1
        label.textColor = .white
        return label
    }()
    
    let stackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.alignment = .center
        stack.distribution = .fillEqually
        stack.spacing = 5
        return stack
    }()
    
    func setConstraint() {
        customView.addSubview(cityLabel)
        customView.addSubview(degreeLabel)
        customView.addSubview(weatherLabel)
        customView.addSubview(stackView)
        stackView.addArrangedSubview(highDegreeLabel)
        stackView.addArrangedSubview(lowDegreeLabel)
        
        NSLayoutConstraint.activate([
            cityLabel.topAnchor.constraint(equalTo: customView.topAnchor, constant: 84 - 44),
            cityLabel.leadingAnchor.constraint(equalTo: customView.leadingAnchor, constant: 120),

            
            degreeLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 12),
            degreeLabel.leadingAnchor.constraint(equalTo: customView.leadingAnchor, constant: 157),


            weatherLabel.topAnchor.constraint(equalTo: degreeLabel.bottomAnchor, constant: 13),
            weatherLabel.leadingAnchor.constraint(equalTo: customView.leadingAnchor, constant: 126),


            stackView.topAnchor.constraint(equalTo: weatherLabel.bottomAnchor, constant: 1),
            stackView.leadingAnchor.constraint(equalTo: customView.leadingAnchor, constant: 146),

        ])
    }
    setConstraint()
    return customView
}
