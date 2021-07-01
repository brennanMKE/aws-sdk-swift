// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents a request to display the template object (which includes the subject line,
///             HTML part and text part) for the template you specify.</p>
public struct GetEmailTemplateInput: Equatable {
    /// <p>The name of the template you want to retrieve.</p>
    public let templateName: String?

    public init (
        templateName: String? = nil
    )
    {
        self.templateName = templateName
    }
}

extension GetEmailTemplateInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetEmailTemplateInput(templateName: \(String(describing: templateName)))"}
}