// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ModifyManagedPrefixListOutputResponse: Equatable {
    /// <p>Information about the prefix list.</p>
    public let prefixList: ManagedPrefixList?

    public init (
        prefixList: ManagedPrefixList? = nil
    )
    {
        self.prefixList = prefixList
    }
}

extension ModifyManagedPrefixListOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ModifyManagedPrefixListOutputResponse(prefixList: \(String(describing: prefixList)))"}
}