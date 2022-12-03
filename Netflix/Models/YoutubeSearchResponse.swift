//
//  YoutubeSearchResponse.swift
//  Netflix
//
//  Created by Abdulmajit Kubatbekov on 03.12.22.
//

import Foundation


struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: IdVideoElement
}

struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}
