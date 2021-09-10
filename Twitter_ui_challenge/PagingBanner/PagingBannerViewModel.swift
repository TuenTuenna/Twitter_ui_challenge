//
//  PagingBannerViewModel.swift
//  Twitter_ui_challenge
//
//  Created by Jeff Jeong on 2021/09/10.
//

import Foundation
import Combine

//class PagingBannerViewModel: ObservableObject {
//    @Published var bannerType: BannerContentType = .first
//    
//    private var cancellables = Set<AnyCancellable>()
//    
//    init() {
//        Timer.publish(every: 2, on: .main, in: .default)
//            .autoconnect()
//            .receive(on: DispatchQueue.main)
//            .sink { [weak self] _ in
//                guard let self = self else { return }
//                self.bannerType = self.bannerType.next()
//            }
//            .store(in: &cancellables)
//    }
//}
