// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Defines a list of values that Amazon Lex should use as the default value
///          for a slot.</p>
public struct SlotDefaultValueSpecification: Equatable {
    /// <p>A list of default values. Amazon Lex chooses the default value to use in
    ///          the order that they are presented in the list.</p>
    public let defaultValueList: [SlotDefaultValue]?

    public init (
        defaultValueList: [SlotDefaultValue]? = nil
    )
    {
        self.defaultValueList = defaultValueList
    }
}

extension SlotDefaultValueSpecification: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SlotDefaultValueSpecification(defaultValueList: \(String(describing: defaultValueList)))"}
}