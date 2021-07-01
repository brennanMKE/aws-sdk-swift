// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains a list of child entities, either OUs or accounts.</p>
public struct Child: Equatable {
    /// <p>The unique identifier (ID) of this child entity.</p>
    ///         <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a child ID string requires one of the
    ///     following:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <b>Account</b> - A string that consists of exactly 12 digits.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <b>Organizational unit (OU)</b> - A string that begins with
    ///           "ou-" followed by from 4 to 32 lowercase letters or digits (the ID of the root that
    ///           contains the OU). This string is followed by a second "-" dash and from 8 to 32 additional
    ///           lowercase letters or digits.</p>
    ///             </li>
    ///          </ul>
    public let id: String?
    /// <p>The type of this child entity.</p>
    public let type: ChildType?

    public init (
        id: String? = nil,
        type: ChildType? = nil
    )
    {
        self.id = id
        self.type = type
    }
}

extension Child: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Child(id: \(String(describing: id)), type: \(String(describing: type)))"}
}