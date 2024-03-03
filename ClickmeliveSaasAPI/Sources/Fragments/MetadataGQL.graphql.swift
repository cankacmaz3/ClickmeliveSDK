// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct MetadataGQL: ClickmeliveSaasAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment MetadataGQL on PaginationMetadata { __typename totalRecordCount pageSize pageNumber }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { ClickmeliveSaasAPI.Objects.PaginationMetadata }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("totalRecordCount", Int.self),
    .field("pageSize", Int.self),
    .field("pageNumber", Int.self),
  ] }

  ///  Total record count of the search query.
  public var totalRecordCount: Int { __data["totalRecordCount"] }
  ///  Total page count of the search query.
  public var pageSize: Int { __data["pageSize"] }
  ///  Current page number of the search query.
  public var pageNumber: Int { __data["pageNumber"] }
}
