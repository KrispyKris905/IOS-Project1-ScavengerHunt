//
//  TaskListViewController.swift
//  Project 1
//
//  Created by Cristobal Elizarraraz on 2/16/25.
//
import UIKit

class TaskListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var emptyStateLabel: UILabel!

    var tasks = [Task]() {
        didSet {
            tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableHeaderView = UIView()
        tableView.dataSource = self
        tasks = Task.mockedTasks
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailSegue" {
            if let detailViewController = segue.destination as? TaskDetailViewController,
                // Get the index path for the current selected table view row.
               let selectedIndexPath = tableView.indexPathForSelectedRow {

                // Get the task associated with the slected index path
                let task = tasks[selectedIndexPath.row]

                // Set the selected task on the detail view controller.
                detailViewController.task = task
            }
        }
    }
}

extension TaskListViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as? TaskCell else {
            fatalError("Unable to dequeue Task Cell")
        }

        cell.configure(with: tasks[indexPath.row])

        return cell
    }
}
