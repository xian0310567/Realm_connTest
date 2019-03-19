//
//  ViewController.swift
//  Realm_connTest
//
//  Created by dit on 2019. 3. 19..
//  Copyright © 2019년 dit. All rights reserved.
//

import UIKit
import Realm
import RealmSwift

class Todo: Object {
    @objc dynamic var title : String =  ""
    @objc dynamic var dueDate : Date!
}

class ViewController: UIViewController {
    
    func addTodo(title: String, dueDate: Date) {
        let todo = Todo()
        todo.title = title
        todo.dueDate = dueDate
        
        let realm = try! Realm()
        try! realm.write {
            realm.add(todo)
        }
//            실행. realm.write
        print("DB연결성공")
//        이번은 한번에 4개의 DB를 생성하니까 총 4번 실행
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        addTodo(title: "todo1", dueDate: Date())
        addTodo(title: "todo2", dueDate: Date())
        addTodo(title: "todo3", dueDate: Date())
        addTodo(title: "todo4", dueDate: Date())
        
        print(NSHomeDirectory())
//        Realm 파일의 경로를 알기위해 print로 출력해줌
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

