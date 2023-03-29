//
//  Ear.swift
//  HumanAnatomy
//
//  Created by Patrick Jeremiah on 29/03/23.
//

import SwiftUI
import RealityKit

struct Ear: View {
    var body: some View {
        EarAR().ignoresSafeArea(.all)
    }
}

struct Ear_Previews: PreviewProvider {
    static var previews: some View {
        Ear()
    }
}

struct EarAR: UIViewRepresentable {

    func makeUIView(context: Context) -> ARView {

        let arView = ARView(frame: .zero)

        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadTelinga()

        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)

        return arView

    }

    func updateUIView(_ uiView: ARView, context: Context) {}

}

#if DEBUG
struct EarAR_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
