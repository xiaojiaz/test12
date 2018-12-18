//
//  ViewController.swift
//  coreDataDemo
//
//  Created by mac on 2018/12/15.
//  Copyright © 2018年 mac. All rights reserved.
//

import UIKit
import  CoreData
class ViewController: UIViewController {

    @IBOutlet var name: UITextField!
    @IBOutlet var phone: UITextField!
    
    let appdelegate = UIApplication.shared.delegate as! AppDelegate
    let content = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    override func viewDidLoad() {
        super.viewDidLoad()
        //var person:Person?
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func can(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func done(_ sender: Any) {
        let person = Person(context: content)
        person.name = name.text!
        person.phone = phone.text!
        appdelegate.saveContext()
        dismiss(animated: true, completion: nil)
    }
    @IBAction func add(_ sender: Any) {
        let person = Person(context: content)
        person.name = name.text!
        person.phone = phone.text!
        appdelegate.saveContext()
    }
    
    @IBAction func updat(_ sender: Any) {
        let fetch:NSFetchRequest<Person> = Person.fetchRequest()
        fetch.predicate = NSPredicate(format: "name=%@", name.text!)
        let person = try? content.fetch(fetch)
        if let p = person?.first{
            p.phone = phone.text!
            appdelegate.saveContext()
        }
    }
    @IBAction func de(_ sender: Any) {
        let fetch:NSFetchRequest<Person> = Person.fetchRequest()
        fetch.predicate = NSPredicate(format: "name=%@", name.text!)
        let person = try? content.fetch(fetch)
        if let p = person?.first{
            content.delete(p)
            appdelegate.saveContext()
        }
    }
    @IBAction func qu(_ sender: Any) {
        let fetch:NSFetchRequest<Person> = Person.fetchRequest()
        fetch.predicate = NSPredicate(format: "name=%@", name.text!)
        let person = try? content.fetch(fetch)
        if let p = person?.first{
            phone.text = p.phone
        }
    }
    
}

