import ComposableArchitecture
import GuideFeature
import Helpers
import L10n
import MapFeature
import SettingsFeature
import SocialFeature
import Styleguide
import SwiftUI
import TwitterFeedFeature

public struct AppNavigationView: View {
  let store: Store<AppState, AppAction>
  @ObservedObject var viewStore: ViewStore<AppState, AppAction>
  @Environment(\.colorScheme) var colorScheme
  @Environment(\.accessibilityReduceTransparency) var reduceTransparency
  @Environment(\.colorSchemeContrast) var colorSchemeContrast
  
  let minHeight: CGFloat = 56
  
  public init(store: Store<AppState, AppAction>) {
    self.store = store
    self.viewStore = ViewStore(store)
  }
  
  public var body: some View {
    HStack {
      UserTrackingButton(
        store: store.scope(
          state: { $0.mapFeatureState.userTrackingMode },
          action: { AppAction.map(.userTracking($0)) }
        )
      )
      .padding(10)
      .frame(maxWidth: .infinity, minHeight: minHeight)
      .contentShape(Rectangle())
      menuSeperator
      
      // Chat
      chatFeature
        .accessibility(label: Text("App navigation \(L10n.Chat.title)"))
      menuSeperator
      
      // Rules
      rulesFeature
        .accessibility(label: Text("App navigation \(L10n.Rules.title)"))
      menuSeperator
      
      // Settings
      settingsFeature
        .accessibility(label: Text("App navigation \(L10n.Settings.title)"))
    }
    .font(.body)
    .background(reduceTransparency || colorSchemeContrast.isIncreased ? Color(.backgroundSecondary) : Color(.backgroundTranslucent))
    .adaptiveCornerRadius(.allCorners, 18)
    .modifier(ShadowModifier())
  }
  
  // MARK: Chat
  var badge: some View {
    ZStack {
      Circle()
        .foregroundColor(.red)
      
      Text(viewStore.chatMessageBadgeCount == 0
           ? ""
           : String(viewStore.chatMessageBadgeCount)
        )
        .animation(nil)
        .foregroundColor(.white)
        .font(Font.system(size: 12))
    }
    .frame(width: 20, height: 20)
    .offset(x: 14, y: -10)
    .scaleEffect(viewStore.chatMessageBadgeCount == 0 ? 0 : 1, anchor: .topTrailing)
    .opacity(viewStore.chatMessageBadgeCount == 0 ? 0 : 1)
    .accessibleAnimation(.easeIn(duration: 0.1), value: viewStore.chatMessageBadgeCount)
    .accessibilityLabel(Text("\(viewStore.chatMessageBadgeCount) unread messages"))
  }
  
  var chatFeature: some View {
    Button(
      action: {
        viewStore.send(.setNavigation(tag: .chat))
      },
      label: {
        ZStack {
          Image(systemName: "bubble.left")
            .iconModifier()
          badge
        }
      })
      .frame(maxWidth: .infinity, minHeight: minHeight)
      .contentShape(Rectangle())
      .sheet(
        isPresented: viewStore.binding(
          get: \.isChatViewPresented,
          send: AppAction.dismissSheetView
        ),
        onDismiss: nil,
        content: {
          SocialView(
            store: store.scope(
              state: \.socialState,
              action: AppAction.social
            )
          )
        }
      )
  }
  
  var rulesFeature: some View {
    Button(
      action: {
        viewStore.send(.setNavigation(tag: .rules))
      },
      label: {
        Image(systemName: "exclamationmark.square")
          .iconModifier()
      }
    )
    .frame(maxWidth: .infinity, minHeight: minHeight)
    .contentShape(Rectangle())
    .sheet(
      isPresented: viewStore.binding(
        get: \.isRulesViewPresented,
        send: { _ in AppAction.dismissSheetView }
      ),
      onDismiss: nil,
      content: {
        CMNavigationView {
          GuideView()
        }
      }
    )
  }
  
  var settingsFeature: some View {
    Button(
      action: {
        viewStore.send(.setNavigation(tag: .settings))
      },
      label: {
        Image(systemName: "gearshape")
          .iconModifier()
      }
    )
    .frame(maxWidth: .infinity, minHeight: minHeight)
    .contentShape(Rectangle())
    .sheet(
      isPresented: viewStore.binding(
        get: \.isSettingsViewPresented,
        send: { _ in AppAction.dismissSheetView }
      ),
      onDismiss: nil,
      content: {
        CMNavigationView {
          SettingsView(
            store: store.scope(
              state: \.settingsState,
              action: { AppAction.settings($0) }
            )
          )
            .dismissable()
        }
      }
    )
    
  }
  
  var menuSeperator: some View {
    Color(.border)
      .frame(width: 1, height: minHeight)
      .accessibilityHidden(true)
  }
}

// MARK: Preview
struct AppNavigationView_Previews: PreviewProvider {
  static var previews: some View {
    AppNavigationView(
      store: Store<AppState, AppAction>(
        initialState: AppState(),
        reducer: appReducer,
        environment: AppEnvironment(
          service: .noop,
          idProvider: .noop,
          mainQueue: .failing,
          userDefaultsClient: .noop,
          uiApplicationClient: .noop,
          setUserInterfaceStyle: { _ in .none }
        )
      )
    )
  }
}


struct ShadowModifier: ViewModifier {
  @Environment(\.colorScheme) var colorScheme
  
  func body(content: Content) -> some View {
    Group {
      if colorScheme == .light {
        content
          .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0.0, y: 0.0)
      } else {
        content
      }
    }
  }
}

struct CMNavigationView<Content>: View where Content: View {
  let content: () -> Content
  
  init(@ViewBuilder content: @escaping () -> Content) {
    self.content = content
  }
  
  var body: some View {
    NavigationView {
      content()
    }
    .accentColor(Color(.textPrimary))
    .navigationViewStyle(StackNavigationViewStyle())
  }
}