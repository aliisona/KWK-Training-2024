//
//  ContentView.swift
//  Training-To-Do
//
//  Created by Scholar on 5/12/24.
//

import SwiftUI

struct ContentView: View {
    @State var toDoItems: [ToDoItem] = []
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
                ForEach (toDoItems) { toDoItem in
                    if toDoItem.isImportant == true {
                        Text("‼️" + toDoItem.title)
                    } else {
                        Text(toDoItem.title)
                    }
                }
            }
            
        
            if showNewTask {
                NewToDoView(title: "", isImportant: false, toDoItems: $toDoItems, showNewTask: $showNewTask)
                    .transition(AnyTransition.move(edge: .top).combined(with: .opacity).animation(.easeInOut(duration: 0.7)))

            }
           
        }
    }
}

#Preview {
    
    ContentView()
}
