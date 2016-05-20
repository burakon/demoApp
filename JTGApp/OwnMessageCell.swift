
import UIKit
import Toucan

class OwnMessageCell: UITableViewCell {
    

    @IBOutlet weak var personImageView: UIImageView!
    @IBOutlet weak var fukidashiLabel:UILabel!
    
    func configure(withTalk talk: Talk) {
        
        if talk.name == "Me" {
            personImageView.image =
                Toucan(image: MyData.Me.image).maskWithEllipse().image
        } else {
            personImageView.image = Toucan(image: UIImage(named: String(talk.name))!).maskWithEllipse().image
        }
        fukidashiLabel.text = talk.text
        
        setNeedsUpdateConstraints()
        layoutIfNeeded()
        
    }

}
