//
//  Lungs.swift
//  HumanAnatomy
//
//  Created by Patrick Jeremiah on 29/03/23.
//

import SwiftUI
import RealityKit

struct Lungs: View {
    var body: some View {
        LungsAR().ignoresSafeArea(.all)
    }
}

struct Lungs_Previews: PreviewProvider {
    static var previews: some View {
        Lungs()
    }
}

struct LungsAR: UIViewRepresentable {

    func makeUIView(context: Context) -> ARView {

        let arView = ARView(frame: .zero)

        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadLungs()

        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)

        return arView

    }

    func updateUIView(_ uiView: ARView, context: Context) {}

}

#if DEBUG
struct LungsAR_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
