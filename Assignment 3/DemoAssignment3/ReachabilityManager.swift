//
//  ReachabilityManager.swift
//  DemoAssignment3
//
//  Created by promact on 17/03/23.
//


import Foundation
import SystemConfiguration

class ReachabilityManager {
    static let shared = ReachabilityManager()
    
    private let reachability = SCNetworkReachabilityCreateWithName(nil, "www.google.com")
    private var flags = SCNetworkReachabilityFlags()
    
    var isReachable: Bool {
        var reachabilityFlags = SCNetworkReachabilityFlags()
        SCNetworkReachabilityGetFlags(reachability!, &reachabilityFlags)
        return reachabilityFlags.contains(.reachable) && !reachabilityFlags.contains(.connectionRequired)
    }
    
    private init() {
        SCNetworkReachabilityGetFlags(reachability!, &flags)
    }
}
