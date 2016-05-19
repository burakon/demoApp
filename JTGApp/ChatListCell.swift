import UIKit

class ChatListCell: UITableViewCell {
    
    @IBOutlet weak var personImageView: UIImageView!
    @IBOutlet weak var countryImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var LastMessageLabel: UILabel!

    
    
    func configure(withChatList chatList: ChatList, selectionEnabled: Bool = true, accessoryEnabled: Bool = true) {
        
        
        personImageView.image = chatList.person.personImage
        countryImageView.image = chatList.person.countryImage
        
        nameLabel.text = chatList.person.name
        LastMessageLabel.text = chatList.lastTalk
        
        
        countryImageView.layer.shadowColor = UIColor.lightGrayColor().CGColor
        countryImageView.layer.shadowOffset = CGSizeMake(1, 1)
        countryImageView.layer.shadowOpacity = 1.0
        countryImageView.layer.shadowRadius = 1
      
        
        if selectionEnabled == false {
            selectionStyle = .None
        }
        
        if accessoryEnabled == false {
            accessoryType = .None
        }
        
    }
}


