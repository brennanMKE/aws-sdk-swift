// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The label schema.</p>
public struct LabelSchema: Equatable {
    /// <p>The label mapper maps the Amazon Fraud Detector supported model classification labels (<code>FRAUD</code>, <code>LEGIT</code>) to the appropriate event type labels. For example, if "<code>FRAUD</code>" and "<code>LEGIT</code>" are Amazon Fraud Detector supported labels, this mapper could be: <code>{"FRAUD" => ["0"]</code>, <code>"LEGIT" => ["1"]}</code> or <code>{"FRAUD" => ["false"]</code>, <code>"LEGIT" => ["true"]}</code> or <code>{"FRAUD" => ["fraud", "abuse"]</code>, <code>"LEGIT" => ["legit", "safe"]}</code>. The value part of the mapper is a list, because you may have multiple label variants from your event type for a single Amazon Fraud Detector label.
    ///         </p>
    public let labelMapper: [String:[String]]?

    public init (
        labelMapper: [String:[String]]? = nil
    )
    {
        self.labelMapper = labelMapper
    }
}

extension LabelSchema: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LabelSchema(labelMapper: \(String(describing: labelMapper)))"}
}