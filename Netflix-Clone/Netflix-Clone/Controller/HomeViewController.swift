//
//  HomeViewController.swift
//  Netflix-Clone
//
//  Created by Sagar Das on 05/03/23.
//

import UIKit


enum Section: Int {
    case TrendingMovies = 0
    case TrendingTV = 1
    case popular = 2
    case UpComming = 3
    case TopRated = 4
}

class HomeViewController: UIViewController {
    
    let sectionTitle: [String] = ["Trending Movie","Trending TV","Popular","UpComming Movie", "Top rated"]
    
    //MARK: -Properties
    private let homeFeedTable: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(CollectionViewTableViewCell.self, forCellReuseIdentifier: CollectionViewTableViewCell.identifier)
        return table
    }()
    
    
    

    //MARK: -Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavBar()
        view.backgroundColor = .systemBackground
        view.addSubview(homeFeedTable)
        
        homeFeedTable.delegate = self
        homeFeedTable.dataSource = self
        
        let headerView = HeroHeaderUIView(frame: CGRect(x: 0, y: 0, width: view.bounds.width , height: 450))
        homeFeedTable.tableHeaderView = headerView
        
     //   getTrendingMovies()
        getTrendingTV()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        homeFeedTable.frame = view.bounds
    }
    
    //MARK: -Selector
    
    //MARK: -API
    private func getTrendingMovies(){
        APICaller.shared.getTrendingMovie { result in
            switch result {
                
            case .success(let movie):
                print(movie)
            case .failure(let error):
                print(error)
            }
        }
    }
    
    private func getTrendingTV() {
        APICaller.shared.getTrendingTV { result in
            switch result {
                
            case .success(let tv):
                print(tv)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    //MARK: -Helper
    func configureNavBar() {
       
        let scaledImage = resizeImage(image: "applogo", width: 65, height: 65)
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: scaledImage, style: .done, target: self, action: nil)
        
        navigationItem.rightBarButtonItems = [
            UIBarButtonItem(image: UIImage(systemName: "person"), style: .done, target: self, action: nil),
            UIBarButtonItem(image: UIImage(systemName: "play.rectangle"), style: .done, target: self, action: nil)
        ]
        
        navigationController?.navigationBar.tintColor = .white
        
    }
    
    
    func resizeImage(image:String, width:Int, height:Int) -> UIImage {
        var image = UIImage(named: image)
        let targetSize = CGSize(width: width, height: height)
        
        let widthScaleRatio = targetSize.width / image!.size.width
        let heightScaleRatio = targetSize.height / image!.size.height
        
        let scaleFactor = min(widthScaleRatio, heightScaleRatio)
        
        let scaledImageSize = CGSize(
            width: image!.size.width * scaleFactor,
            height: image!.size.height * scaleFactor
        )
        
        let renderer = UIGraphicsImageRenderer(size: scaledImageSize)
        var scaledImage = renderer.image { _ in
            image!.draw(in: CGRect(origin: .zero, size: scaledImageSize))
        }
        scaledImage = scaledImage.withRenderingMode(.alwaysOriginal)
        
        return scaledImage
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionTitle.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CollectionViewTableViewCell.identifier, for: indexPath) as? CollectionViewTableViewCell else {
            return UITableViewCell()
        }
        switch indexPath.section {
            
        case Section.TrendingMovies.rawValue:
            APICaller.shared.getTrendingMovie { result in
                switch result {
                    
                case .success(let titles):
                    cell.configure(with: titles)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
            
        case Section.TrendingTV.rawValue:
            APICaller.shared.getTrendingTV { result in
                switch result {
                    
                case .success(let title):
                    cell.configure(with: title)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        case Section.popular.rawValue:
            APICaller.shared.getPopularMovie { result in
                switch result {
                    
                case .success(let title):
                    cell.configure(with: title)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        case Section.UpComming.rawValue:
            APICaller.shared.getUpcommingMovies { result in
                switch result {
                    
                case .success(let title):
                    cell.configure(with: title)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        case Section.TopRated.rawValue:
            APICaller.shared.getTopRating { result in
                switch result {
                    
                case .success(let title):
                    cell.configure(with: title)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        default:
            return UITableViewCell()
        }
       
      return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitle[section]
    }
   
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let header = view as? UITableViewHeaderFooterView else { return }
        header.textLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        header.textLabel?.frame = CGRect(x: header.bounds.origin.x + 20, y: header.bounds.origin.y, width: 100, height: header.bounds.height)
        header.textLabel?.tintColor = .white
        header.textLabel?.text = header.textLabel?.text?.capitalizeFirstLeter()
    }
    /* when we scroll up navigation bar will disapear and when we scroll down navigation bar will appear again*/
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let defaultOffset = view.safeAreaInsets.top
        let offset = scrollView.contentOffset.y + defaultOffset
        navigationController?.navigationBar.transform = .init(translationX: 0, y: -offset )
    }
}
