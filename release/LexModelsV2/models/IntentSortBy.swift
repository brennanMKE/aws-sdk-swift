// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies attributes for sorting a list of intents.</p>
public struct IntentSortBy: Equatable {
    /// <p>The attribute to use to sort the list of intents.</p>
    public let attribute: IntentSortAttribute?
    /// <p>The order to sort the list. You can choose ascending or
    ///          descending.</p>
    public let order: SortOrder?

    public init (
        attribute: IntentSortAttribute? = nil,
        order: SortOrder? = nil
    )
    {
        self.attribute = attribute
        self.order = order
    }
}

extension IntentSortBy: CustomDebugStringConvertible {
    public var debugDescription: String {
        "IntentSortBy(attribute: \(String(describing: attribute)), order: \(String(describing: order)))"}
}