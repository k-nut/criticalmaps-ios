import ChatFeature
import Foundation
import SharedModels
import XCTest

final class ChatViewStateTests: XCTestCase {
  func test_createChatViewState_shouldSortMessagesByDate() {
    // arrange
    let chatFeatureState = ChatFeature.State(
      chatMessages: .results([
        "1": .init(message: "Hello", timestamp: 1),
        "2": .init(message: "Hello", timestamp: 2),
        "3": .init(message: "Hello", timestamp: 3)
      ]),
      chatInputState: .init()
    )

    // act
    let chatViewState = ChatView.ViewState(chatFeatureState)
    let messages = chatViewState.identifiedChatMessages

    // assert
    let expectedMessages: [IdentifiedChatMessage] = [
      .init(id: "3", message: "Hello", timestamp: 3),
      .init(id: "2", message: "Hello", timestamp: 2),
      .init(id: "1", message: "Hello", timestamp: 1)
    ]
    XCTAssertEqual(messages, expectedMessages)
  }
}
