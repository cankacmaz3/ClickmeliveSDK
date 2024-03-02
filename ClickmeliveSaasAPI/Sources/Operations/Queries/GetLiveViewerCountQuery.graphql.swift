// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class GetLiveViewerCountQuery: GraphQLQuery {
  public static let operationName: String = "GetLiveViewerCount"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query GetLiveViewerCount($id: ID!) { getLiveViewerCount(id: $id) { __typename viewerCount } }"#
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
      .field("getLiveViewerCount", GetLiveViewerCount?.self, arguments: ["id": .variable("id")]),
    ] }

    ///  Get Live Event Viewer Count. Will be used to get live event viewer count when the live event status is streaming(3). There is 5 seconds cache for this query.
    public var getLiveViewerCount: GetLiveViewerCount? { __data["getLiveViewerCount"] }

    /// GetLiveViewerCount
    ///
    /// Parent Type: `LiveEventViewer`
    public struct GetLiveViewerCount: ClickmeliveSaasAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.LiveEventViewer }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("viewerCount", Int?.self),
      ] }

      public var viewerCount: Int? { __data["viewerCount"] }
    }
  }
}
