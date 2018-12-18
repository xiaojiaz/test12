//
//  personViewController.swift
//  coreDataDemo
//
//  Created by mac on 2018/12/16.
//  Copyright © 2018年 mac. All rights reserved.
//

import UIKit

class personViewController: UIViewController {
    var person:Person?
    @IBOutlet var name: UILabel!
    @IBOutlet var phone: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = person?.name
        phone.text = person?.phone
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
