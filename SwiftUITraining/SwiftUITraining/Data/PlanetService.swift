//
//  PlanetService.swift
//  SwiftUITraining
//
//  Created by Emiliano Alvarez on 06/06/2020.
//  Copyright © 2020 Coolblue. All rights reserved.
//

import Foundation
import Alamofire

protocol PlanetServiceProtocol {
    func planets(closure: @escaping ([Planet]) -> Void)
}

class PlanetService: PlanetServiceProtocol {

    private let url = "https://y3fsc8hysh.execute-api.us-east-2.amazonaws.com/training/planets"

    func planets(closure: @escaping ([Planet]) -> Void) {
        AF.request(url).responseDecodable(of: [Planet].self) { response in
            switch response.result {
            case .success(let planets):
                closure(planets)
            case .failure(let error):
                print(error)
            }
        }
    }
}
