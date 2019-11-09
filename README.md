# ServiceGithub v0.0.2
This library will help to work with GitHub OAuth.

How to use this pod:
 - You need to get client_id and client_secret your app.
 - You have to find out url_callback your app.
 - Configure your app by add:
     ```swift
        GithubAPI.configure(clientID: "", clientSecret: "", redirectURL: "")
     ```
 - Add func in AppDelegate.swift:
    ```swift
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        
        GithubAPI.shared.handleOpenUrl(url: url)
        
        return true
    }
    ```
 - Use funcs to login, logout and get repositories:
    ```swift
    - GithubAPI.shared.login().
    - GithubAPI.shared.logout().
    - GithubAPI.shared.getAllRepositories().
    - GithubAPI.shared.getStarredRepositories().
    ```
