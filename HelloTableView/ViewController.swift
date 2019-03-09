//
//  ViewController.swift
//  HelloTableView
//
//  Created by 曹炎平 on 2019/3/9.
//  Copyright © 2019 Peter. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    let fruitArray = ["apple", "banana", "mango", "watermelon"]
    let colorArray = ["red", "green", "blue"]
    //1
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2    }
    //2
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0{
            return fruitArray.count
        }else{
            return colorArray.count
        }
    }
    //3
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = UITableViewCell()
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        if indexPath.section == 0{
            cell.textLabel?.text = fruitArray[indexPath.row]
        }else{
            cell.textLabel?.text = colorArray[indexPath.row]
        }
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "FRUIT"
        }else{
            return "COLOR"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

