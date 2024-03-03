// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

///  This input will be used to search live events in the system.
public struct LiveEventSearchInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    title: GraphQLNullable<String> = nil,
    tags: GraphQLNullable<[String?]> = nil,
    statuses: GraphQLNullable<[String?]> = nil,
    startDate: GraphQLNullable<AWSDateTime> = nil,
    endDate: GraphQLNullable<AWSDateTime> = nil,
    isActive: GraphQLNullable<Bool> = nil,
    replayAvailable: GraphQLNullable<Bool> = nil,
    limit: GraphQLNullable<Int> = nil,
    page: GraphQLNullable<Int> = nil
  ) {
    __data = InputDict([
      "title": title,
      "tags": tags,
      "statuses": statuses,
      "startDate": startDate,
      "endDate": endDate,
      "isActive": isActive,
      "replayAvailable": replayAvailable,
      "limit": limit,
      "page": page
    ])
  }

  ///  Title of the live event. We can prefix search after 3 characters. For a phrase search(multiple words), the phrase should match completely.
  public var title: GraphQLNullable<String> {
    get { __data["title"] }
    set { __data["title"] = newValue }
  }

  ///  Tags of the live event. We can filter live events if any tags we send here is in the tags of the live event.
  public var tags: GraphQLNullable<[String?]> {
    get { __data["tags"] }
    set { __data["tags"] = newValue }
  }

  ///  Status of the live event. We can filter live events by their status. 0: Created, 1: Teaser, 2: Ready to Stream, 3: Streaming, 4: Stream Ended, 5: Cancelled.
  public var statuses: GraphQLNullable<[String?]> {
    get { __data["statuses"] }
    set { __data["statuses"] = newValue }
  }

  ///  If we use startDate we should send endDate too this will filter live events by their created at date is in between the startDate and endDate.
  public var startDate: GraphQLNullable<AWSDateTime> {
    get { __data["startDate"] }
    set { __data["startDate"] = newValue }
  }

  ///  If we use endDate we should send startDate too this will filter live events by their created at date is in between the startDate and endDate.
  public var endDate: GraphQLNullable<AWSDateTime> {
    get { __data["endDate"] }
    set { __data["endDate"] = newValue }
  }

  ///  We can filter live events by their active status. We can only search for passive live events in host app or admin panel.
  public var isActive: GraphQLNullable<Bool> {
    get { __data["isActive"] }
    set { __data["isActive"] = newValue }
  }

  ///  We can filter live events by their replay availability. By using this field we can divide stream ended status live events to replay available and not available.
  public var replayAvailable: GraphQLNullable<Bool> {
    get { __data["replayAvailable"] }
    set { __data["replayAvailable"] = newValue }
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
