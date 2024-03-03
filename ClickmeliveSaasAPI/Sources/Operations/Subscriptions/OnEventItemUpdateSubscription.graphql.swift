// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class OnEventItemUpdateSubscription: GraphQLSubscription {
  public static let operationName: String = "OnEventItemUpdate"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"subscription OnEventItemUpdate { onEventItemUpdate { __typename ...EventItemGQL } }"#,
      fragments: [EventItemGQL.self]
    ))

  public init() {}

  public struct Data: ClickmeliveSaasAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.Subscription }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("onEventItemUpdate", OnEventItemUpdate?.self),
    ] }

    ///  Subscribe to EventItem Update. Will be used to subscribe to event item update when an event item is updated.
    public var onEventItemUpdate: OnEventItemUpdate? { __data["onEventItemUpdate"] }

    /// OnEventItemUpdate
    ///
    /// Parent Type: `EventItem`
    public struct OnEventItemUpdate: ClickmeliveSaasAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.EventItem }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .fragment(EventItemGQL.self),
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

      public struct Fragments: FragmentContainer {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public var eventItemGQL: EventItemGQL { _toFragment() }
      }
    }
  }
}
