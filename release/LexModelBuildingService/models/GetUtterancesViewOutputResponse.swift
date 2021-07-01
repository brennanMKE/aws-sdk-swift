// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetUtterancesViewOutputResponse: Equatable {
    /// <p>The name of the bot for which utterance information was
    ///       returned.</p>
    public let botName: String?
    /// <p>An array of <a>UtteranceList</a> objects, each
    ///       containing a list of <a>UtteranceData</a> objects describing
    ///       the utterances that were processed by your bot. The response contains a
    ///       maximum of 100 <code>UtteranceData</code> objects for each version. Amazon Lex
    ///       returns the most frequent utterances received by the bot in the last 15
    ///       days.</p>
    public let utterances: [UtteranceList]?

    public init (
        botName: String? = nil,
        utterances: [UtteranceList]? = nil
    )
    {
        self.botName = botName
        self.utterances = utterances
    }
}

extension GetUtterancesViewOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetUtterancesViewOutputResponse(botName: \(String(describing: botName)), utterances: \(String(describing: utterances)))"}
}