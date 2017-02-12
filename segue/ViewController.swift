//
//  ViewController.swift
//  segue
//
//  Created by jote on 2017/02/11.
//  Copyright © 2017年 jote. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var friendsTable: UITableView!
    @IBAction func unwindToTop(segue: UIStoryboardSegue) {
    }

    
    let friendsInfo = ["アルパカ", "ジャガー", "トキ"]
    var selectName: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        friendsTable.dataSource = self
        friendsTable.delegate = self

        let nib = UINib.init(nibName: "FrendsTableViewCell", bundle: nil)
        friendsTable.register(nib, forCellReuseIdentifier: "frendsCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondSegue" {
            let vc = segue.destination as! SecondViewController
            vc.name = sender as! String
        }
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = friendsTable.dequeueReusableCell(withIdentifier: "frendsCell") as! FrendsTableViewCell
        cell.name = friendsInfo[indexPath.item]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendsInfo.count
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 30
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toSecondSegue", sender: self.friendsInfo[indexPath.item])
    }
}

