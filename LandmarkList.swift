/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing a list of landmarks.
*/

import SwiftUI

struct LandmarkList: View {
    let col:[GridItem] = Array(repeating: .init(.flexible(), spacing: 8), count: 1)
    var body: some View {
        NavigationView {
            List(landmarks2) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark1: landmark)
                } label: {
                    LandmarkRow(landmark1: landmark)
                }
            }
            .navigationTitle("Food Banks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
//        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
//                .previewDevice(PreviewDevice(rawValue: deviceName))
//                .previewDisplayName(deviceName)
        }
    }

