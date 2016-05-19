import UIKit

class GuideProfileCell: UITableViewCell {
    

    @IBOutlet weak var profileView: UITextView!
    
    func configure(withText text:String) {
        
        profileView.text = text
        
        
        setNeedsUpdateConstraints()
        layoutIfNeeded()
        
    }
}


