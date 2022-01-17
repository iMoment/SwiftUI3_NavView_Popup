//
//  Task.swift
//  NavView_Popup
//
//  Created by Stanley Pan on 2022/01/17.
//

import Foundation

// MARK: Task Model
struct Task: Identifiable {
    var id: String = UUID().uuidString
    var taskTitle: String
    var taskDescription: String
}

// MARK: Sample Tasks
var tasks: [Task] = [
    Task(taskTitle: "Meeting", taskDescription: "Discuss team task for the day."),
    Task(taskTitle: "Icon set", taskDescription: "Edit icons for team task for next week."),
    Task(taskTitle: "Prototype", taskDescription: "Make and send prototype."),
    Task(taskTitle: "Check assets", taskDescription: "Start checking the assets."),
    Task(taskTitle: "Team party", taskDescription: "Have fun with teammates."),
    Task(taskTitle: "Client meeting", taskDescription: "Explain project to client."),
    Task(taskTitle: "Next project", taskDescription: "Discuss next project with team."),
    Task(taskTitle: "App proposal", taskDescription: "Meet client for next App proposal."),
]
