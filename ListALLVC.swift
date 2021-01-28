//
//  ListALLVC.swift
//  KatesSearchInTableList
//
//  Created by KatesAndroid on 2021/1/28 PM 7:30 - 9:30
// UISearchResultsUpdating
// using UISearchController instance

import UIKit

class ListALLVC: UITableViewController {

    
    // see ResultDisplayVC
    /*func updateSearchResults(for searchController: UISearchController) {
        
    }*/
    
    let ad = UIApplication.shared.delegate as! AppDelegate
    // using UISearchController instance to be functioned as segue to ResultDisplay =>
    // storyboard ID called "result"
    var searchMe: UISearchController! //nullable
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UISearchResultsUpdating
        if let rvc = storyboard?.instantiateViewController(identifier: "result") as? ResultDisplayVC {
            
            searchMe = UISearchController(searchResultsController: rvc)
            
            // UISearchResultsUpdating
            searchMe.searchResultsUpdater = rvc
                        
            // show searchbar
            tableView.tableHeaderView = searchMe.searchBar
            
        }

    }
    
    //---------tableView-----------

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ad.listForAll.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = ad.listForAll[indexPath.row] // textLabel is nullable

        return cell
        
    }
    
    
}
