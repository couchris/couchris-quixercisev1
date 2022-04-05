//
//  EquipmentController.swift
//  Quixercise
//
//  Created by Chris Couto on 2022-03-24.
//

import UIKit

class EquipmentController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let tableViewData = ["assisted","band","barbell","body weight","bosu ball","cable","dumbbell","elliptical machine","ez barbell","hammer","kettlebell","leverage machine","medicine ball","olympic barbell","resistance band","roller","rope","skierg machine","sled machine","smith machine","stability ball","stationary bike","stepmill machine","tire","trap bar","upper body ergometer","weighted","wheel roller"]
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.tableViewData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
            cell.textLabel?.text = self.tableViewData[indexPath.row]
        let margins = UIEdgeInsets(top: 40, left: 1, bottom: 40, right: 1)
        cell.contentView.frame = cell.contentView.frame.inset(by: margins)
        
        
            return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

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
