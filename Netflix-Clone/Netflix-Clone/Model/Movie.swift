//
//  Movie.swift
//  Netflix-Clone
//
//  Created by Sagar Das on 30/03/23.
//

import Foundation

struct TrandingTitleResponse: Codable {
    let results:[Title]
}

struct Title: Codable {
    let id: Int
    let media_type: String?
    let original_name:String?
    let original_title:String?
    let poster_path:String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average:Double
}

/*
 results =     (
             {
         adult = 0;
         "backdrop_path" = "/ovM06PdF3M8wvKb06i4sjW3xoww.jpg";
         "genre_ids" =             (
             878,
             12,
             28
         );
         id = 76600;
         "media_type" = movie;
         "original_language" = en;
         "original_title" = "Avatar: The Way of Water";
         overview = "Set more than a decade after the events of the first film, learn the story of the Sully family (Jake, Neytiri, and their kids), the trouble that follows them, the lengths they go to keep each other safe, the battles they fight to stay alive, and the tragedies they endure.";
         popularity = "6789.789";
         "poster_path" = "/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg";
         "release_date" = "2022-12-14";
         title = "Avatar: The Way of Water";
         video = 0;
         "vote_average" = "7.736";
         "vote_count" = 6148;
     },
      
 */
