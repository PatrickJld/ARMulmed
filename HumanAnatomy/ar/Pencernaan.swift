//
//  Pencernaan.swift
//  HumanAnatomy
//
//  Created by Patrick Jeremiah on 29/03/23.
//

import SwiftUI
import RealityKit

struct Pencernaan: View {
    var body: some View {
        DigestiveAR().ignoresSafeArea(.all)
    }
}

struct Pencernaan_Previews: PreviewProvider {
    static var previews: some View {
        Pencernaan()
    }
}

struct DigestiveAR: UIViewRepresentable {

    func makeUIView(context: Context) -> ARView {

        let arView = ARView(frame: .zero)

        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadDigestiveSystem()

        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)

        return arView

    }

    func updateUIView(_ uiView: ARView, context: Context) {}

}

#if DEBUG
struct DigestiveAR_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
