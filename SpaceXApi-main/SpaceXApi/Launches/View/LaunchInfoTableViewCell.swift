//
//  LaunchInfoTableViewCell.swift
//  SpaceXApi
//
//  Created by Geethanjali GV on 15/12/2021.
//

import UIKit
import SDWebImage

final class LaunchInfoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var missionSinceDaysValueLbl: UILabel!
    @IBOutlet weak var missionSinceDaysLbl: UILabel!
    @IBOutlet weak var rocketNameValueLbl: UILabel!
    @IBOutlet weak var rocketNameLbl: UILabel!
    @IBOutlet weak var missionDateValueLbl: UILabel!
    @IBOutlet weak var missionDateLbl: UILabel!
    @IBOutlet weak var missionNameValueLbl: UILabel!
    @IBOutlet weak var missionNameLbl: UILabel!
    
    @IBOutlet weak var missionStatusImageView: UIImageView!
    @IBOutlet weak var launchPatchImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(launchDetails:LaunchDetails) {
        missionNameLbl.text = "Mission:"
        missionNameValueLbl.text = launchDetails.missionName
        
        missionDateLbl.text = "Date/Time:"
        missionDateValueLbl.text = launchDetails.missionLaunchDate
        
        rocketNameLbl.text = "Rocket:"
        rocketNameValueLbl.text = launchDetails.rocketType
        
        missionSinceDaysLbl.text =  launchDetails.daysSinceFrom.0
        missionSinceDaysValueLbl.text = "\(launchDetails.daysSinceFrom.1)"
        
        let imageName = launchDetails.isMissonSuccessFull ? "success" : "failure"
        missionStatusImageView.image = UIImage(named: imageName)
                if let url = URL(string: launchDetails.patchImage) {
            
            launchPatchImageView.sd_setImage(with: url, placeholderImage: UIImage(named: "placeholder.png"))

        }
    }

}
