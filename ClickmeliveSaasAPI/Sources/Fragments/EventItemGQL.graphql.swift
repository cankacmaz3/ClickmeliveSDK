// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct EventItemGQL: ClickmeliveSaasAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment EventItemGQL on EventItem { __typename id externalId name description price discountedPrice deeplinkUrl imageUrl }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.EventItem }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("id", ClickmeliveSaasAPI.ID.self),
    .field("externalId", String?.self),
    .field("name", String.self),
    .field("description", String?.self),
    .field("price", Double?.self),
    .field("discountedPrice", Double?.self),
    .field("deeplinkUrl", String.self),
    .field("imageUrl", String.self),
  ] }

  ///  Id of the event item.
  public var id: ClickmeliveSaasAPI.ID { __data["id"] }
  ///  External id of the event item.
  public var externalId: String? { __data["externalId"] }
  ///  Name of the event item.
  public var name: String { __data["name"] }
  ///  Description of the event item.
  public var description: String? { __data["description"] }
  ///  Price of the event item.
  public var price: Double? { __data["price"] }
  ///  Discounted price of the event item.
  public var discountedPrice: Double? { __data["discountedPrice"] }
  ///  Deeplink url of the event item.
  public var deeplinkUrl: String { __data["deeplinkUrl"] }
  ///  Image url of the event item.
  public var imageUrl: String { __data["imageUrl"] }
}
