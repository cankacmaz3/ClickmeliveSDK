// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class OnCreateChatMessageBanSubscription: GraphQLSubscription {
  public static let operationName: String = "OnCreateChatMessageBan"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"subscription OnCreateChatMessageBan($eventId: ID!) { onCreateChatMessageBan(eventId: $eventId) { __typename ...ChatBanGQL } }"#,
      fragments: [ChatBanGQL.self]
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
      .field("onCreateChatMessageBan", OnCreateChatMessageBan?.self, arguments: ["eventId": .variable("eventId")]),
    ] }

    ///  Subscribe to Create Chat Message Ban. Will be used to subscribe to chat message bans in a live event.
    public var onCreateChatMessageBan: OnCreateChatMessageBan? { __data["onCreateChatMessageBan"] }

    /// OnCreateChatMessageBan
    ///
    /// Parent Type: `ChatMessageBan`
    public struct OnCreateChatMessageBan: ClickmeliveSaasAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.ChatMessageBan }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .fragment(ChatBanGQL.self),
      ] }

      ///  Id of the chat message ban.
      public var id: ClickmeliveSaasAPI.ID { __data["id"] }
      ///  Banned Event ids
      public var eventIds: [ClickmeliveSaasAPI.ID?]? { __data["eventIds"] }
      ///  Banned User id
      public var userId: String { __data["userId"] }
      ///  Banned User display name
      public var userDisplayName: String? { __data["userDisplayName"] }
      ///  Banned Message id
      public var messageId: ClickmeliveSaasAPI.ID { __data["messageId"] }
      ///  Banned Message
      public var message: String { __data["message"] }
      ///  Ban type of the chat message ban. GENERAL, SINGLE, UNBAN
      public var banType: GraphQLEnum<ClickmeliveSaasAPI.ChatMessageBanType> { __data["banType"] }
      ///  Created at date of the chat message ban.
      public var createdAt: ClickmeliveSaasAPI.AWSDateTime { __data["createdAt"] }

      public struct Fragments: FragmentContainer {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public var chatBanGQL: ChatBanGQL { _toFragment() }
      }
    }
  }
}
