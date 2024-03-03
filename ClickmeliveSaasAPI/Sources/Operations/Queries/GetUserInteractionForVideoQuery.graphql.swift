// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class GetUserInteractionForVideoQuery: GraphQLQuery {
  public static let operationName: String = "GetUserInteractionForVideo"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query GetUserInteractionForVideo($id: ID!, $userId: ID!) { getUserInteractionForVideo(id: $id, userId: $userId) { __typename like videoId userId } }"#
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

    public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("getUserInteractionForVideo", GetUserInteractionForVideo?.self, arguments: [
        "id": .variable("id"),
        "userId": .variable("userId")
      ]),
    ] }

    ///  Get User Interaction for a video. Will be used to resolve user interaction for a video. User Interaction includes like and dislike.
    public var getUserInteractionForVideo: GetUserInteractionForVideo? { __data["getUserInteractionForVideo"] }

    /// GetUserInteractionForVideo
    ///
    /// Parent Type: `VideoUserInteraction`
    public struct GetUserInteractionForVideo: ClickmeliveSaasAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.VideoUserInteraction }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("like", Bool?.self),
        .field("videoId", ClickmeliveSaasAPI.ID.self),
        .field("userId", ClickmeliveSaasAPI.ID.self),
      ] }

      ///  Like status of the user for the video.
      public var like: Bool? { __data["like"] }
      ///  Id of the video.
      public var videoId: ClickmeliveSaasAPI.ID { __data["videoId"] }
      ///  Id of the user.
      public var userId: ClickmeliveSaasAPI.ID { __data["userId"] }
    }
  }
}
