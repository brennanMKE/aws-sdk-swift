// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct StartConversationInput: Equatable {
    /// <p>The alias identifier in use for the bot that processes the
    ///          request.</p>
    public let botAliasId: String?
    /// <p>The identifier of the bot to process the request.</p>
    public let botId: String?
    /// <p>The conversation type that you are using the Amazon Lex. If the
    ///          conversation mode is <code>AUDIO</code> you can send both audio and
    ///          DTMF information. If the mode is <code>TEXT</code> you can only send
    ///          text.</p>
    public let conversationMode: ConversationMode?
    /// <p>The locale where the session is in use.</p>
    public let localeId: String?
    /// <p>Represents the stream of events to Amazon Lex from your application. The
    ///          events are encoded as HTTP/2 data frames.</p>
    public let requestEventStream: StartConversationRequestEventStream?
    /// <p>The identifier of the user session that is having the
    ///          conversation.</p>
    public let sessionId: String?

    public init (
        botAliasId: String? = nil,
        botId: String? = nil,
        conversationMode: ConversationMode? = nil,
        localeId: String? = nil,
        requestEventStream: StartConversationRequestEventStream? = nil,
        sessionId: String? = nil
    )
    {
        self.botAliasId = botAliasId
        self.botId = botId
        self.conversationMode = conversationMode
        self.localeId = localeId
        self.requestEventStream = requestEventStream
        self.sessionId = sessionId
    }
}

extension StartConversationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StartConversationInput(botAliasId: \(String(describing: botAliasId)), botId: \(String(describing: botId)), conversationMode: \(String(describing: conversationMode)), localeId: \(String(describing: localeId)), requestEventStream: \(String(describing: requestEventStream)), sessionId: \(String(describing: sessionId)))"}
}