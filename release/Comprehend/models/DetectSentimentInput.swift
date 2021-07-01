// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DetectSentimentInput: Equatable {
    /// <p>The language of the input documents. You can specify any of the primary languages
    ///       supported by Amazon Comprehend. All documents must be in the same language.</p>
    public let languageCode: LanguageCode?
    /// <p>A UTF-8 text string. Each string must contain fewer that 5,000 bytes of UTF-8 encoded
    ///       characters.</p>
    public let text: String?

    public init (
        languageCode: LanguageCode? = nil,
        text: String? = nil
    )
    {
        self.languageCode = languageCode
        self.text = text
    }
}

extension DetectSentimentInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DetectSentimentInput(languageCode: \(String(describing: languageCode)), text: \(String(describing: text)))"}
}