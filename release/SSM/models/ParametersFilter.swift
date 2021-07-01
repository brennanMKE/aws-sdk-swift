// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>This data type is deprecated. Instead, use <a>ParameterStringFilter</a>.</p>
public struct ParametersFilter: Equatable {
    /// <p>The name of the filter.</p>
    public let key: ParametersFilterKey?
    /// <p>The filter values.</p>
    public let values: [String]?

    public init (
        key: ParametersFilterKey? = nil,
        values: [String]? = nil
    )
    {
        self.key = key
        self.values = values
    }
}

extension ParametersFilter: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ParametersFilter(key: \(String(describing: key)), values: \(String(describing: values)))"}
}