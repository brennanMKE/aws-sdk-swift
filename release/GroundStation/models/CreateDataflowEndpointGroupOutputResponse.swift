// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p/>
public struct CreateDataflowEndpointGroupOutputResponse: Equatable {
    /// <p>UUID of a dataflow endpoint group.</p>
    public let dataflowEndpointGroupId: String?

    public init (
        dataflowEndpointGroupId: String? = nil
    )
    {
        self.dataflowEndpointGroupId = dataflowEndpointGroupId
    }
}

extension CreateDataflowEndpointGroupOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateDataflowEndpointGroupOutputResponse(dataflowEndpointGroupId: \(String(describing: dataflowEndpointGroupId)))"}
}