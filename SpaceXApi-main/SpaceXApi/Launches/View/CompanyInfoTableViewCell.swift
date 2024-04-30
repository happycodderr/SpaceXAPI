//
//  CompanyInfoTableViewCell.swift
//  SpaceXApi
//
//  Created by Geethanjali GV on 15/12/2021.
//

import UIKit

final class CompanyInfoTableViewCell: UITableViewCell {
    @IBOutlet weak var companyInfoLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setData(companyInfo:String) {
        companyInfoLbl.text = companyInfo
    }
}
