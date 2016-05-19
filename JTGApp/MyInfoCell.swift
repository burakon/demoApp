

import UIKit

class MyInfoCell: UITableViewCell {

    @IBOutlet weak var changePhotoButton: UIButton!
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myCountryImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var areaLabel: UILabel!
    @IBOutlet weak var languageLabel: UILabel!
    @IBOutlet weak var profileTextView: UITextView!
    
    func configure(withMyData data:MyData) {
        nameLabel.text = data.name
        myImageView.image = data.image
        myCountryImageView.image = data.countryImage
        areaLabel.text = data.area
        languageLabel.text = data.language
        profileTextView.text = data.profile
        
        
        myCountryImageView.layer.shadowColor = UIColor.lightGrayColor().CGColor
        myCountryImageView.layer.shadowOffset = CGSizeMake(1, 1)
        myCountryImageView.layer.shadowOpacity = 1.0
        myCountryImageView.layer.shadowRadius = 1
        
        changePhotoButton.addTarget(MyInfoViewController(), action: #selector(MyInfoViewController.tappedChangePhotoButton(_:)), forControlEvents: .TouchUpInside)
    }
    
    
    
}

