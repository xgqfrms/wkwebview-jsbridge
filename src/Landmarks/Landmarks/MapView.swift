//
//  MapView.swift
//  Landmarks
//
//  Created by 夏凌晨 on 2020/10/28.
//  Copyright © 2020 webgeeker. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
//  var body: some View {
//    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//  }
  func makeUIView(context: Context) -> MKMapView {
    MKMapView(frame: .zero)
  }
  func updateUIView(_ uiView: MKMapView, context: Context) {
    let coordinate = CLLocationCoordinate2D(latitude: 34.011286, longitude: -116.166868)
    let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
    let region = MKCoordinateRegion(center: coordinate, span: span)
    uiView.setRegion(region, animated: true)
  }
}

struct MapView_Previews: PreviewProvider {
  static var previews: some View {
    MapView()
  }
}


/*

UIViewRepresentable协议具有两个需要添加的要求：
创建MKMapView的makeUIView（context:)方法
和配置视图并响应所有更改的updateUIView（_：context :)方法。

*/
