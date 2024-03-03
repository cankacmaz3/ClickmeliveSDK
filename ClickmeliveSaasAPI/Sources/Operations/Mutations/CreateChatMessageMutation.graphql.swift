// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class CreateChatMessageMutation: GraphQLMutation {
  public static let operationName: String = "CreateChatMessage"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"mutation CreateChatMessage($input: ChatMessageInput!) { createChatMessage(input: $input) { __typename ...ChatMessageGQL } }"#,
      fragments: [ChatMessageGQL.self]
    ))

  public var input: ChatMessageInput

  public init(input: ChatMessageInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: ClickmeliveSaasAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.Mutation }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("createChatMessage", CreateChatMessage?.self, arguments: ["input": .variable("input")]),
    ] }

    ///  Create Chat Message in DynamoDB. Will be used to create a chat message in the system.
    public var createChatMessage: CreateChatMessage? { __data["createChatMessage"] }

    /// CreateChatMessage
    ///
    /// Parent Type: `ChatMessage`
    public struct CreateChatMessage: ClickmeliveSaasAPI.SelectionSet {
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
