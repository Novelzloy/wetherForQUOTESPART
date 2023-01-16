//
//  DetailViewController.swift
//  wetherForQUOTESPART
//
//  Created by Роман on 23.12.2022.
// heighBar = 44

import Foundation
import UIKit

class DetailTableViewController: UIViewController {
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.estimatedRowHeight = 400
        tableView.bounces = true
        tableView.rowHeight = UITableView.automaticDimension
        tableView.separatorInset = .zero
        tableView.backgroundColor = UIColor(red: 63/255.0,
                                            green: 132/255.0,
                                            blue: 221/255.0,
                                            alpha: 1.0)
        tableView.separatorColor = .gray
        tableView.register(
            DetailHourlyForecastCustomTableViewCell.self,
            forCellReuseIdentifier: DetailHourlyForecastCustomTableViewCell.identifier)
        tableView.register(
            DetailCustomThirdCell.self,
            forCellReuseIdentifier: DetailCustomThirdCell.identifier)
        tableView.register(
            DetailCustomFourthCell.self,
            forCellReuseIdentifier: DetailCustomFourthCell.identifier)
        tableView.register(
            DetailCustomFifthCell.self,
            forCellReuseIdentifier: DetailCustomFifthCell.identifier)
        tableView.register(
            DetailCustomSixthCell.self,
            forCellReuseIdentifier: DetailCustomSixthCell.identifier)
        tableView.register(
            DetailCustomSeventhCell.self,
            forCellReuseIdentifier: DetailCustomSeventhCell.identifier)
        tableView.register(
            DetailCustomEighthCell.self,
            forCellReuseIdentifier: DetailCustomEighthCell.identifier)
        return tableView
    }()
    
    private var contentSize: CGSize {
        CGSize(width: view.frame.width,
               height: view.frame.height + 90)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        configureNavigationController()
        tableView.separatorColor = .white
        tableView.tableHeaderView = addHeader()
        tableView.tableFooterView = addFooter()
    }
}
//MARK: - Setup Navigation Controller

extension DetailTableViewController {
    private func configureNavigationController() {
        navigationController?.navigationBar.topItem?.backButtonTitle = ""
        navigationController?.navigationBar.topItem?.titleView?.tintColor = .white
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.prefersLargeTitles = false
    }
}

//MARK: - Setup TableView Cell

extension DetailTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        if section == 1{
//            return 1
//        }
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 1 {
            let hourlyForecast = tableView.dequeueReusableCell(
                withIdentifier: DetailHourlyForecastCustomTableViewCell.identifier,
                for: indexPath) as! DetailHourlyForecastCustomTableViewCell
            return hourlyForecast
        }
        
        switch indexPath.row {
//        case 1:
//            let hourlyForecast = tableView.dequeueReusableCell(
//                withIdentifier: DetailHourlyForecastCustomTableViewCell.identifier,
//                for: indexPath) as! DetailHourlyForecastCustomTableViewCell
//            return hourlyForecast
        case 2:
            let detailCustomThirdCell = tableView.dequeueReusableCell(
                withIdentifier: DetailCustomThirdCell.identifier,
                for: indexPath) as! DetailCustomThirdCell
            return detailCustomThirdCell
        case 3:
            let detailCustomFourthCell = tableView.dequeueReusableCell(
                withIdentifier: DetailCustomFourthCell.identifier,
                for: indexPath) as! DetailCustomFourthCell
            return detailCustomFourthCell
        case 4:
            let detailCustomFifthCell = tableView.dequeueReusableCell(
                withIdentifier: DetailCustomFifthCell.identifier,
                for: indexPath) as! DetailCustomFifthCell
            return detailCustomFifthCell
        case 5:
            let detailCustomSixthCell = tableView.dequeueReusableCell(
                withIdentifier: DetailCustomSixthCell.identifier,
                for: indexPath) as! DetailCustomSixthCell
            return detailCustomSixthCell
        case 6:
            let detailCustomSeventhCell = tableView.dequeueReusableCell(
                withIdentifier: DetailCustomSeventhCell.identifier,
                for: indexPath) as! DetailCustomSeventhCell
            return detailCustomSeventhCell
        case 7:
            let detailCustomEighthCell = tableView.dequeueReusableCell(
                withIdentifier: DetailCustomEighthCell.identifier,
                for: indexPath) as! DetailCustomEighthCell
            return detailCustomEighthCell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.selectionStyle = .none
        cell.backgroundColor = UIColor(red: 63/255.0,
                                       green: 132/255.0,
                                       blue: 221/255.0,
                                       alpha: 1)
    }
}
//MARK: - Setup Constraint
extension DetailTableViewController {
    private func configureView() {
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

