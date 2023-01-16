//
//  DetailCustomThirdCell.swift
//  wetherForQUOTESPART
//
//  Created by Роман Наумов on 03.01.2023.
//

import Foundation
import UIKit

class DetailCustomThirdCell: UITableViewCell {
    static let identifier  = "detailCustomThirdCell"
    
    // MARK: - Setup label days of the week
    
    private lazy var mondayLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 20)
        label.text = "Monday"
        label.numberOfLines = 1
        label.textColor = .white
        return label
    }()
    
    private lazy var tuesdayLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 20)
        label.text = "Tuesday"
        label.numberOfLines = 1
        label.textColor = .white
        return label
    }()
    
    private lazy var wednesdayLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 20)
        label.text = "Wednesday"
        label.numberOfLines = 1
        label.textColor = .white
        return label
    }()
    
    private lazy var thursdayLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 20)
        label.text = "Thursday"
        label.numberOfLines = 1
        label.textColor = .white
        return label
    }()
    
    private lazy var fridayLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 20)
        label.text = "Friday"
        label.numberOfLines = 1
        label.textColor = .white
        return label
    }()
    
    private lazy var saturdayLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 20)
        label.text = "Saturday"
        label.numberOfLines = 1
        label.textColor = .white
        return label
    }()
    
    private lazy var sundayLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 20)
        label.text = "Sunday"
        label.numberOfLines = 1
        label.textColor = .white
        return label
    }()
    
    // MARK: - Setup label humidity days of the week
    
    private lazy var mondayHumidityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 13)
        label.text = "80%"
        label.numberOfLines = 1
        label.textColor = #colorLiteral(red: 0.4835264087, green: 0.8121564984, blue: 0.9774267077, alpha: 1)
        return label
    }()
    
    private lazy var tuesdayHumidityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 13)
        label.text = "80%"
        label.numberOfLines = 1
        label.textColor = #colorLiteral(red: 0.4835264087, green: 0.8121564984, blue: 0.9774267077, alpha: 1)
        return label
    }()
    
    private lazy var wednesdayHumidityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 13)
        label.text = "80%"
        label.numberOfLines = 1
        label.textColor = #colorLiteral(red: 0.4835264087, green: 0.8121564984, blue: 0.9774267077, alpha: 1)
        return label
    }()
    
    private lazy var thursdayHumidityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 13)
        label.text = "80%"
        label.numberOfLines = 1
        label.textColor = #colorLiteral(red: 0.4835264087, green: 0.8121564984, blue: 0.9774267077, alpha: 1)
        return label
    }()
    
    private lazy var fridayHumidityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 13)
        label.text = "80%"
        label.numberOfLines = 1
        label.textColor = #colorLiteral(red: 0.4835264087, green: 0.8121564984, blue: 0.9774267077, alpha: 1)
        return label
    }()
    
    private lazy var saturdayHumidityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 13)
        label.text = "80%"
        label.numberOfLines = 1
        label.textColor = #colorLiteral(red: 0.4835264087, green: 0.8121564984, blue: 0.9774267077, alpha: 1)
        return label
    }()
    
    private lazy var sundayHumidityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 13)
        label.text = "80%"
        label.numberOfLines = 1
        label.textColor = #colorLiteral(red: 0.4835264087, green: 0.8121564984, blue: 0.9774267077, alpha: 1)
        return label
    }()
    
    // MARK: - Setup label temperature afternoon
    
    private lazy var mondayTemperatureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 20)
        label.text = "14"
        label.numberOfLines = 1
        label.textColor = .white
        return label
    }()
    
    private lazy var tuesdayTemperatureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 20)
        label.text = "14"
        label.numberOfLines = 1
        label.textColor = .white
        return label
    }()
    
    private lazy var wednesdayTemperatureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 20)
        label.text = "14"
        label.numberOfLines = 1
        label.textColor = .white
        return label
    }()
    
    private lazy var thursdayTemperatureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 20)
        label.text = "14"
        label.numberOfLines = 1
        label.textColor = .white
        return label
    }()
    
    private lazy var fridayTemperatureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 20)
        label.text = "14"
        label.numberOfLines = 1
        label.textColor = .white
        return label
    }()
    
    private lazy var saturdayTemperatureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 20)
        label.text = "14"
        label.numberOfLines = 1
        label.textColor = .white
        return label
    }()
    
    private lazy var sundayTemperatureLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 20)
        label.text = "14"
        label.numberOfLines = 1
        label.textColor = .white
        return label
    }()
    
    // MARK: - Setup label weather temperature at night
    
    private lazy var mondayNightLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 20)
        label.text = "14"
        label.numberOfLines = 1
        label.textColor = UIColor(
            red: 255/255,
            green: 255/255,
            blue: 255/255,
            alpha: 0.5
        )
        return label
    }()
    
    private lazy var tuesdayNightLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 20)
        label.text = "14"
        label.numberOfLines = 1
        label.textColor = UIColor(
            red: 255/255,
            green: 255/255,
            blue: 255/255,
            alpha: 0.5
        )
        return label
    }()
    
    private lazy var wednesdayNightLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 20)
        label.text = "14"
        label.numberOfLines = 1
        label.textColor = UIColor(
            red: 255/255,
            green: 255/255,
            blue: 255/255,
            alpha: 0.5
        )
        return label
    }()
    
    private lazy var thursdayNightLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 20)
        label.text = "14"
        label.numberOfLines = 1
        label.textColor = UIColor(
            red: 255/255,
            green: 255/255,
            blue: 255/255,
            alpha: 0.5
        )
        return label
    }()
    
    private lazy var fridayNightLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 20)
        label.text = "14"
        label.numberOfLines = 1
        label.textColor = UIColor(
            red: 255/255,
            green: 255/255,
            blue: 255/255,
            alpha: 0.5
        )
        return label
    }()
    
    private lazy var saturdayNightLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 20)
        label.text = "14"
        label.numberOfLines = 1
        label.textColor = UIColor(
            red: 255/255,
            green: 255/255,
            blue: 255/255,
            alpha: 0.5
        )
        return label
    }()
    
    private lazy var sundayNightLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SFProDisplay-Regular", size: 20)
        label.text = "14"
        label.numberOfLines = 1
        label.textColor = UIColor(
            red: 255/255,
            green: 255/255,
            blue: 255/255,
            alpha: 0.5
        )
        return label
    }()
    
    // MARK: - Setup image days of the week
    
    private lazy var imageWeatherForMonday: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "rain")
        return image
    }()
    
    private lazy var imageWeatherForTuesday: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "rain")
        return image
    }()
    
    private lazy var imageWeatherForWednesday: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "rain")
        return image
    }()
    
    private lazy var imageWeatherForThursday: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "rain")
        return image
    }()
    
    private lazy var imageWeatherForFriday: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "rain")
        return image
    }()
    
    private lazy var imageWeatherForSaturday: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "rain")
        return image
    }()
    
    private lazy var imageWeatherForSunday: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "rain")
        return image
    }()
    
    // MARK: - Setup stack
    
    private var stackOfDays: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .leading
        stack.distribution = .fillEqually
        stack.spacing = 8
        return stack
    }()
    
    private var stackOfImage: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .center
        stack.distribution = .fillEqually
        stack.spacing = 2
        return stack
    }()
    
    private var stackOfHumidity: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .center
        stack.distribution = .fillEqually
        stack.spacing = 2
        return stack
    }()
    
    private var stackOfTempAfternoon: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .center
        stack.distribution = .fillEqually
        stack.spacing = 8
        return stack
    }()
    
    private var stackOfTempNight: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.alignment = .center
        stack.distribution = .fillEqually
        stack.spacing = 8
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

