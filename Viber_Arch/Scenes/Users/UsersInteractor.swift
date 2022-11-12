//
//  UsersInteractor.swift
//  Viber_Arch
//
//  Created by abdrahman on 06/11/2022.
//

import Foundation

class UsersInteractor: UsersInteractorInputProtocol{
    
    weak var presenter: UsersInteractorOutputProtocol?
    
    private let usersWorker = UsersWorker()
    
    func getUsers() {
        usersWorker.getUsers { [weak self] result in
            guard let self = self else {return}
            switch result{
            case .success(let users):
                self.presenter?.usersFetchedSuccessfully(users: users)
                
            case .failure(let error): break
                self.presenter?.usersFetchingFailedWithError(error: error)
            }
        }
    }
    
}
