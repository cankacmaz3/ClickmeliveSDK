// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class SearchVideosQuery: GraphQLQuery {
  public static let operationName: String = "SearchVideos"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query SearchVideos($input: VideoSearchInput) { searchVideos(input: $input) { __typename videos { __typename ...VideoGQL } metadata { __typename ...MetadataGQL } } }"#,
      fragments: [MetadataGQL.self, VideoGQL.self]
    ))

  public var input: GraphQLNullable<VideoSearchInput>

  public init(input: GraphQLNullable<VideoSearchInput>) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: ClickmeliveSaasAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("searchVideos", SearchVideos?.self, arguments: ["input": .variable("input")]),
    ] }

    ///  Search Videos with pagination from Opensearch. You can use different filters and pagination to search videos. All videos will be sorted by createdAt in descending order.
    public var searchVideos: SearchVideos? { __data["searchVideos"] }

    /// SearchVideos
    ///
    /// Parent Type: `VideoSearchConnection`
    public struct SearchVideos: ClickmeliveSaasAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.VideoSearchConnection }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("videos", [Video?]?.self),
        .field("metadata", Metadata.self),
      ] }

      ///  List of Videos.
      public var videos: [Video?]? { __data["videos"] }
      ///  Pagination metadata for the search query.
      public var metadata: Metadata { __data["metadata"] }

      /// SearchVideos.Video
      ///
      /// Parent Type: `Video`
      public struct Video: ClickmeliveSaasAPI.SelectionSet {
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

      /// SearchVideos.Metadata
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
    }
  }
}
