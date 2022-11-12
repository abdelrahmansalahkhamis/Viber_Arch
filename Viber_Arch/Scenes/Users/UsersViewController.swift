//
//  UsersViewController.swift
//  Viber_Arch
//
//  Created by abdrahman on 06/11/2022.
//

import UIKit

class UsersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UsersViewProtocol {
    
    var presenter: UsersPresenterProtocol?
    
    
    @IBOutlet weak var usersTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        presenter?.viewDidLoad()
    }
    
    func setupTableView(){
        usersTableView.delegate = self
        usersTableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.numberOfRows ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as! UsersTableViewCell
        presenter?.configure(cell: cell, indexPath: indexPath) 
        return cell
    }
    
    func showLoadingIndictor() {
        print("should show loading indicator")
    }
    
    func hideLoadingIndictor() {
        print("should hide loading indicator")
    }
    
    func reloadData() {
        usersTableView.reloadData()
    }
}
