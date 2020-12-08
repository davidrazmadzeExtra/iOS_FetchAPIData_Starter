//
//  ViewController.swift
//  FetchAPIData
//
//  Created by David Razmadze on 12/8/20.
//

import UIKit

class TableController: UITableViewController {
  
  // MARK: - Properties
  let sampleData: [String] = ["Test_1", "Test_2", "Test_3"]
  
  // MARK: - Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.backgroundColor = .gray
  }
  
}

// MARK: - UITableViewDelegate/UITableViewDataSource

extension TableController {
  
  /// Number of cells in the first section
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return sampleData.count
  }
  
  /// How to display each cell
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "TableviewCell", for: indexPath)
  
    cell.textLabel?.text = sampleData[indexPath.row]
    
    return cell
  }
  
}
