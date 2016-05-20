import UIKit
import Toucan

class OtherMessageCell: UITableViewCell {
    
    
    
    @IBOutlet weak var personImageView: UIImageView!
    @IBOutlet weak var fukidashiLabel:UILabel!
    
    func configure(withTalk talk: Talk) {
        
        
        personImageView.image = Toucan(image: UIImage(named: String(talk.name))!).maskWithEllipse().image
        
        fukidashiLabel.text = talk.text
        
        setNeedsUpdateConstraints()
        layoutIfNeeded()
        
    }
    
}
