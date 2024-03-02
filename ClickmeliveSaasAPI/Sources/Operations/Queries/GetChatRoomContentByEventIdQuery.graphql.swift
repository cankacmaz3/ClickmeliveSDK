// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class GetChatRoomContentByEventIdQuery: GraphQLQuery {
  public static let operationName: String = "GetChatRoomContentByEventId"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query GetChatRoomContentByEventId($eventId: ID!) { getChatRoomContentByEventId(eventId: $eventId) { __typename nextToken messages { __typename id eventId userId userDisplayName message createdAt } } }"#
    ))

  public var eventId: ID

  public init(eventId: ID) {
    self.eventId = eventId
  }

  public var __variables: Variables? { ["eventId": eventId] }

  public struct Data: ClickmeliveSaasAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("getChatRoomContentByEventId", GetChatRoomContentByEventId?.self, arguments: ["eventId": .variable("eventId")]),
    ] }

    ///  Get Chat Room Content by Event Id. Will be used to get chat room content by event id. This will return the latest messages in the chat room but for client purposes you have to reverse the data coming from here.
    public var getChatRoomContentByEventId: GetChatRoomContentByEventId? { __data["getChatRoomContentByEventId"] }

    /// GetChatRoomContentByEventId
    ///
    /// Parent Type: `ChatRoomContent`
    public struct GetChatRoomContentByEventId: ClickmeliveSaasAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.ChatRoomContent }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("nextToken", String?.self),
        .field("messages", [Message?]?.self),
      ] }

      ///  Next token for the pagination.
      public var nextToken: String? { __data["nextToken"] }
      ///  List of chat messages.
      public var messages: [Message?]? { __data["messages"] }

      /// GetChatRoomContentByEventId.Message
      ///
      /// Parent Type: `ChatMessage`
      public struct Message: ClickmeliveSaasAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.ChatMessage }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", ClickmeliveSaasAPI.ID.self),
          .field("eventId", ClickmeliveSaasAPI.ID.self),
          .field("userId", String.self),
          .field("userDisplayName", String.self),
          .field("message", String.self),
          .field("createdAt", ClickmeliveSaasAPI.AWSDateTime.self),
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
      }
    }
  }
}
