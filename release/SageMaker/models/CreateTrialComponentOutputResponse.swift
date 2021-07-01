// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateTrialComponentOutputResponse: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the trial component.</p>
    public let trialComponentArn: String?

    public init (
        trialComponentArn: String? = nil
    )
    {
        self.trialComponentArn = trialComponentArn
    }
}

extension CreateTrialComponentOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateTrialComponentOutputResponse(trialComponentArn: \(String(describing: trialComponentArn)))"}
}