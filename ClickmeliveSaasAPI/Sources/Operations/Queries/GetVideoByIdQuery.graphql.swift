// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class GetVideoByIdQuery: GraphQLQuery {
  public static let operationName: String = "GetVideoById"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query GetVideoById($id: ID!) { getVideoById(id: $id) { __typename id title description userId thumbnailUrl videoUrl isActive totalLikeCount createdAt updatedAt totalViewer tags { __typename ...EventTagGQL } items { __typename ...EventItemGQL } } }"#,
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
      .field("getVideoById", GetVideoById.self, arguments: ["id": .variable("id")]),
    ] }

    ///  Get Video by id for details from DynamoDB will resolve tags and event items too if you query them in the response.
    public var getVideoById: GetVideoById { __data["getVideoById"] }

    /// GetVideoById
    ///
    /// Parent Type: `VideoDetail`
    public struct GetVideoById: ClickmeliveSaasAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.VideoDetail }
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
        .field("tags", [Tag?]?.self),
        .field("items", [Item?]?.self),
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
      ///  Tags of the video. Will resolve the tags of the video.
      public var tags: [Tag?]? { __data["tags"] }
      ///  Event items of the video. Will resolve the event items of the video.
      public var items: [Item?]? { __data["items"] }

      /// GetVideoById.Tag
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

      /// GetVideoById.Item
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
