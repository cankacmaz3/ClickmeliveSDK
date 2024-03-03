// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class GetItemsByLiveEventIdQuery: GraphQLQuery {
  public static let operationName: String = "GetItemsByLiveEventId"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query GetItemsByLiveEventId($id: ID!) { getEventItemsByLiveEventId(id: $id) { __typename ...EventItemGQL } }"#,
      fragments: [EventItemGQL.self]
    ))

  public var id: ID

  public init(id: ID) {
    self.id = id
  }

  public var __variables: Variables? { ["id": id] }

  public struct Data: ClickmeliveSaasAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("getEventItemsByLiveEventId", [GetEventItemsByLiveEventId?]?.self, arguments: ["id": .variable("id")]),
    ] }

    ///  Get Event Items by Live Event Id. Will be used to resolve event items for a live event.
    public var getEventItemsByLiveEventId: [GetEventItemsByLiveEventId?]? { __data["getEventItemsByLiveEventId"] }

    /// GetEventItemsByLiveEventId
    ///
    /// Parent Type: `EventItem`
    public struct GetEventItemsByLiveEventId: ClickmeliveSaasAPI.SelectionSet {
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
