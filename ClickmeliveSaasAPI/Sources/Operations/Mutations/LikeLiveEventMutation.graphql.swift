// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class LikeLiveEventMutation: GraphQLMutation {
  public static let operationName: String = "LikeLiveEvent"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"mutation LikeLiveEvent($liveEventId: ID!, $userId: ID!, $like: Boolean!) { likeLiveEvent(liveEventId: $liveEventId, userId: $userId, like: $like) { __typename ...LiveEventGQL } }"#,
      fragments: [LiveEventGQL.self]
    ))

  public var liveEventId: ID
  public var userId: ID
  public var like: Bool

  public init(
    liveEventId: ID,
    userId: ID,
    like: Bool
  ) {
    self.liveEventId = liveEventId
    self.userId = userId
    self.like = like
  }

  public var __variables: Variables? { [
    "liveEventId": liveEventId,
    "userId": userId,
    "like": like
  ] }

  public struct Data: ClickmeliveSaasAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.Mutation }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("likeLiveEvent", LikeLiveEvent?.self, arguments: [
        "liveEventId": .variable("liveEventId"),
        "userId": .variable("userId"),
        "like": .variable("like")
      ]),
    ] }

    ///  Like or Dislike a Live Event. Will be used to like or dislike a live event in the system.
    public var likeLiveEvent: LikeLiveEvent? { __data["likeLiveEvent"] }

    /// LikeLiveEvent
    ///
    /// Parent Type: `LiveEvent`
    public struct LikeLiveEvent: ClickmeliveSaasAPI.SelectionSet {
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
