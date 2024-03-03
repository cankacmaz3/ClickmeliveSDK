// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct ChatBanGQL: ClickmeliveSaasAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment ChatBanGQL on ChatMessageBan { __typename id eventIds userId userDisplayName messageId message banType createdAt }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.ChatMessageBan }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("id", ClickmeliveSaasAPI.ID.self),
    .field("eventIds", [ClickmeliveSaasAPI.ID?]?.self),
    .field("userId", String.self),
    .field("userDisplayName", String?.self),
    .field("messageId", ClickmeliveSaasAPI.ID.self),
    .field("message", String.self),
    .field("banType", GraphQLEnum<ClickmeliveSaasAPI.ChatMessageBanType>.self),
    .field("createdAt", ClickmeliveSaasAPI.AWSDateTime.self),
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
}
