// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A single element in a path through the JSON representation of a policy.</p>
public enum PathElement: Equatable {
    /// <p>Refers to an index in a JSON array.</p>
    case index(Int?)
    /// <p>Refers to a key in a JSON object.</p>
    case key(String?)
    /// <p>Refers to a substring of a literal string in a JSON object.</p>
    case substring(Substring?)
    /// <p>Refers to the value associated with a given key in a JSON object.</p>
    case value(String?)
    case sdkUnknown(String?)
}