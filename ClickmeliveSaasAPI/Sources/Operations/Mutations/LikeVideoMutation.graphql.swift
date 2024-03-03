// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class LikeVideoMutation: GraphQLMutation {
  public static let operationName: String = "LikeVideo"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"mutation LikeVideo($videoId: ID!, $userId: ID!, $like: Boolean!) { likeVideo(videoId: $videoId, userId: $userId, like: $like) { __typename ...VideoGQL } }"#,
      fragments: [VideoGQL.self]
    ))

  public var videoId: ID
  public var userId: ID
  public var like: Bool

  public init(
    videoId: ID,
    userId: ID,
    like: Bool
  ) {
    self.videoId = videoId
    self.userId = userId
    self.like = like
  }

  public var __variables: Variables? { [
    "videoId": videoId,
    "userId": userId,
    "like": like
  ] }

  public struct Data: ClickmeliveSaasAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.Mutation }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("likeVideo", LikeVideo?.self, arguments: [
        "videoId": .variable("videoId"),
        "userId": .variable("userId"),
        "like": .variable("like")
      ]),
    ] }

    ///  Like or Dislike a Video. Will be used to like or dislike a video in the system.
    public var likeVideo: LikeVideo? { __data["likeVideo"] }

    /// LikeVideo
    ///
    /// Parent Type: `Video`
    public struct LikeVideo: ClickmeliveSaasAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.Video }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .fragment(VideoGQL.self),
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

      public struct Fragments: FragmentContainer {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public var videoGQL: VideoGQL { _toFragment() }
      }
    }
  }
}
