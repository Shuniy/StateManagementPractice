//
//  ContentView.swift
//  StateManagementPractice
//
//  Created by Shubham Kumar on 20/01/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var theTask:Task
    var body: some View {
        VStack {
            HStack {
                Image(systemName: theTask.isComplete ? "checkmark.square":"square")
                Text(theTask.name)
            }
//            ControlPanelButtonView(isComplete: self.$theTask.isComplete)
            ControlPanelButtonView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let previewTask = Task(name:"Check PluralSight", isComplete: false, lastCompleted: nil)
        ContentView().environmentObject(previewTask)
    }
}

struct ControlPanelButtonView: View {
//    @Binding var isComplete:Bool
    @EnvironmentObject var task:Task
    var body: some View {
        HStack {
            Button(action: {
                task.isComplete = true
            }){
                Text("Mark Complete!")
            }.padding()
            Button(action : {
                task.isComplete = false
            }) {
                Text("Reset")
            }.padding()
        }
    }
}
