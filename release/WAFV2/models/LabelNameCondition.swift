// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A single label name condition for a <a>Condition</a> in a logging filter.</p>
public struct LabelNameCondition: Equatable {
    /// <p>The label name that a log record must contain in order to meet the condition. This must be a fully qualified label name. Fully qualified labels have a prefix, optional namespaces, and label name. The prefix identifies the rule group or web ACL context of the rule that added the label.  </p>
    public let labelName: String?

    public init (
        labelName: String? = nil
    )
    {
        self.labelName = labelName
    }
}

extension LabelNameCondition: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LabelNameCondition(labelName: \(String(describing: labelName)))"}
}