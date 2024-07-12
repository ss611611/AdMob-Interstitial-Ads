//
//  AdMob_Interstitial_AdsApp.swift
//  AdMob Interstitial Ads
//
//  Created by Jackie Lu on 2024/7/12.
//

import SwiftUI
import GoogleMobileAds

class AppDelegate:NSObject,UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        GADMobileAds.sharedInstance().start()
        return true
    }
}

@main
struct AdMob_Interstitial_AdsApp: App {
    
    @StateObject var interstitialAdsManager = InterstitialAdsManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(interstitialAdsManager)
                .onAppear {
                    interstitialAdsManager.loadInterstitialAd()
                }
        }
    }
}
