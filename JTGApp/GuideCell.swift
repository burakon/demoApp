import UIKit

class GuideCell: UITableViewCell {
    
    @IBOutlet weak var personImageView: UIImageView!
    @IBOutlet weak var countryImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var areaLabel: UILabel!
    @IBOutlet weak var languageLabel: UILabel!
    @IBOutlet weak var tourDayLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    func configure(withGuide guide: Guide, selectionEnabled: Bool = true, accessoryEnabled: Bool = true) {
        personImageView.image = guide.personImage
        countryImageView.image = guide.countryImage
        
        nameLabel.text = guide.name
        areaLabel.text = guide.area
        languageLabel.text = guide.language
        
        
        countryImageView.layer.shadowColor = UIColor.lightGrayColor().CGColor
        countryImageView.layer.shadowOffset = CGSizeMake(1, 1)
        countryImageView.layer.shadowOpacity = 1.0
        countryImageView.layer.shadowRadius = 1
        
        let tourDay = "\(guide.tourDays.firstDay) ~ \(guide.tourDays.lastDay)"
        tourDayLabel.text = tourDay
        dateLabel.text = guide.createdAt
        
        if selectionEnabled == false {
            selectionStyle = .None
        }
        
        if accessoryEnabled == false {
            accessoryType = .None
        }
        
    }
}


