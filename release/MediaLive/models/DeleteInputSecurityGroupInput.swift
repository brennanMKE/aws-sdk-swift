// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// Placeholder documentation for DeleteInputSecurityGroupRequest
public struct DeleteInputSecurityGroupInput: Equatable {
    /// The Input Security Group to delete
    public let inputSecurityGroupId: String?

    public init (
        inputSecurityGroupId: String? = nil
    )
    {
        self.inputSecurityGroupId = inputSecurityGroupId
    }
}

extension DeleteInputSecurityGroupInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteInputSecurityGroupInput(inputSecurityGroupId: \(String(describing: inputSecurityGroupId)))"}
}