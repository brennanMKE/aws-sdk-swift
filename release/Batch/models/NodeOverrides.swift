// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Object representing any node overrides to a job definition that's used in a <a>SubmitJob</a> API
///    operation.</p>
///          <note>
///             <p>This isn't applicable to jobs running on Fargate resources and shouldn't be provided; use
///      <code>containerOverrides</code> instead.</p>
///          </note>
public struct NodeOverrides: Equatable {
    /// <p>The node property overrides for the job.</p>
    public let nodePropertyOverrides: [NodePropertyOverride]?
    /// <p>The number of nodes to use with a multi-node parallel job. This value overrides the number of nodes that are
    ///    specified in the job definition. To use this override:</p>
    ///          <ul>
    ///             <li>
    ///                <p>There must be at least one node range in your job definition that has an open upper boundary (such as
    ///       <code>:</code> or <code>n:</code>).</p>
    ///             </li>
    ///             <li>
    ///                <p>The lower boundary of the node range specified in the job definition must be fewer than the number of nodes
    ///      specified in the override.</p>
    ///             </li>
    ///             <li>
    ///                <p>The main node index specified in the job definition must be fewer than the number of nodes specified in the
    ///      override.</p>
    ///             </li>
    ///          </ul>
    public let numNodes: Int

    public init (
        nodePropertyOverrides: [NodePropertyOverride]? = nil,
        numNodes: Int = 0
    )
    {
        self.nodePropertyOverrides = nodePropertyOverrides
        self.numNodes = numNodes
    }
}

extension NodeOverrides: CustomDebugStringConvertible {
    public var debugDescription: String {
        "NodeOverrides(nodePropertyOverrides: \(String(describing: nodePropertyOverrides)), numNodes: \(String(describing: numNodes)))"}
}