// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class IncreaseViewerLiveEventMutation: GraphQLMutation {
  public static let operationName: String = "IncreaseViewerLiveEvent"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"mutation IncreaseViewerLiveEvent($id: ID!, $userId: ID!) { increaseViewerLiveEvent(id: $id, userId: $userId) { __typename ...LiveEventGQL } }"#,
      fragments: [LiveEventGQL.self]
    ))

  public var id: ID
  public var userId: ID

  public init(
    id: ID,
    userId: ID
  ) {
    self.id = id
    self.userId = userId
  }

  public var __variables: Variables? { [
    "id": id,
    "userId": userId
  ] }

  public struct Data: ClickmeliveSaasAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.Mutation }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("increaseViewerLiveEvent", IncreaseViewerLiveEvent?.self, arguments: [
        "id": .variable("id"),
        "userId": .variable("userId")
      ]),
    ] }

    ///  Increase Viewer Count of a Live Event. Will be used to increase total viewer count of a live event in the system.
    public var increaseViewerLiveEvent: IncreaseViewerLiveEvent? { __data["increaseViewerLiveEvent"] }

    /// IncreaseViewerLiveEvent
    ///
    /// Parent Type: `LiveEvent`
    public struct IncreaseViewerLiveEvent: ClickmeliveSaasAPI.SelectionSet {
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
