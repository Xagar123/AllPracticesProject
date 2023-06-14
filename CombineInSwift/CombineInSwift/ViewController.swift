//
//  ViewController.swift
//  CombineInSwift
//
//  Created by Sagar Das on 13/02/23.
//

import UIKit
import Combine

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    

    //MARK: -Properties
    private let tableView:UITableView = {
       let table = UITableView()
        table.register(TableViewCell.self , forCellReuseIdentifier: "cell")
        return table
    }()
    
    private var model = [String]()
    //creating single observer
    var observer: AnyCancellable?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = view.bounds
        
        observer = APICaller.shared.fetchCompanies()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                    
                case .finished:
                    print("Finished")
                case .failure(let error):
                    print(error)
                }
            }, receiveValue: { [weak self] value in // it will give value in success case
                self?.model = value
                self?.tableView.reloadData()
            })
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell else {
            fatalError()
        }
        
      //  cell.textLabel?.text = model[indexPath.row]
        return  cell
    }

}


