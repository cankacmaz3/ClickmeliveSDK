// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct LiveEventGQL: ClickmeliveSaasAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment LiveEventGQL on LiveEvent { __typename id status type title userId description thumbnailUrl replayUrl teaserUrl playbackUrl isActive totalLikeCount estimatedStartingDate startingDate endingDate createdAt updatedAt totalViewer tags items }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.LiveEvent }
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
    .field("tags", [String?]?.self),
    .field("items", [String?]?.self),
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
}
