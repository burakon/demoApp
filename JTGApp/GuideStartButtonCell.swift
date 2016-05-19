import UIKit

class GuideStartButtonCell: UITableViewCell {

    @IBOutlet weak var guideButton: UIButton!
    
    
    func configure(withGuide guide: Guide) {
        
        guideButton.addTarget(self, action: #selector(GuideDetailViewController.tappedGuideButton(_:)), forControlEvents: .TouchUpInside)
        
    
    }
    

}


