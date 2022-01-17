//
//  Extensions.swift
//  NavView_Popup
//
//  Created by Stanley Pan on 2022/01/17.
//

import Foundation
import SwiftUI

// MARK: Custom View Property Extension

extension View {
    func popupNavigationView<Content: View>(horizontalPadding: CGFloat = 40.0, show: Binding<Bool>, @ViewBuilder content: @escaping () -> Content) -> some View {
        return self
            .overlay {
                if show.wrappedValue {
                    GeometryReader { proxy in
                        let size = proxy.size
                        
                        NavigationView {
                            content()
                        }
                        .frame(width: size.width - horizontalPadding, height: size.height / 1.7, alignment: .center)
                        .cornerRadius(15)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    }
                }
            }
    }
}
