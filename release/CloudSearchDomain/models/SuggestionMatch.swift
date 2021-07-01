// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>An autocomplete suggestion that matches the query string specified in a <code>SuggestRequest</code>. </p>
public struct SuggestionMatch: Equatable {
    /// <p>The document ID of the suggested document.</p>
    public let id: String?
    /// <p>The relevance score of a suggested match.</p>
    public let score: Int
    /// <p>The string that matches the query string specified in the <code>SuggestRequest</code>. </p>
    public let suggestion: String?

    public init (
        id: String? = nil,
        score: Int = 0,
        suggestion: String? = nil
    )
    {
        self.id = id
        self.score = score
        self.suggestion = suggestion
    }
}

extension SuggestionMatch: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SuggestionMatch(id: \(String(describing: id)), score: \(String(describing: score)), suggestion: \(String(describing: suggestion)))"}
}