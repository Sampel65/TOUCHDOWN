//
//  CustomShapes.swift
//  TouchDown
//
//  Created by Sampel on 04/04/2023.
//

import SwiftUI

struct CustomShapes: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}

struct CustomShapes_Previews: PreviewProvider {
    static var previews: some View {
        CustomShapes()
            .previewLayout(.fixed(width: 4248, height: 120))
            .padding()
    }
}
