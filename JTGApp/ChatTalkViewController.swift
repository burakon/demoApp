
import UIKit

class ChatTalkViewController: UITableViewController {
    
    var talks :[Talk]!
    var name :String!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        title = name
        
        tableView.registerNib(UINib(nibName: String(OwnMessageCell), bundle: nil), forCellReuseIdentifier: String(OwnMessageCell))
        tableView.registerNib(UINib(nibName: String(OtherMessageCell), bundle: nil), forCellReuseIdentifier: String(OtherMessageCell))
        tableView.estimatedRowHeight = 83
        //うまく高さ調節してくれるやつ
        tableView.rowHeight = UITableViewAutomaticDimension
        
        //横棒を描画しない
        tableView.separatorStyle = .None
        
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if let indexPath = tableView.indexPathForSelectedRow {
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return talks.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        switch talks[indexPath.row].name{
            
        case "Me":
            let cell = tableView.dequeueReusableCellWithIdentifier(String(OwnMessageCell), forIndexPath: indexPath) as! OwnMessageCell
            cell.configure(withTalk: talks[indexPath.row] )
            return cell
            
        default:
            let cell = tableView.dequeueReusableCellWithIdentifier(String(OtherMessageCell), forIndexPath: indexPath) as! OtherMessageCell
            cell.configure(withTalk: talks[indexPath.row] )
            return cell
        }
    }
}


        