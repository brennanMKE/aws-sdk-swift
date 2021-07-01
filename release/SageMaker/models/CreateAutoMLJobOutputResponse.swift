// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateAutoMLJobOutputResponse: Equatable {
    /// <p>The unique ARN that is assigned to the AutoML job when it is created.</p>
    public let autoMLJobArn: String?

    public init (
        autoMLJobArn: String? = nil
    )
    {
        self.autoMLJobArn = autoMLJobArn
    }
}

extension CreateAutoMLJobOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateAutoMLJobOutputResponse(autoMLJobArn: \(String(describing: autoMLJobArn)))"}
}