// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

///  This input will be used to search videos in the system.
public struct VideoSearchInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    title: GraphQLNullable<String> = nil,
    tags: GraphQLNullable<[String?]> = nil,
    startDate: GraphQLNullable<AWSDateTime> = nil,
    endDate: GraphQLNullable<AWSDateTime> = nil,
    isActive: GraphQLNullable<Bool> = nil,
    limit: GraphQLNullable<Int> = nil,
    page: GraphQLNullable<Int> = nil
  ) {
    __data = InputDict([
      "title": title,
      "tags": tags,
      "startDate": startDate,
      "endDate": endDate,
      "isActive": isActive,
      "limit": limit,
      "page": page
    ])
  }

  ///  Title of the video. We can prefix search after 3 characters. For a phrase search(multiple words), the phrase should match completely.
  public var title: GraphQLNullable<String> {
    get { __data["title"] }
    set { __data["title"] = newValue }
  }

  ///  We can filter videos if any tags we send here is in the tags of the video.
  public var tags: GraphQLNullable<[String?]> {
    get { __data["tags"] }
    set { __data["tags"] = newValue }
  }

  ///  If we use startDate we should send endDate too this will filter videos by their created at date is in between the startDate and endDate.
  public var startDate: GraphQLNullable<AWSDateTime> {
    get { __data["startDate"] }
    set { __data["startDate"] = newValue }
  }

  ///  If we use endDate we should send startDate too this will filter videos by their created at date is in between the startDate and endDate.
  public var endDate: GraphQLNullable<AWSDateTime> {
    get { __data["endDate"] }
    set { __data["endDate"] = newValue }
  }

  ///  We can filter videos by their active status. We can only search for passive videos in host app or admin panel.
  public var isActive: GraphQLNullable<Bool> {
    get { __data["isActive"] }
    set { __data["isActive"] = newValue }
  }

  ///  Limit of the search query.
  public var limit: GraphQLNullable<Int> {
    get { __data["limit"] }
    set { __data["limit"] = newValue }
  }

  ///  Page of the search query.
  public var page: GraphQLNullable<Int> {
    get { __data["page"] }
    set { __data["page"] = newValue }
  }
}
