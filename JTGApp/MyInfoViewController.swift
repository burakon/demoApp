

import UIKit

class MyInfoViewController: UITableViewController ,UIImagePickerControllerDelegate ,UINavigationControllerDelegate{
    
    private var myData = MyData.Me
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "MyPage"
        
        tableView.registerNib(UINib(nibName: String(MyInfoCell) ,bundle: nil), forCellReuseIdentifier: String(MyInfoCell))
        
        //一定値を与えないとUITableViewAutomaticDimensionがなぜか機能しない
        tableView.estimatedRowHeight = 83
        //うまく高さ調節してくれるやつ
        tableView.rowHeight = UITableViewAutomaticDimension
        
        //横棒を描画しない
        tableView.separatorStyle = .None
        
        print("ViewDidLoad")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(String(MyInfoCell), forIndexPath: indexPath) as! MyInfoCell
        
        cell.configure(withMyData: myData)
        
        
        return cell
    }
    
    
    func tappedChangePhotoButton(senger:UIButton){
        
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .PhotoLibrary
        imagePickerController.delegate = self
        presentViewController(imagePickerController, animated: true, completion: nil)
    }
    
    // MARK: UIImagePickerControllerDelegate
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        myData.image = info[UIImagePickerControllerOriginalImage] as! UIImage
        dismissViewControllerAnimated(true, completion: nil)
        
        //TableView再描画
        tableView.reloadData()
    }
}
