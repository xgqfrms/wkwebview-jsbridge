//
//  ContentView.swift
//  Landmarks
//
//  Created by 夏凌晨 on 2020/10/27.
//  Copyright © 2020 webgeeker. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      MapView()
        .edgesIgnoringSafeArea(.top)
        .frame(height: 300)
      CircleImage()
        .offset(y: -130)
        .padding(.bottom, -130)
      VStack(alignment: .leading) {
        Text("Turtle Rock")
          .font(.title)
        HStack {
          Text(/*@START_MENU_TOKEN@*/"Joshua Tree National Park"/*@END_MENU_TOKEN@*/)
            .font(.subheadline)
          Spacer()
          Text("California")
            .font(.subheadline)
        }
      }
      .padding(.all)
      Spacer()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

/*
 
 默认情况下，SwiftUI 视图文件声明两个结构。
 第一种结构符合View协议，并描述了视图的内容和布局。
 第二个结构声明该视图的预览。
 
å*/
