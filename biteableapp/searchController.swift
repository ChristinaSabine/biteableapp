//
//  searchController.swift
//  biteableapp
//
//  Created by Tina Sabine on 02/07/2017.
//  Copyright © 2017 Tina Sabine. All rights reserved.
//

import Foundation

import UIKit
class SearchController: UIViewController, UISearchBarDelegate {
    
    var searchController = UISearchController()
    
    override func viewDidLoad() {

        //Setup search bar
        searchController = UISearchController(searchResultsController: nil)
        searchController.dimsBackgroundDuringPresentation = false
        definesPresentationContext = true
        //Set delegate
        searchController.searchResultsUpdater = self
        //Add to top of table view
       // tableView.tableHeaderView = searchController.searchBar
    }
    
    @IBAction func closeButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}

extension SearchController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        print(searchController.searchBar.text!)
    }
}
