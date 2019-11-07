//
//  ViewController.swift
//  Example
//
//  Created by Zhassulan Aimukhambetov on 10/24/19.
//  Copyright © 2019 Zhassulan Aimukhambetov. All rights reserved.
//

import UIKit
import ServiceGithub

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GithubAPI.configure(clientID: "eb2ac700f74302ac3c86", clientSecret: "06830d9459d045d63e7d1337a49377a96caddb4c", redirectURL: "Example://login.page")
        
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        GithubAPI.shared.login()
    }
    
    @IBAction func getReposButton(_ sender: UIButton) {
        
        GithubAPI.shared.getAllRepositories { (repositories) in
            for repository in repositories {
                if let reposName = repository.name {
                    print(reposName)
                }
            }
        }
    }
    
    @IBAction func getStarredButton(_ sender: UIButton) {
        GithubAPI.shared.getStarredRepositories { (repositories) in
            for repository in repositories {
                if let reposName = repository.name {
                    print(reposName)
                }
            }
        }
    }
        
        @IBAction func logoutButton(_ sender: UIButton) {
            GithubAPI.shared.logout()
        }
        
}

