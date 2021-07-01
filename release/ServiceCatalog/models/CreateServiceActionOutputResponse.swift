// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateServiceActionOutputResponse: Equatable {
    /// <p>An object containing information about the self-service action.</p>
    public let serviceActionDetail: ServiceActionDetail?

    public init (
        serviceActionDetail: ServiceActionDetail? = nil
    )
    {
        self.serviceActionDetail = serviceActionDetail
    }
}

extension CreateServiceActionOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateServiceActionOutputResponse(serviceActionDetail: \(String(describing: serviceActionDetail)))"}
}