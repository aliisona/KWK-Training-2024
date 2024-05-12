//
//  NewToDoView.swift
//  Training-To-Do
//
//  Created by Scholar on 5/12/24.
//

import SwiftUI

struct NewToDoView: View {
    @State var title: String
    @State var isImportant: Bool
    @Binding var toDoItems: [ToDoItem]
    @Binding var showNewTask : Bool

    var body: some View {
        VStack{
            Text("Task title:")
                .font(.title)
                .fontWeight(.bold)
            TextField("Enter the task description...", text:$title)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(14)
                .padding()
            Toggle(isOn: $isImportant) {
                            Text("Is it important?")
                }
                .padding()
            
            Button(action: {
                self.addTask(title: self.title, isImportant: self.isImportant)
                self.showNewTask = false

            }) {
                Text("Add")
            }
            .padding()
        }
    }
    
    private func addTask(title: String, isImportant: Bool = false) {
            
            let task = ToDoItem(title: title, isImportant: isImportant)
            toDoItems.append(task)
    }
    
}

#Preview {
    NewToDoView(title: "", isImportant: false, toDoItems: .constant([]), showNewTask: .constant(true))
}
