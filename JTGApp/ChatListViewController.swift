
import UIKit

class ChatListViewController: UITableViewController {
    
    private let chatList = ChatList.talks
    private let chatTalkSegue = "ChatTalkSegue"
    private var selectedPerson:ChatList!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.registerNib(UINib(nibName: String(ChatListCell), bundle: nil), forCellReuseIdentifier: String(ChatListCell))
        tableView.estimatedRowHeight = 120
    
//        うまく高さ調節してくれるやつ
        tableView.rowHeight = UITableViewAutomaticDimension
        
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if let indexPath = tableView.indexPathForSelectedRow {
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let chatDetailVC = segue.destinationViewController as? ChatTalkViewController {
            if let selectedIndexPath = tableView.indexPathForSelectedRow {
                chatDetailVC.talks = chatList[selectedIndexPath.row].talks
                chatDetailVC.name = chatList[selectedIndexPath.row].person.name
            }
        }
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chatList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(String(ChatListCell), forIndexPath: indexPath) as! ChatListCell
        
        cell.configure(withChatList: chatList[indexPath.row])
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        performSegueWithIdentifier(chatTalkSegue, sender: self)
    }
    

}

//extension ChatListViewController: UIViewControllerPreviewingDelegate {
//    func previewingContext(previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
//        if let indexPath = tableView.indexPathForRowAtPoint(location) {
//            previewingContext.sourceRect = tableView.rectForRowAtIndexPath(indexPath)
//            let chatTalkDetailVC = ChatTalkViewController()
//            chatTalkDetailVC.talks = chatList[indexPath.row]
//            return chatTalkDetailVC
//        }
//        return nil
//    }
//    
//    func previewingContext(previewingContext: UIViewControllerPreviewing, commitViewController viewControllerToCommit: UIViewController) {
//        navigationController?.pushViewController(viewControllerToCommit, animated: true)
//    }
//}

