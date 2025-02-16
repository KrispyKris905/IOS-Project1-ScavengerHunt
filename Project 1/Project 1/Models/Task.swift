//
//  Task.swift
//  Project 1
//
//  Created by Cristobal Elizarraraz on 2/16/25.
//
import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Dress up in fancy clothes 👗",
                 description: "Wear the fanciest clothes to your final exams just because you can"),
            Task(title: "Black Friday shop with friends",
                 description: "Wake up at 3 AM and go black friday shopping with your friends in San Jose!"),
            Task(title: "Practice Snowboarding",
                 description: "Go to the snowqualmi slopes and practice snowboarding basics such as stopping and turning(with friends of course!)")
        ]
    }
}
