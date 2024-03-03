// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class SearchLiveEventsQuery: GraphQLQuery {
  public static let operationName: String = "SearchLiveEvents"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query SearchLiveEvents($input: LiveEventSearchInput!) { searchLiveEvents(input: $input) { __typename metadata { __typename ...MetadataGQL } liveEvents { __typename ...LiveEventGQL } } }"#,
      fragments: [LiveEventGQL.self, MetadataGQL.self]
    ))

  public var input: LiveEventSearchInput

  public init(input: LiveEventSearchInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: ClickmeliveSaasAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("searchLiveEvents", SearchLiveEvents?.self, arguments: ["input": .variable("input")]),
    ] }

    ///  Search Live Events with pagination from Opensearch. You can use different filters and pagination to search live events. All live events will be sorted by createdAt in descending order.
    public var searchLiveEvents: SearchLiveEvents? { __data["searchLiveEvents"] }

    /// SearchLiveEvents
    ///
    /// Parent Type: `LiveEventSearchConnection`
    public struct SearchLiveEvents: ClickmeliveSaasAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.LiveEventSearchConnection }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("metadata", Metadata.self),
        .field("liveEvents", [LiveEvent?]?.self),
      ] }

      ///  Pagination metadata for the search query.
      public var metadata: Metadata { __data["metadata"] }
      ///  List of Live Events.
      public var liveEvents: [LiveEvent?]? { __data["liveEvents"] }

      /// SearchLiveEvents.Metadata
      ///
      /// Parent Type: `PaginationMetadata`
      public struct Metadata: ClickmeliveSaasAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.PaginationMetadata }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .fragment(MetadataGQL.self),
        ] }

        ///  Total record count of the search query.
        public var totalRecordCount: Int { __data["totalRecordCount"] }
        ///  Total page count of the search query.
        public var pageSize: Int { __data["pageSize"] }
        ///  Current page number of the search query.
        public var pageNumber: Int { __data["pageNumber"] }

        public struct Fragments: FragmentContainer {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public var metadataGQL: MetadataGQL { _toFragment() }
        }
      }

      /// SearchLiveEvents.LiveEvent
      ///
      /// Parent Type: `LiveEvent`
      public struct LiveEvent: ClickmeliveSaasAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.LiveEvent }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .fragment(LiveEventGQL.self),
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
        ///  Tags of the live event.
        public var tags: [String?]? { __data["tags"] }
        ///  Event items of the live event.
        public var items: [String?]? { __data["items"] }

        public struct Fragments: FragmentContainer {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public var liveEventGQL: LiveEventGQL { _toFragment() }
        }
      }
    }
  }
}
