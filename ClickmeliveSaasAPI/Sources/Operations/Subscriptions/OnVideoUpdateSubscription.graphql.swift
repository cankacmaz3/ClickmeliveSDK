// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class OnVideoUpdateSubscription: GraphQLSubscription {
  public static let operationName: String = "OnVideoUpdate"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"subscription OnVideoUpdate($id: ID!) { onVideoUpdate(id: $id) { __typename ...VideoGQL } }"#,
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
      .field("onVideoUpdate", OnVideoUpdate?.self, arguments: ["id": .variable("id")]),
    ] }

    ///  Subscribe to Video Update. Will be used to subscribe to video update when a video is updated.
    public var onVideoUpdate: OnVideoUpdate? { __data["onVideoUpdate"] }

    /// OnVideoUpdate
    ///
    /// Parent Type: `Video`
    public struct OnVideoUpdate: ClickmeliveSaasAPI.SelectionSet {
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
