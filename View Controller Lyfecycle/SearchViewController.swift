//
//  SearchViewController.swift
//  View Controller Lyfecycle
//
//  Created by Алексей Пархоменко on 01.05.2020.
//  Copyright © 2020 Алексей Пархоменко. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    let searchController = UISearchController(searchResultsController: nil)
    let tableView = UITableView(frame: .zero, style: .plain)
    let redView = UIView()
    let blueView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        title = "Search"
        setupSearchBar()
        setupElements()
        setupConstraints()
    }
    
    func setupSearchBar() {
        
        navigationItem.searchController = searchController
        searchController.searchBar.delegate = self
//        searchController.obscuresBackgroundDuringPresentation = false
    }
    
}

// MARK: - Setup Views
extension SearchViewController {
    func setupElements() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        redView.backgroundColor = .red
//        redView.translatesAutoresizingMaskIntoConstraints = false
        
        blueView.backgroundColor = .systemBlue
//        blueView.translatesAutoresizingMaskIntoConstraints = false
    }
}

// MARK: - Setup Constraints
extension SearchViewController {
    func setupConstraints() {
        
        let label = UILabel()
        label.text = "ferfgjirjfiogjrt ghrtiogjrtg ghrtoigrtigojrtg ghrtoigrtigojrtg ghrtoigrtigojrtg ghrtoigrtigojrtgghrtoigrtigojrtg ferfgjirjfiogjrtferfgjirjfiogjrt ferfgjirjfiogjrt"
        label.numberOfLines = 0
        
        redView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        redView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        let stackView = UIStackView(arrangedSubviews: [redView, label])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 10
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])
        
    }
}

// MARK: - UISearchBarDelegate
extension SearchViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
    }
}
