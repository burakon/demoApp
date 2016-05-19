

import UIKit

class GuideDetailViewController: UITableViewController {
    
    var guide: Guide!
    
    private enum GuideDetail: Int {
        case Header, Profile, Button
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = guide.name
        
        tableView.registerNib(UINib(nibName: String(GuideCell), bundle:nil), forCellReuseIdentifier:String(GuideCell))
        tableView.registerNib(UINib(nibName: String(GuideProfileCell), bundle:nil), forCellReuseIdentifier:String(GuideProfileCell))
        tableView.registerNib(UINib(nibName: String(GuideStartButtonCell), bundle:nil), forCellReuseIdentifier:String(GuideStartButtonCell))

        tableView.estimatedRowHeight = 83
        //うまく高さ調節してくれるやつ
        tableView.rowHeight = UITableViewAutomaticDimension
        
        //横棒を描画しない
        tableView.separatorStyle = .None
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        switch GuideDetail(rawValue:indexPath.row)! {
        case .Header :
            let cell = tableView.dequeueReusableCellWithIdentifier(String(GuideCell),forIndexPath: indexPath) as! GuideCell
            cell.configure(withGuide: guide, selectionEnabled: false,accessoryEnabled: false)
            return cell
        case .Profile :
            let cell = tableView.dequeueReusableCellWithIdentifier(String(GuideProfileCell),forIndexPath: indexPath) as! GuideProfileCell
            cell.configure(withText: guide.profile)
            
            return cell
        case .Button :
            let cell = tableView.dequeueReusableCellWithIdentifier(String(GuideStartButtonCell),forIndexPath: indexPath) as! GuideStartButtonCell
            cell.configure(withGuide: guide)
            return cell
        
        }

      
    }
    
    func tappedGuideButton (sender: UIButton){
        
    print("チャット画面へsegue")
    }
    

}
