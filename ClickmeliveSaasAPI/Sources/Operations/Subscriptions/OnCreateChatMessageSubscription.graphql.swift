// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class OnCreateChatMessageSubscription: GraphQLSubscription {
  public static let operationName: String = "OnCreateChatMessage"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"subscription OnCreateChatMessage($eventId: ID!) { onCreateChatMessage(eventId: $eventId) { __typename ...ChatMessageGQL } }"#,
      fragments: [ChatMessageGQL.self]
    ))

  public var eventId: ID

  public init(eventId: ID) {
    self.eventId = eventId
  }

  public var __variables: Variables? { ["eventId": eventId] }

  public struct Data: ClickmeliveSaasAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.Subscription }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("onCreateChatMessage", OnCreateChatMessage?.self, arguments: ["eventId": .variable("eventId")]),
    ] }

    ///  Subscribe to Create Chat Message. Will be used to subscribe to chat messages in a live event.
    public var onCreateChatMessage: OnCreateChatMessage? { __data["onCreateChatMessage"] }

    /// OnCreateChatMessage
    ///
    /// Parent Type: `ChatMessage`
    public struct OnCreateChatMessage: ClickmeliveSaasAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.ChatMessage }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .fragment(ChatMessageGQL.self),
      ] }

      ///  Id of the chat message.
      public var id: ClickmeliveSaasAPI.ID { __data["id"] }
      ///  Event id of the chat message.
      public var eventId: ClickmeliveSaasAPI.ID { __data["eventId"] }
      ///  User id of the chat message creator.
      public var userId: String { __data["userId"] }
      ///  User display name of the chat message creator.
      public var userDisplayName: String { __data["userDisplayName"] }
      ///  Message of the chat message.
      public var message: String { __data["message"] }
      ///  Created at date of the chat message.
      public var createdAt: ClickmeliveSaasAPI.AWSDateTime { __data["createdAt"] }

      public struct Fragments: FragmentContainer {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public var chatMessageGQL: ChatMessageGQL { _toFragment() }
      }
    }
  }
}
