import Foundation

struct Constant {
    static let API_Key = "04a896eae597412a6b31c49e1ac1649f"
    static let baseURL = "https://api.themoviedb.org"
    static let YoutubeAPI_KEY = "AIzaSyDfxYf2mlBkyPQB-8P4gdF8piimuNGHiSw"
    static let Youtube_BaseURL = "https://youtube.googleapis.com/youtube/v3/search?"
}

enum APIError: Error {
    case faildToGetData
}

class APICaller {
    
    static let shared = APICaller()
    
    func getTrendingMovie(completion: @escaping (Result<[Title], Error>) ->Void) {
        guard let url = URL(string: "\(Constant.baseURL)/3/trending/movie/day?api_key=\(Constant.API_Key)") else { return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data , error == nil else { return}
            
            //converting data into json format
            do {
             //   let result = try JSONSerialization.jsonObject(with: data,options: .fragmentsAllowed)
                let result = try JSONDecoder().decode(TrandingTitleResponse.self, from: data)
            //    print(result.results[0].original_title)
                completion(.success(result.results))
            }catch {
                completion(.failure(APIError.faildToGetData))
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
    
    
//    func getTrandingTV(completion: @escaping (Result<[Title], Error>)-> Void) {
//        guard let url = URL(string: "\(Constant.baseURL)/3/trending/tv/day?api_key=\(Constant.API_Key)") else { return}
//
//        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
//
//            guard let data = data, error == nil else {return}
//
//            do {
////                let result = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
////                print(result)
//                let result = try JSONDecoder().decode(TrandingTitleResponse.self, from: data)
//                completion(.success(result.results))
//
//            }catch {
//                completion(.failure(APIError.faildToGetData))
//                print(error.localizedDescription)
//            }
//        }
//
//        task.resume()
//    }
    func getTrendingTV(completion: @escaping(Result<[Title],Error>) -> Void) {
        guard let url = URL(string: "\(Constant.baseURL)/3/trending/tv/day?api_key=\(Constant.API_Key)") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do{
//                let result = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
                let result = try JSONDecoder().decode(TrandingTitleResponse.self, from: data)
                completion(.success(result.results))
            }catch{
                completion(.failure(APIError.faildToGetData))
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
    
    
    
    func getUpcommingMovies(completion: @escaping (Result<[Title], Error>)-> Void) {
        
        guard let url = URL(string: "\(Constant.baseURL)/3/movie/upcoming?api_key=\(Constant.API_Key)&language=en-US&page=1") else { return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            
            guard let data = data , error == nil else { return}
            
            do {
                let result = try JSONDecoder().decode(TrandingTitleResponse.self, from: data)
                completion(.success(result.results))
            }catch {
                completion(.failure(APIError.faildToGetData))
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
    
    //https://api.themoviedb.org/3/movie/popular?api_key=04a896eae597412a6b31c49e1ac1649f&language=en-US&page=1
    
    func getPopularMovie(completion: @escaping (Result<[Title], Error>)-> Void) {
        
        guard let url = URL(string: "\(Constant.baseURL)/3/movie/popular?api_key=\(Constant.API_Key)&language=en-US&page=1") else { return}
       
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
        
            guard let data = data , error == nil else { return}
           
            do {
                let result = try JSONDecoder().decode(TrandingTitleResponse.self, from: data)
                
                completion(.success(result.results))
            } catch {
                completion(.failure(APIError.faildToGetData))
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
    
    func getTopRating(completion: @escaping (Result<[Title], Error>)-> Void) {
        
        guard let url = URL(string: "\(Constant.baseURL)/3/movie/top_rated?api_key=\(Constant.API_Key)&language=en-US&page=1") else { return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            
            guard let data = data , error == nil else { return}
            
            do {
                let result = try JSONDecoder().decode(TrandingTitleResponse.self, from: data)
                completion(.success(result.results))
                
            }catch {
                completion(.failure(APIError.faildToGetData))
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
    
    //https://api.themoviedb.org/3/discover/movie?api_key=<<api_key>>&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1&with_watch_monetization_types=flatrate
    func discoverMovie(completion: @escaping (Result<[Title], Error>)-> Void) {
        
        guard let url = URL(string: "\(Constant.baseURL)/3/discover/movie?api_key=\(Constant.API_Key)&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1&with_watch_monetization_types=flatrate") else { return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            
            guard let data = data , error == nil else { return}
            
            do {
                let result = try JSONDecoder().decode(TrandingTitleResponse.self, from: data)
                completion(.success(result.results))
                
            }catch {
                completion(.failure(APIError.faildToGetData))
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
    
    
    func search(with query: String,completion: @escaping (Result<[Title], Error>)-> Void) {
        
        guard let query = query.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) else { return}
        
        guard let url = URL(string: "\(Constant.baseURL)/3/search/movie?api_key=\(Constant.API_Key)&query=\(query)") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            
            guard let data = data , error == nil else { return}
            
            do {
                let result = try JSONDecoder().decode(TrandingTitleResponse.self, from: data)
                completion(.success(result.results))
                
            }catch {
                completion(.failure(APIError.faildToGetData))
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
    
//    func getYoutubeMovie(with query: String,completion: @escaping (Result<VideoElement, Error>)-> Void) {
//
//
//        guard let query = query.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) else { return}
//
//        guard let url = URL(string: "\(Constant.Youtube_BaseURL)q=\(query)&key=\(Constant.YoutubeAPI_KEY)") else {
//            return
//        }
//
//        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
//
//            guard let data = data , error == nil else { return}
//
//            do {
//                let decoder = JSONDecoder()
//                decoder.keyDecodingStrategy = .convertFromSnakeCase
//                let results = try decoder.decode(YoutubeSearchResponce.self, from: data)
////                let result = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
//                completion(.success(results.items[0]))
//
//            }catch {
//
//                completion(.failure(error))
//                print(error.localizedDescription)
//            }
//        }
//        task.resume()
//
//    }
}
