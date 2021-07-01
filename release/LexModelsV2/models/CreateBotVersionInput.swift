// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateBotVersionInput: Equatable {
    /// <p>The identifier of the bot to create the version for.</p>
    public let botId: String?
    /// <p>Specifies the locales that Amazon Lex adds to this version. You can
    ///          choose the <code>Draft</code> version or any other previously published
    ///          version for each locale. When you specify a source version, the locale
    ///          data is copied from the source version to the new version.</p>
    public let botVersionLocaleSpecification: [String:BotVersionLocaleDetails]?
    /// <p>A description of the version. Use the description to help identify
    ///          the version in lists.</p>
    public let description: String?

    public init (
        botId: String? = nil,
        botVersionLocaleSpecification: [String:BotVersionLocaleDetails]? = nil,
        description: String? = nil
    )
    {
        self.botId = botId
        self.botVersionLocaleSpecification = botVersionLocaleSpecification
        self.description = description
    }
}

extension CreateBotVersionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateBotVersionInput(botId: \(String(describing: botId)), botVersionLocaleSpecification: \(String(describing: botVersionLocaleSpecification)), description: \(String(describing: description)))"}
}