// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct EventTagGQL: ClickmeliveSaasAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment EventTagGQL on Tag { __typename id title createdAt updatedAt }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.Tag }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("id", ClickmeliveSaasAPI.ID.self),
    .field("title", String.self),
    .field("createdAt", ClickmeliveSaasAPI.AWSDateTime.self),
    .field("updatedAt", ClickmeliveSaasAPI.AWSDateTime.self),
  ] }

  ///  Id of the tag.
  public var id: ClickmeliveSaasAPI.ID { __data["id"] }
  ///  Title of the tag.
  public var title: String { __data["title"] }
  ///  Created at date of the tag.
  public var createdAt: ClickmeliveSaasAPI.AWSDateTime { __data["createdAt"] }
  ///  Last Updated at date of the tag.
  public var updatedAt: ClickmeliveSaasAPI.AWSDateTime { __data["updatedAt"] }
}
