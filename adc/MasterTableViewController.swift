//
//  TableViewController.swift
//  adc
//
//  Created by tran duc anh on 10/10/18.
//  Copyright © 2018 tran duc anh. All rights reserved.
//

import UIKit

class MasterTableViewController: UITableViewController {
//    let dataForTableView = [("I have not failed. I’ve just found 10,000 ways that won’t work.","Thomas A. Edison"), ("A man is but the product of his thoughts. What he thinks, he becomes.","Mahatma Gandhi"), ("Amateurs sit and wait for inspiration, the rest of us just get up and go to work."," Stephen King"), ("Wisdom is not a product of schooling but of the lifelong attempt to acquire it.","Albert Einstein")]
    let dataForTableView = [("I have not failed. I’ve just found 10,000 ways that won’t work.","Thomas A. Edison"), ("A man is but the product of his thoughts. What he thinks, he becomes.","Mahatma Gandhi"), ("Amateurs sit and wait for inspiration, the rest of us just get up and go to work."," Stephen King"), ("Wisdom is not a product of schooling but of the lifelong attempt to acquire it.","Albert Einstein"),("Finish each day and be done with it. You have done what you could. Some blunders and absurdities no doubt crept in; forget them as soon as you can. Tomorrow is a new day. You shall begin it serenely and with too high a spirit to be encumbered with your old nonsense.","Ralph Waldo Emerson")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
//        tableView.rowHeight = UITableViewAutomaticDimension
//        tableView.estimatedRowHeight = 100
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataForTableView.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? TableViewCell
        cell?.numberOne.text = self.dataForTableView[indexPath.row].0
        cell?.numberTwo.text = self.dataForTableView[indexPath.row].1
        return cell!
    }

}
