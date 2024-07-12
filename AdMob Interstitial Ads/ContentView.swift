//
//  ContentView.swift
//  AdMob Interstitial Ads
//
//  Created by Jackie Lu on 2024/7/12.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var interstitialAdsManager: InterstitialAdsManager
    var body: some View {
        VStack {
            Button(action: showInterstitialAd) {
                Text("Show Interstitial Ad")
            }
        }
        .padding()
    }
    func showInterstitialAd() {
        interstitialAdsManager.displayInterstitialAd()
    }
}

#Preview {
    ContentView()
}
