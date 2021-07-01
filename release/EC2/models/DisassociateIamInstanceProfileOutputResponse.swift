// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DisassociateIamInstanceProfileOutputResponse: Equatable {
    /// <p>Information about the IAM instance profile association.</p>
    public let iamInstanceProfileAssociation: IamInstanceProfileAssociation?

    public init (
        iamInstanceProfileAssociation: IamInstanceProfileAssociation? = nil
    )
    {
        self.iamInstanceProfileAssociation = iamInstanceProfileAssociation
    }
}

extension DisassociateIamInstanceProfileOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DisassociateIamInstanceProfileOutputResponse(iamInstanceProfileAssociation: \(String(describing: iamInstanceProfileAssociation)))"}
}