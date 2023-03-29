//
//  HumanBody.swift
//  HumanAnatomy
//
//  Created by Patrick Jeremiah on 29/03/23.
//

import SwiftUI
import RealityKit

struct HumanBody: View {
    var body: some View {
        HumanAR().ignoresSafeArea(.all)
    }
}

struct HumanBody_Previews: PreviewProvider {
    static var previews: some View {
        HumanBody()
    }
}

struct HumanAR: UIViewRepresentable {

    func makeUIView(context: Context) -> ARView {

        let arView = ARView(frame: .zero)

        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadHumanBody()

        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)

        return arView

    }

    func updateUIView(_ uiView: ARView, context: Context) {}

}

#if DEBUG
struct HumanAR_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
