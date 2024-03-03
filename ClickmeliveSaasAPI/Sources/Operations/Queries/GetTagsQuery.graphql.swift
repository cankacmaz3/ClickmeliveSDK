// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class GetTagsQuery: GraphQLQuery {
  public static let operationName: String = "GetTags"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query GetTags($limit: Int, $nextToken: String) { getTags(limit: $limit, nextToken: $nextToken) { __typename nextToken tags { __typename ...EventTagGQL } } }"#,
      fragments: [EventTagGQL.self]
    ))

  public var limit: GraphQLNullable<Int>
  public var nextToken: GraphQLNullable<String>

  public init(
    limit: GraphQLNullable<Int>,
    nextToken: GraphQLNullable<String>
  ) {
    self.limit = limit
    self.nextToken = nextToken
  }

  public var __variables: Variables? { [
    "limit": limit,
    "nextToken": nextToken
  ] }

  public struct Data: ClickmeliveSaasAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("getTags", GetTags?.self, arguments: [
        "limit": .variable("limit"),
        "nextToken": .variable("nextToken")
      ]),
    ] }

    ///  Get Tags with pagination from DynamoDB.(SDK will use this query to get tags for the developer.Search Tags will be used in the host app and admin panel)
    public var getTags: GetTags? { __data["getTags"] }

    /// GetTags
    ///
    /// Parent Type: `TagConnection`
    public struct GetTags: ClickmeliveSaasAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.TagConnection }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("nextToken", String?.self),
        .field("tags", [Tag?]?.self),
      ] }

      ///  Next token for the pagination.
      public var nextToken: String? { __data["nextToken"] }
      ///  List of Tags.
      public var tags: [Tag?]? { __data["tags"] }

      /// GetTags.Tag
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
    }
  }
}
