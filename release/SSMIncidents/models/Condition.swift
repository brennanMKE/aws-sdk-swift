// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>A conditional statement with which to compare a value, after a timestamp, before a
///          timestamp, or equal to a string or integer. If multiple conditions are specified, the
///          conditionals become an <code>AND</code>ed statement. If multiple values are specified for a
///          conditional, the values are <code>OR</code>d.</p>
public enum Condition: Equatable {
    /// <p>Before the specified timestamp</p>
    case before(Date?)
    /// <p>After the specified timestamp.</p>
    case after(Date?)
    /// <p>The value is equal to the provided string or integer. </p>
    case equals(AttributeValueList?)
    case sdkUnknown(String?)
}