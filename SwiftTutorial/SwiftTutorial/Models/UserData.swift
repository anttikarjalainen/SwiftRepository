//
//  UserData.swift
//  SwiftTutorial
//
//  Created by Antti Karjalainen on 20/01/2020.
//  Copyright © 2020 Antti Karjalainen. All rights reserved.
//

import SwiftUI
import Combine
final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    
    @Published var landmarks = landmarkData
    
}
