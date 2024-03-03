// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct ChatMessageGQL: ClickmeliveSaasAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment ChatMessageGQL on ChatMessage { __typename id eventId userId userDisplayName message createdAt }"#
  }

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
