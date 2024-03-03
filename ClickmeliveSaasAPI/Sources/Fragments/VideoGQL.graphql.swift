// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct VideoGQL: ClickmeliveSaasAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment VideoGQL on Video { __typename id title description userId thumbnailUrl videoUrl isActive totalLikeCount createdAt updatedAt totalViewer tags items }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.Video }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("id", ClickmeliveSaasAPI.ID.self),
    .field("title", String.self),
    .field("description", String?.self),
    .field("userId", String.self),
    .field("thumbnailUrl", String.self),
    .field("videoUrl", String.self),
    .field("isActive", Bool.self),
    .field("totalLikeCount", Int.self),
    .field("createdAt", ClickmeliveSaasAPI.AWSDateTime.self),
    .field("updatedAt", ClickmeliveSaasAPI.AWSDateTime.self),
    .field("totalViewer", Int.self),
    .field("tags", [String?]?.self),
    .field("items", [String?]?.self),
  ] }

  ///  Id of the video.
  public var id: ClickmeliveSaasAPI.ID { __data["id"] }
  ///  Title of the video.
  public var title: String { __data["title"] }
  ///  Description of the video.
  public var description: String? { __data["description"] }
  ///  The user id of the video creator.
  public var userId: String { __data["userId"] }
  ///  Thumbnail url of the video.
  public var thumbnailUrl: String { __data["thumbnailUrl"] }
  ///  Video url of the video.
  public var videoUrl: String { __data["videoUrl"] }
  ///  Active status of the video.
  public var isActive: Bool { __data["isActive"] }
  ///  Total like count of the video.
  public var totalLikeCount: Int { __data["totalLikeCount"] }
  ///  Created at date of the video.
  public var createdAt: ClickmeliveSaasAPI.AWSDateTime { __data["createdAt"] }
  ///  Last Updated at date of the video.
  public var updatedAt: ClickmeliveSaasAPI.AWSDateTime { __data["updatedAt"] }
  ///  Total viewer count of the video.
  public var totalViewer: Int { __data["totalViewer"] }
  ///  Tag ids of the video.
  public var tags: [String?]? { __data["tags"] }
  ///  Event item ids of the video.
  public var items: [String?]? { __data["items"] }
}
