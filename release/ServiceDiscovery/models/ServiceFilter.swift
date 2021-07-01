// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A complex type that lets you specify the namespaces that you want to list services for.</p>
public struct ServiceFilter: Equatable {
    /// <p>The operator that you want to use to determine whether a service is returned by <code>ListServices</code>. Valid
    ///    values for <code>Condition</code> include the following:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>EQ</code>: When you specify <code>EQ</code>, specify one namespace ID for <code>Values</code>.
    ///       <code>EQ</code> is the default condition and can be omitted.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>IN</code>: When you specify <code>IN</code>, specify a list of the IDs for the namespaces that you want
    ///       <code>ListServices</code> to return a list of services for.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>BETWEEN</code>: Not applicable.</p>
    ///             </li>
    ///          </ul>
    public let condition: FilterCondition?
    /// <p>Specify <code>NAMESPACE_ID</code>.</p>
    public let name: ServiceFilterName?
    /// <p>The values that are applicable to the value that you specify for <code>Condition</code> to filter the list of
    ///    services.</p>
    public let values: [String]?

    public init (
        condition: FilterCondition? = nil,
        name: ServiceFilterName? = nil,
        values: [String]? = nil
    )
    {
        self.condition = condition
        self.name = name
        self.values = values
    }
}

extension ServiceFilter: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ServiceFilter(condition: \(String(describing: condition)), name: \(String(describing: name)), values: \(String(describing: values)))"}
}