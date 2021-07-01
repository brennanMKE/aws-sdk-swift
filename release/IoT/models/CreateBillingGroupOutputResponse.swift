// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateBillingGroupOutputResponse: Equatable {
    /// <p>The ARN of the billing group.</p>
    public let billingGroupArn: String?
    /// <p>The ID of the billing group.</p>
    public let billingGroupId: String?
    /// <p>The name you gave to the billing group.</p>
    public let billingGroupName: String?

    public init (
        billingGroupArn: String? = nil,
        billingGroupId: String? = nil,
        billingGroupName: String? = nil
    )
    {
        self.billingGroupArn = billingGroupArn
        self.billingGroupId = billingGroupId
        self.billingGroupName = billingGroupName
    }
}

extension CreateBillingGroupOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateBillingGroupOutputResponse(billingGroupArn: \(String(describing: billingGroupArn)), billingGroupId: \(String(describing: billingGroupId)), billingGroupName: \(String(describing: billingGroupName)))"}
}