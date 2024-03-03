// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class GetChatBanQuery: GraphQLQuery {
  public static let operationName: String = "GetChatBan"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query GetChatBan($userId: ID!) { getChatBan(userId: $userId) { __typename ...ChatBanGQL } }"#,
      fragments: [ChatBanGQL.self]
    ))

  public var userId: ID

  public init(userId: ID) {
    self.userId = userId
  }

  public var __variables: Variables? { ["userId": userId] }

  public struct Data: ClickmeliveSaasAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("getChatBan", GetChatBan?.self, arguments: ["userId": .variable("userId")]),
    ] }

    ///  Get Chat Ban by User Id. Will be used to get chat ban by user id.
    public var getChatBan: GetChatBan? { __data["getChatBan"] }

    /// GetChatBan
    ///
    /// Parent Type: `ChatMessageBan`
    public struct GetChatBan: ClickmeliveSaasAPI.SelectionSet {
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
