//
//  ContentView.swift
//  SignatureViewDemo
//
//  Created by Selim Arda Eroğlu on 12.02.2021.
//

import SwiftUI
import SwiftSignatureView

struct ContentView: View {
    var body: some View {
        DrawView()
    }
}


struct DrawView: UIViewRepresentable {
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    
    let signatureView = SwiftSignatureView()
    
    func makeUIView(context: Context) -> SwiftSignatureView {
        self.signatureView.delegate = context.coordinator
        return signatureView
    }
    
    func updateUIView(_ uiViewController: SwiftSignatureView, context: Context) {
        //
    }
    
    class Coordinator: NSObject,SwiftSignatureViewDelegate {
        
        var parent: DrawView
        
        init(_ parent: DrawView){
            self.parent = parent
        }
        
        func swiftSignatureViewDidDrawGesture(_ view: ISignatureView, _ tap: UIGestureRecognizer) {
            print("changed")
        }
        
        func swiftSignatureViewDidDraw(_ view: ISignatureView) {
            print("draw was finished")
        }
        
        
    }
    
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
