// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Sends an AWS IoT Events input, passing in information about the detector model instance and the
///       event that triggered the action.</p>
public struct IotEventsAction: Equatable {
    /// <p>The name of the AWS IoT Events input where the data is sent.</p>
    public let inputName: String?
    /// <p>You can configure the action payload when you send a message to an AWS IoT Events input.</p>
    public let payload: Payload?

    public init (
        inputName: String? = nil,
        payload: Payload? = nil
    )
    {
        self.inputName = inputName
        self.payload = payload
    }
}

extension IotEventsAction: CustomDebugStringConvertible {
    public var debugDescription: String {
        "IotEventsAction(inputName: \(String(describing: inputName)), payload: \(String(describing: payload)))"}
}