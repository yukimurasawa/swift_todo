//
//  QuickNewTask.swift
//  Todo
//
//  Created by 村澤祐樹 on 2020/10/08.
//  Copyright © 2020 niki. All rights reserved.
//

import SwiftUI

struct QuickNewTask: View {
    var category: TodoEntity.Category
    
    @State var newTask: String = ""
    @Environment(\.managedObjectContext) var viewContext
    
    fileprivate func addNewTask() {
        TodoEntity.create(in: self.viewContext, category: self.category, task: self.newTask)
        self.newTask = ""
    }
    
    fileprivate func cancelTask() {
        self.newTask = ""
    }
    
    var body: some View {
        HStack {
            TextField("新しいタスク", text: $newTask){
                self.addNewTask()
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: {
                self.addNewTask()
            }) {
                Text("追加")
            }
            Button(action: {
                self.cancelTask()
            }) {
                Text("Cancel").foregroundColor(.red)
            }
        }
    }
}

struct QuickNewTask_Previews: PreviewProvider {
    static let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    static var previews: some View {
        QuickNewTask(category: .ImpNUrg_2nd).environment(\.managedObjectContext, context)
    }
}
