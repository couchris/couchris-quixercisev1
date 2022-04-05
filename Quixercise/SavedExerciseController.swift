//
//  SavedExerciseController.swift
//  Quixercise
//
//  Created by Chris Couto on 2022-03-24.
//

import UIKit


class SavedExerciseController: UIViewController,
                               UITableViewDelegate, UITableViewDataSource{
    
    let tableViewData = ["barbell bent arm pullover","barbell drag curl","3/4 sit-up","kettlebell plyo push-up","floor fly (with barbell)","ring dips system"]
    
    let tableViewGifs = ["https://d205bpvrqc9yn1.cloudfront.net/1316.gif","https://d205bpvrqc9yn1.cloudfront.net/0038.gif","https://d205bpvrqc9yn1.cloudfront.net/0001.gif","https://d205bpvrqc9yn1.cloudfront.net/0545.gif","https://d205bpvrqc9yn1.cloudfront.net/0458.gif","https://d205bpvrqc9yn1.cloudfront.net/0677.gif"]
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableViewData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
            cell.textLabel?.text = self.tableViewData[indexPath.row]
        let margins = UIEdgeInsets(top: 40, left: 1, bottom: 40, right: 1)
        cell.contentView.frame = cell.contentView.frame.inset(by: margins)
        
        
        let imageURL = UIImage.gif(url: self.tableViewGifs[indexPath.row])
//            let imageView3 = UIImageView(image: imageURL)
//            imageView3.frame = CGRect(x: 20.0, y: 390.0, width: self.view.frame.size.width - 40, height: 150.0)
            
        cell.imageView?.image = imageURL
        
        
            return cell
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.register(UITableViewCell.self,
                               forCellReuseIdentifier: "TableViewCell")
        tableView.dataSource = self
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
