//
//  FilterSelectionViewController.swift
//  SpaceXApi
//
//  Created by Geethanjali GV on 17/12/2021.
//

import UIKit

class FilterSelectionViewController: UIViewController {

    var viewModel:LaunchViewModelType!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        viewModel.updateFilters()
    }
}

extension FilterSelectionViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.filterCriteria.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FilterCell") as? FilterTableViewCell else { return UITableViewCell() }
        
        let fc = viewModel.filterCriteria[indexPath.row]
        cell.updateUI(filterCriteria: fc)
        return cell
    }
}
