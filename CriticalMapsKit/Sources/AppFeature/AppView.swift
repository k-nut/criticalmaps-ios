//
//  File.swift
//  
//
//  Created by Malte on 16.06.21.
//

import ComposableArchitecture
import MapFeature
import SwiftUI
import Styleguide

public struct AppView: View {
  let store: Store<AppState, AppAction>
  @ObservedObject var viewStore: ViewStore<AppState, AppAction>
  @Environment(\.colorScheme) var colorScheme
  
  let minHeight: CGFloat = 56
  
  public init(store: Store<AppState, AppAction>) {
    self.store = store
    self.viewStore = ViewStore(store)
  }
  
  public var body: some View {
    ZStack {
      MapFeatureView(
        store: store.scope(
          state: \.mapFeatureState,
          action: AppAction.map
        )
      )
      VStack {
        Spacer()
        HStack {
          UserTrackingButton(
            store: store.scope(
            state: { $0.mapFeatureState.userTrackingMode },
              action: { AppAction.map(.userTracking($0)) }
            )
          )
          .frame(maxWidth: .infinity, minHeight: minHeight)
          menuSeperator
          Button(
            action: {},
            label: {
              Image(systemName: "bubble.left")
                .iconModifier()
            }
          )
          .frame(maxWidth: .infinity, minHeight: minHeight)
          menuSeperator
          Button(
            action: {},
            label: {
              Image(systemName: "exclamationmark.square")
                .iconModifier()
            }
          )
          .frame(maxWidth: .infinity, minHeight: minHeight)
          menuSeperator
          Button(
            action: {},
            label: {
              Image(systemName: "gearshape")
                .iconModifier()
            }
          )
          .frame(maxWidth: .infinity, minHeight: minHeight)
        }
        .background(colorScheme == .light ? .white : Color.hex(0x45474D))
        .clipShape(RoundedRectangle(cornerRadius: 18))
        .modifier(ShadowModifier())
        .padding([.leading, .trailing])
        .padding(.bottom, 28)
      }
      .frame(maxWidth: 400)
    }
    .onAppear { viewStore.send(.onAppear) }
  }
  
  private var menuSeperator: some View {
    Color.hex(0xDADCE0)
      .frame(width: 1, height: minHeight)
  }
  
  struct ShadowModifier: ViewModifier {
    @Environment(\.colorScheme) var colorScheme
    
    func body(content: Content) -> some View {
      if colorScheme == .light {
        content
          .shadow(color: Color.black.opacity(0.2), radius: 6, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
      } else {
        content
      }
    }
  }
}

// MARK: Preview
struct AppView_Previews: PreviewProvider {
  static var previews: some View {
    AppView(store: Store<AppState, AppAction>(
      initialState: AppState(),
      reducer: appReducer,
      environment: AppEnvironment(
        service: .noop,
        idProvider: .noop,
        mainQueue: .failing
      )
    )
    )
  }
}
