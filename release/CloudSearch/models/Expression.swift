// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A named expression that can be evaluated at search time. Can be used to sort the search results, define other expressions, or return computed information in the search results.  </p>
public struct Expression: Equatable {
    /// <p>Names must begin with a letter and can contain the following characters:
    ///       a-z (lowercase), 0-9, and _ (underscore).</p>
    public let expressionName: String?
    /// <p>The expression to evaluate for sorting while processing a search request.  The <code>Expression</code> syntax is based on JavaScript expressions. For more information, see <a href="http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html" target="_blank">Configuring Expressions</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>
    public let expressionValue: String?

    public init (
        expressionName: String? = nil,
        expressionValue: String? = nil
    )
    {
        self.expressionName = expressionName
        self.expressionValue = expressionValue
    }
}

extension Expression: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Expression(expressionName: \(String(describing: expressionName)), expressionValue: \(String(describing: expressionValue)))"}
}