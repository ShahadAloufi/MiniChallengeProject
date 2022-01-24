/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing the details for a landmark.
*/

import SwiftUI

struct LandmarkDetail: View {
    var landmark1: Landmark2

    var body: some View {
        ScrollView {
            MapView2(coordinate: landmark1.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            CircleImage(image: landmark1.image)
                .offset(y: -130)
                .padding(.bottom, -160)

            VStack(alignment: .leading) {
                Text(landmark1.name)
                    .font(.title)

                HStack {
                    Text(landmark1.park)
                    Spacer()
                    Text(landmark1.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                .padding(1)

                Divider()

                Text("About \(landmark1.name)")
                    .padding(.bottom, 8)
                    .font(.title2)
                Text(landmark1.description)
            }
            .padding()
        }
        .navigationTitle(landmark1.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark1: landmarks2[0])
    }
}
