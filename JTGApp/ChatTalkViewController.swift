
import UIKit
import SlackTextViewController

class ChatTalkViewController: UITableViewController {
    
    var talks :[Talk]!
    var name :String!
    
    private var pagingIndicatorView: UIActivityIndicatorView!
    
    private var timer: NSTimer?
    private var poolingInterval: NSTimeInterval = 2
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pagingIndicatorView = UIActivityIndicatorView(activityIndicatorStyle: .Gray)
        pagingIndicatorView.frame = CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, 50)
        pagingIndicatorView.hidesWhenStopped = true
        
        

        
        
        title = name
        
        tableView.registerNib(UINib(nibName: String(OwnMessageCell), bundle: nil), forCellReuseIdentifier: String(OwnMessageCell))
        tableView.registerNib(UINib(nibName: String(OtherMessageCell), bundle: nil), forCellReuseIdentifier: String(OtherMessageCell))
        tableView.estimatedRowHeight = 83
        //うまく高さ調節してくれるやつ
        tableView.rowHeight = UITableViewAutomaticDimension
        
        //横棒を描画しない
        tableView.separatorStyle = .None
        
        // SlackTextViewController使うために書きたかったんだ
//        self.bounces = true
//        self.keyboardPanningEnabled = true
//        self.inverted = false
//        self.textView.placeholder = "Message"
//        self.textView.placeholderColor = UIColor.lightGrayColor()
//        self.rightButton.setTitle("送信", forState: UIControlState.Normal)
//        self.textInputbar.autoHideRightButton = true
//        self.textInputbar.counterStyle = SLKCounterStyle.Split
//        self.typingIndicatorView.canResignByTouch = true
        
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
    override func scrollViewDidScroll(scrollView: UIScrollView) {
        //上のクルクル
        if scrollView.contentOffset.y < 50 {
            self.tableView.tableHeaderView = self.pagingIndicatorView
            pagingIndicatorView.startAnimating()
            timer = NSTimer.scheduledTimerWithTimeInterval(poolingInterval, target: self, selector: #selector(self.stopIndicator(_:)), userInfo: nil, repeats: true)
            
        }
    }
    
    func stopIndicator (sender: AnyObject? ) {
        
        //animationできなかったからパッともどってしまう〜う〜ん
        self.tableView.tableHeaderView = nil
        pagingIndicatorView.stopAnimating()
    }
    
    
}


        