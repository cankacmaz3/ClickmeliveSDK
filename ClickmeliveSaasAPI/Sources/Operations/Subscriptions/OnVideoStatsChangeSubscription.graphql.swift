// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class OnVideoStatsChangeSubscription: GraphQLSubscription {
  public static let operationName: String = "OnVideoStatsChange"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"subscription OnVideoStatsChange($id: ID!) { onVideoStatsChange(id: $id) { __typename ...VideoGQL } }"#,
      fragments: [VideoGQL.self]
    ))

  public var id: ID

  public init(id: ID) {
    self.id = id
  }

  public var __variables: Variables? { ["id": id] }

  public struct Data: ClickmeliveSaasAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.Subscription }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("onVideoStatsChange", OnVideoStatsChange?.self, arguments: ["id": .variable("id")]),
    ] }

    ///  Subscribe to Video Stats Change. Will be used to subscribe to video stats change when a video is liked or viewer count is increased.
    public var onVideoStatsChange: OnVideoStatsChange? { __data["onVideoStatsChange"] }

    /// OnVideoStatsChange
    ///
    /// Parent Type: `Video`
    public struct OnVideoStatsChange: ClickmeliveSaasAPI.SelectionSet {
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
