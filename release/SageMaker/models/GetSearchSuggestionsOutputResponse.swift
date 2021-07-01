// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetSearchSuggestionsOutputResponse: Equatable {
    /// <p>A list of property names for a <code>Resource</code> that match a
    ///       <code>SuggestionQuery</code>.</p>
    public let propertyNameSuggestions: [PropertyNameSuggestion]?

    public init (
        propertyNameSuggestions: [PropertyNameSuggestion]? = nil
    )
    {
        self.propertyNameSuggestions = propertyNameSuggestions
    }
}

extension GetSearchSuggestionsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetSearchSuggestionsOutputResponse(propertyNameSuggestions: \(String(describing: propertyNameSuggestions)))"}
}