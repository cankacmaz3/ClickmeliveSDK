// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

///  This input will be used to create a chat message in the system.
public struct ChatMessageInput: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    userId: ID,
    eventId: ID,
    userDisplayName: String,
    message: String
  ) {
    __data = InputDict([
      "userId": userId,
      "eventId": eventId,
      "userDisplayName": userDisplayName,
      "message": message
    ])
  }

  ///  User id of the chat message creator.
  public var userId: ID {
    get { __data["userId"] }
    set { __data["userId"] = newValue }
  }

  ///  Event id of the chat message.
  public var eventId: ID {
    get { __data["eventId"] }
    set { __data["eventId"] = newValue }
  }

  ///  User display name of the chat message creator.
  public var userDisplayName: String {
    get { __data["userDisplayName"] }
    set { __data["userDisplayName"] = newValue }
  }

  ///  Message of the chat message.
  public var message: String {
    get { __data["message"] }
    set { __data["message"] = newValue }
  }
}
