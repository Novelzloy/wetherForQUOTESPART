//
//  DetailCustomNinthCell.swift
//  wetherForQUOTESPART
//
//  Created by Роман Наумов on 03.01.2023.
//

import Foundation
import UIKit

func addFooter() -> UIView {
    
    let customView: UIView = {
        let view = UIView()
        view.frame.size.height = 138.5
        view.frame.size.width = view.frame.width
        return view
    }()
    
    let visibilityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 13)
        label.text = "VISIBALITY"
        label.numberOfLines = 0
        label.textColor = #colorLiteral(red: 0.6250039339, green: 0.7568511367, blue: 0.9331885576, alpha: 1)
        return label
    }()
    
    let indexLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 13)
        label.text = "UV INDEX"
        label.numberOfLines = 0
        label.textColor = #colorLiteral(red: 0.6250039339, green: 0.7568511367, blue: 0.9331885576, alpha: 1)
        return label
    }()
    
    let dataVisibilityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 28)
        label.text = "16 km"
        label.numberOfLines = 0
        label.textColor = .white
        return label
    }()
    
    let dataIndexLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 28)
        label.text = "0"
        label.numberOfLines = 0
        label.textColor = .white
        return label
    }()
    
    // MARK: - Setup stack
    
    let stackVisibility: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .leading
        stack.distribution = .fillEqually
        stack.spacing = 1
        return stack
    }()
    
    let stackIndex: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .leading
        stack.distribution = .fillEqually
        stack.spacing = 1
        return stack
    }()
    
    func setConstraint() {
        customView.addSubview(stackVisibility)
        stackVisibility.addArrangedSubview(visibilityLabel)
        stackVisibility.addArrangedSubview(dataVisibilityLabel)
        customView.addSubview(stackIndex)
        stackIndex.addArrangedSubview(indexLabel)
        stackIndex.addArrangedSubview(dataIndexLabel)
        
        NSLayoutConstraint.activate([
            stackVisibility.topAnchor.constraint(equalTo: customView.topAnchor, constant: 7.5),
            stackVisibility.leadingAnchor.constraint(equalTo: customView.leadingAnchor, constant: 20),
            stackVisibility.bottomAnchor.constraint(equalTo: customView.bottomAnchor, constant: -89),
            
            stackIndex.topAnchor.constraint(equalTo: customView.topAnchor, constant: 7.5),
            stackIndex.leadingAnchor.constraint(equalTo: customView.leadingAnchor, constant: 193),
            stackIndex.bottomAnchor.constraint(equalTo: customView.bottomAnchor, constant: -89),
        ])
    }
    setConstraint()
    return customView
}
