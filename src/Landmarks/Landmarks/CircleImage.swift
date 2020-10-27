//
//  CircleImage.swift
//  Landmarks
//
//  Created by 夏凌晨 on 2020/10/28.
//  Copyright © 2020 webgeeker. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
  var body: some View {
    Image("turtlerock")
      .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
      .overlay(Circle().stroke(Color.white, lineWidth: 4))
      .shadow(radius: 10)
  }
}

struct CircleImage_Previews: PreviewProvider {
  static var previews: some View {
    CircleImage()
  }
}
