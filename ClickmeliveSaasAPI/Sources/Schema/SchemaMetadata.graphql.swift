// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public typealias ID = String

public protocol SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == ClickmeliveSaasAPI.SchemaMetadata {}

public protocol InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == ClickmeliveSaasAPI.SchemaMetadata {}

public protocol MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == ClickmeliveSaasAPI.SchemaMetadata {}

public protocol MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == ClickmeliveSaasAPI.SchemaMetadata {}

public enum SchemaMetadata: ApolloAPI.SchemaMetadata {
  public static let configuration: ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

  public static func objectType(forTypename typename: String) -> ApolloAPI.Object? {
    switch typename {
    case "Query": return ClickmeliveSaasAPI.Objects.Query
    case "ChatRoomContent": return ClickmeliveSaasAPI.Objects.ChatRoomContent
    case "ChatMessage": return ClickmeliveSaasAPI.Objects.ChatMessage
    case "Subscription": return ClickmeliveSaasAPI.Objects.Subscription
    case "EventItem": return ClickmeliveSaasAPI.Objects.EventItem
    case "VideoSearchConnection": return ClickmeliveSaasAPI.Objects.VideoSearchConnection
    case "Video": return ClickmeliveSaasAPI.Objects.Video
    case "PaginationMetadata": return ClickmeliveSaasAPI.Objects.PaginationMetadata
    case "Mutation": return ClickmeliveSaasAPI.Objects.Mutation
    case "LiveEvent": return ClickmeliveSaasAPI.Objects.LiveEvent
    case "VideoConnection": return ClickmeliveSaasAPI.Objects.VideoConnection
    case "ChatMessageBan": return ClickmeliveSaasAPI.Objects.ChatMessageBan
    case "VideoDetail": return ClickmeliveSaasAPI.Objects.VideoDetail
    case "Tag": return ClickmeliveSaasAPI.Objects.Tag
    case "LiveEventSearchConnection": return ClickmeliveSaasAPI.Objects.LiveEventSearchConnection
    case "LiveEventUserInteraction": return ClickmeliveSaasAPI.Objects.LiveEventUserInteraction
    case "VideoUserInteraction": return ClickmeliveSaasAPI.Objects.VideoUserInteraction
    case "LiveEventDetail": return ClickmeliveSaasAPI.Objects.LiveEventDetail
    case "LiveEventConnection": return ClickmeliveSaasAPI.Objects.LiveEventConnection
    case "LiveEventViewer": return ClickmeliveSaasAPI.Objects.LiveEventViewer
    case "TagConnection": return ClickmeliveSaasAPI.Objects.TagConnection
    default: return nil
    }
  }
}

public enum Objects {}
public enum Interfaces {}
public enum Unions {}
