//
//  ImageLoader.swift
//  InfiniteScrolling
//
//  Created by Alok Sinha on 2022-05-15.
//

import Foundation

typealias Root = [FeedImage]

protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage] , Error>
    func loadImages(url: URL, completion: @escaping (FeedLoader.Result) -> Void)
}


protocol FeedImageDataLoader {
    typealias Result = Swift.Result<Data, Error>
    func loadImageData(from url: URL, completion: @escaping (Result) -> Void)
}