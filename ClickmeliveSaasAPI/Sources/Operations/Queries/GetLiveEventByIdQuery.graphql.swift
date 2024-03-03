// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class GetLiveEventByIdQuery: GraphQLQuery {
  public static let operationName: String = "GetLiveEventById"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query GetLiveEventById($id: ID!) { getLiveEventById(id: $id) { __typename id status type title userId description thumbnailUrl replayUrl teaserUrl playbackUrl isActive totalLikeCount estimatedStartingDate startingDate endingDate createdAt updatedAt totalViewer tags { __typename ...EventTagGQL } items { __typename ...EventItemGQL } } }"#,
      fragments: [EventItemGQL.self, EventTagGQL.self]
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
      .field("getLiveEventById", GetLiveEventById?.self, arguments: ["id": .variable("id")]),
    ] }

    ///  Get Live Event by id for details from DynamoDB will resolve tags and event items too if you query them in the response.
    public var getLiveEventById: GetLiveEventById? { __data["getLiveEventById"] }

    /// GetLiveEventById
    ///
    /// Parent Type: `LiveEventDetail`
    public struct GetLiveEventById: ClickmeliveSaasAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.LiveEventDetail }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", ClickmeliveSaasAPI.ID.self),
        .field("status", Int.self),
        .field("type", Int.self),
        .field("title", String.self),
        .field("userId", String.self),
        .field("description", String?.self),
        .field("thumbnailUrl", String.self),
        .field("replayUrl", String?.self),
        .field("teaserUrl", String?.self),
        .field("playbackUrl", String?.self),
        .field("isActive", Bool.self),
        .field("totalLikeCount", Int.self),
        .field("estimatedStartingDate", ClickmeliveSaasAPI.AWSDateTime.self),
        .field("startingDate", ClickmeliveSaasAPI.AWSDateTime?.self),
        .field("endingDate", ClickmeliveSaasAPI.AWSDateTime?.self),
        .field("createdAt", ClickmeliveSaasAPI.AWSDateTime.self),
        .field("updatedAt", ClickmeliveSaasAPI.AWSDateTime.self),
        .field("totalViewer", Int.self),
        .field("tags", [Tag?]?.self),
        .field("items", [Item?]?.self),
      ] }

      ///  Id of the live event.
      public var id: ClickmeliveSaasAPI.ID { __data["id"] }
      ///  Status of the live event. 0: Created, 1: Teaser, 2: Ready to Stream, 3: Streaming, 4: Stream Ended, 5: Cancelled.
      public var status: Int { __data["status"] }
      ///  Type of the live event. 1: Live Event, 2: Live Auction.
      public var type: Int { __data["type"] }
      ///  Title of the live event.
      public var title: String { __data["title"] }
      ///  The user id of the live event creator.
      public var userId: String { __data["userId"] }
      ///  Description of the live event.
      public var description: String? { __data["description"] }
      ///  Thumbnail url of the live event.
      public var thumbnailUrl: String { __data["thumbnailUrl"] }
      ///  Replay url of the live event.
      public var replayUrl: String? { __data["replayUrl"] }
      ///  Teaser url of the live event.
      public var teaserUrl: String? { __data["teaserUrl"] }
      ///  Playback url of the live event.
      public var playbackUrl: String? { __data["playbackUrl"] }
      ///  Active status of the live event.
      public var isActive: Bool { __data["isActive"] }
      ///  Total like count of the live event.
      public var totalLikeCount: Int { __data["totalLikeCount"] }
      ///  Estimated starting date of the live event.
      public var estimatedStartingDate: ClickmeliveSaasAPI.AWSDateTime { __data["estimatedStartingDate"] }
      ///  Starting date of the live event.
      public var startingDate: ClickmeliveSaasAPI.AWSDateTime? { __data["startingDate"] }
      ///  Ending date of the live event.
      public var endingDate: ClickmeliveSaasAPI.AWSDateTime? { __data["endingDate"] }
      ///  Created at date of the live event.
      public var createdAt: ClickmeliveSaasAPI.AWSDateTime { __data["createdAt"] }
      ///  Last Updated at date of the live event.
      public var updatedAt: ClickmeliveSaasAPI.AWSDateTime { __data["updatedAt"] }
      ///  Total viewer count of the live event.
      public var totalViewer: Int { __data["totalViewer"] }
      ///  Tags of the live event. Will resolve the tags of the live event.
      public var tags: [Tag?]? { __data["tags"] }
      ///  Event items of the live event. Will resolve the event items of the live event.
      public var items: [Item?]? { __data["items"] }

      /// GetLiveEventById.Tag
      ///
      /// Parent Type: `Tag`
      public struct Tag: ClickmeliveSaasAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.Tag }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .fragment(EventTagGQL.self),
        ] }

        ///  Id of the tag.
        public var id: ClickmeliveSaasAPI.ID { __data["id"] }
        ///  Title of the tag.
        public var title: String { __data["title"] }
        ///  Created at date of the tag.
        public var createdAt: ClickmeliveSaasAPI.AWSDateTime { __data["createdAt"] }
        ///  Last Updated at date of the tag.
        public var updatedAt: ClickmeliveSaasAPI.AWSDateTime { __data["updatedAt"] }

        public struct Fragments: FragmentContainer {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public var eventTagGQL: EventTagGQL { _toFragment() }
        }
      }

      /// GetLiveEventById.Item
      ///
      /// Parent Type: `EventItem`
      public struct Item: ClickmeliveSaasAPI.SelectionSet {
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
}
