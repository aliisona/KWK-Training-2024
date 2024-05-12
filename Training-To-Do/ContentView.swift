//
//  ContentView.swift
//  Training-To-Do
//
//  Created by Scholar on 5/12/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Query var toDos: [ToDoItem]
    @Environment(\.modelContext) var modelContext

    @State private var showNewTask = false
    
    var body: some View {
        VStack{
            HStack{
                
                Text("To Do List")
                    .font(.system(size:40))
                    .fontWeight(.black)
                    .padding()
                Spacer()
                Button(action: {
                    self.showNewTask = true

                    
                }) {
                    Text("+")
                }.padding()
            }
            .padding()
            
            List {
                ForEach (toDos) { toDoItem in
                    if toDoItem.isImportant == true {
                        Text("‼️" + toDoItem.title)
                    } else {
                        Text(toDoItem.title)
                    }
                    
                }.onDelete(perform: deleteToDo)

            }
            
        
            if showNewTask {
                NewToDoView(toDoItem: ToDoItem(title: "", isImportant: false), showNewTask: $showNewTask)
            }
           
        }
    }
    func deleteToDo(at offsets: IndexSet) {
        for offset in offsets {
            let toDoItem = toDos[offset]
            modelContext.delete(toDoItem)
        }
    }
    
}

//#Preview {
//    
//    ContentView()
//}
