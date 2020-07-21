//
//  ViewController.swift
//  RealTrip
//
//  Created by GW_18 on 20/07/2020.
//  Copyright © 2020 GW_18. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    var data = ["서울"]
    var filteredData = [String]()
    var isSearching = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.delegate = self
        searchBar.delegate = self
        searchBar.returnKeyType = UIReturnKeyType.done
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        if isSearching{
            return filteredData.count
        }
        
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "DataCell", for: indexPath) as? DataCell{
            
            let text: String!
            
            if isSearching{
                
                text = filteredData[indexPath.row]
            }
            else{
                text = data[indexPath.row]
            }
            cell.configureCell(data: text)
            return cell
        }else
                {
            return UITableViewCell()
        }
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText:String){
        
    }
}

