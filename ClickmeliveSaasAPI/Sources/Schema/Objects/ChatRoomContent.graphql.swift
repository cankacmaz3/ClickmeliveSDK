// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension Objects {
  ///  This will be used to paginate chat messages in a chat room. Messages return from here will be the latest messages in the chat room but for client purposes you have to reverse the data coming from here because its sorted by createdAt field in descending order.
  static let ChatRoomContent = ApolloAPI.Object(
    typename: "ChatRoomContent",
    implementedInterfaces: []
  )
}