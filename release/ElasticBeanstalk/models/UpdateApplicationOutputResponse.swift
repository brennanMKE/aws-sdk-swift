// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Result message containing a single description of an application.</p>
public struct UpdateApplicationOutputResponse: Equatable {
    /// <p> The <a>ApplicationDescription</a> of the application. </p>
    public let application: ApplicationDescription?

    public init (
        application: ApplicationDescription? = nil
    )
    {
        self.application = application
    }
}

extension UpdateApplicationOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateApplicationOutputResponse(application: \(String(describing: application)))"}
}