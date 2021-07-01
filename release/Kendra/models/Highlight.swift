// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Provides information that you can use to highlight a search result
///             so that your users can quickly identify terms in the
///             response.</p>
public struct Highlight: Equatable {
    /// <p>The zero-based location in the response string where the highlight
    ///             starts.</p>
    public let beginOffset: Int?
    /// <p>The zero-based location in the response string where the highlight
    ///             ends.</p>
    public let endOffset: Int?
    /// <p>Indicates whether the response is the best response. True if this
    ///             is the best response; otherwise, false.</p>
    public let topAnswer: Bool
    /// <p>The highlight type. </p>
    public let type: HighlightType?

    public init (
        beginOffset: Int? = nil,
        endOffset: Int? = nil,
        topAnswer: Bool = false,
        type: HighlightType? = nil
    )
    {
        self.beginOffset = beginOffset
        self.endOffset = endOffset
        self.topAnswer = topAnswer
        self.type = type
    }
}

extension Highlight: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Highlight(beginOffset: \(String(describing: beginOffset)), endOffset: \(String(describing: endOffset)), topAnswer: \(String(describing: topAnswer)), type: \(String(describing: type)))"}
}