// MARK: - Setup setupConstraintCell

extension DetailCustomThirdCell {
    private func setupConstraintCell() {
        contentView.addSubview(stackOfDays)
        stackOfDays.addArrangedSubview(mondayLabel)
        stackOfDays.addArrangedSubview(tuesdayLabel)
        stackOfDays.addArrangedSubview(wednesdayLabel)
        stackOfDays.addArrangedSubview(thursdayLabel)
        stackOfDays.addArrangedSubview(fridayLabel)
        stackOfDays.addArrangedSubview(saturdayLabel)
        stackOfDays.addArrangedSubview(sundayLabel)
        contentView.addSubview(stackOfImage)
        stackOfImage.addArrangedSubview(imageWeatherForMonday)
        stackOfImage.addArrangedSubview(imageWeatherForTuesday)
        stackOfImage.addArrangedSubview(imageWeatherForWednesday)
        stackOfImage.addArrangedSubview(imageWeatherForThursday)
        stackOfImage.addArrangedSubview(imageWeatherForFriday)
        stackOfImage.addArrangedSubview(imageWeatherForSaturday)
        stackOfImage.addArrangedSubview(imageWeatherForSunday)
        contentView.addSubview(stackOfHumidity)
        stackOfHumidity.addArrangedSubview(mondayHumidityLabel)
        stackOfHumidity.addArrangedSubview(tuesdayHumidityLabel)
        stackOfHumidity.addArrangedSubview(wednesdayHumidityLabel)
        stackOfHumidity.addArrangedSubview(thursdayHumidityLabel)
        stackOfHumidity.addArrangedSubview(fridayHumidityLabel)
        stackOfHumidity.addArrangedSubview(sundayHumidityLabel)
        stackOfHumidity.addArrangedSubview(sundayHumidityLabel)
        contentView.addSubview(stackOfTempAfternoon)
        stackOfTempAfternoon.addArrangedSubview(mondayTemperatureLabel)
        stackOfTempAfternoon.addArrangedSubview(tuesdayTemperatureLabel)
        stackOfTempAfternoon.addArrangedSubview(wednesdayTemperatureLabel)
        stackOfTempAfternoon.addArrangedSubview(thursdayTemperatureLabel)
        stackOfTempAfternoon.addArrangedSubview(saturdayTemperatureLabel)
        stackOfTempAfternoon.addArrangedSubview(sundayTemperatureLabel)
        contentView.addSubview(stackOfTempNight)
        stackOfTempNight.addArrangedSubview(mondayNightLabel)
        stackOfTempNight.addArrangedSubview(tuesdayNightLabel)
        stackOfTempNight.addArrangedSubview(wednesdayNightLabel)
        stackOfTempNight.addArrangedSubview(thursdayNightLabel)
        stackOfTempNight.addArrangedSubview(fridayNightLabel)
        stackOfTempNight.addArrangedSubview(saturdayNightLabel)
        stackOfTempNight.addArrangedSubview(sundayNightLabel)

        NSLayoutConstraint.activate([
            stackOfDays.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15.5),
            stackOfDays.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            stackOfDays.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15),
            
            stackOfImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12.5),
            stackOfImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 172),
            stackOfImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
            
            stackOfHumidity.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 19.5),
            stackOfHumidity.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 211),
            stackOfHumidity.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -19),
            
            stackOfTempAfternoon.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15.5),
            stackOfTempAfternoon.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 283),
            stackOfTempAfternoon.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15),
            
            stackOfTempNight.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15.5),
            stackOfTempNight.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 342),
            stackOfTempNight.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15)
            
        ])
    }
}
