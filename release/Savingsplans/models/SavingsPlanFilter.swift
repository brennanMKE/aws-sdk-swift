// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about a filter.</p>
public struct SavingsPlanFilter: Equatable {
    /// <p>The filter name.</p>
    public let name: SavingsPlansFilterName?
    /// <p>The filter value.</p>
    public let values: [String]?

    public init (
        name: SavingsPlansFilterName? = nil,
        values: [String]? = nil
    )
    {
        self.name = name
        self.values = values
    }
}

extension SavingsPlanFilter: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SavingsPlanFilter(name: \(String(describing: name)), values: \(String(describing: values)))"}
}