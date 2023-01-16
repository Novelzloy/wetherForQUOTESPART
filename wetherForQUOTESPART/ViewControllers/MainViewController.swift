//
//  MainViewController.swift
//  wetherForQUOTESPART
//
//  Created by Роман on 19.12.2022.
// fonts:"SFProDisplay-Regular", "SFProDisplay-Thin", "SFProDisplay-Medium"

import Foundation
import UIKit

class MainViewController: UIViewController {
    
    private let searchController = UISearchController(searchResultsController: nil)
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.estimatedRowHeight = 400
        tableView.rowHeight = UITableView.automaticDimension
        tableView.separatorInset = .zero
        tableView.backgroundColor = .black
        tableView.separatorColor = .gray
        tableView.register(
            CustomTableViewCell.self,
            forCellReuseIdentifier: CustomTableViewCell.identifier)
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        configureNavigationController()
        customSearchController()
        searchController.searchBar.barTintColor = .white
    }
}
// MARK: - Setup TableViewCell
extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as! CustomTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = .black
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let detailVC = DetailTableViewController()
        navigationController?.pushViewController(detailVC, animated: true)
    }
}

extension MainViewController {
    private func configureNavigationController() {
        navigationItem.title = "Weather"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navigationItem.hidesSearchBarWhenScrolling = false
        navigationItem.searchController = searchController
        UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self]).textColor = .white
    }
}

extension MainViewController {
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
// MARK: - Setup SearchBar
extension MainViewController: UISearchResultsUpdating, UISearchBarDelegate {
    
    func updateSearchResults(for searchController: UISearchController) {
//        let searchBar = searchController.searchBar
//        filterContentForSearchText(searchBar.text ?? "")
    }
    
    func customSearchController() {
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        definesPresentationContext = true
        searchController.searchBar.showsScopeBar = true
        searchController.hidesNavigationBarDuringPresentation = true
    }
    
//    func filterContentForSearchText(_ searchText: String) {
//        filteredData = dataResult.filter { (data: ResoAPI) -> Bool in
//            data.shortName?.lowercased().contains(searchText.lowercased()) ?? false
//        }
//        tableView.reloadData()
//    }
}
