// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class GetUserInteractionLiveEventQuery: GraphQLQuery {
  public static let operationName: String = "GetUserInteractionLiveEvent"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query GetUserInteractionLiveEvent($id: ID!, $userId: ID!) { getUserInteractionForLiveEvent(id: $id, userId: $userId) { __typename userId liveEventId like } }"#
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
      .field("getUserInteractionForLiveEvent", GetUserInteractionForLiveEvent?.self, arguments: [
        "id": .variable("id"),
        "userId": .variable("userId")
      ]),
    ] }

    ///  Get User Interaction for a live event. Will be used to resolve user interaction for a live event. User Interaction includes like and dislike.
    public var getUserInteractionForLiveEvent: GetUserInteractionForLiveEvent? { __data["getUserInteractionForLiveEvent"] }

    /// GetUserInteractionForLiveEvent
    ///
    /// Parent Type: `LiveEventUserInteraction`
    public struct GetUserInteractionForLiveEvent: ClickmeliveSaasAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.LiveEventUserInteraction }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("userId", ClickmeliveSaasAPI.ID.self),
        .field("liveEventId", ClickmeliveSaasAPI.ID.self),
        .field("like", Bool?.self),
      ] }

      ///  Id of the user.
      public var userId: ClickmeliveSaasAPI.ID { __data["userId"] }
      ///  Id of the live event.
      public var liveEventId: ClickmeliveSaasAPI.ID { __data["liveEventId"] }
      ///  Like status of the user for the live event.
      public var like: Bool? { __data["like"] }
    }
  }
}
