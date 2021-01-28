//
//  ResultDisplayVC.swift
//  KatesSearchInTableList
//
//  Created by KatesAndroid on 2021/1/28 PM 7:30 - 9:30
// using UISearchResultsUpdating

import UIKit

class ResultDisplayVC: UITableViewController, UISearchResultsUpdating {
    
    let ad = UIApplication.shared.delegate as! AppDelegate
    var filter: [String]? // nullable

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //---------tableView-----------

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filter?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellcell", for: indexPath)

        cell.textLabel?.text = filter?[indexPath.row]

        return cell
        
    }
    
    //-------UISearchResultsUpdating---------
    // match phase
    
    // UISearchResultsUpdating
    func updateSearchResults(for searchController: UISearchController) {
        
        if let textRandom = searchController.searchBar.text{
            
            filter = ad.listForAll.filter({ (string) -> Bool in
                
                return (string.range(of: textRandom) != nil)
                
            })
            
            tableView.reloadData()
            
        }
        
        
    }

}
