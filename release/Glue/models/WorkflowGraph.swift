// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A workflow graph represents the complete workflow containing all the AWS Glue components present in the
///       workflow and all the directed connections between them.</p>
public struct WorkflowGraph: Equatable {
    /// <p>A list of all the directed connections between the nodes belonging to the workflow.</p>
    public let edges: [Edge]?
    /// <p>A list of the the AWS Glue components belong to the workflow represented as nodes.</p>
    public let nodes: [Node]?

    public init (
        edges: [Edge]? = nil,
        nodes: [Node]? = nil
    )
    {
        self.edges = edges
        self.nodes = nodes
    }
}

extension WorkflowGraph: CustomDebugStringConvertible {
    public var debugDescription: String {
        "WorkflowGraph(edges: \(String(describing: edges)), nodes: \(String(describing: nodes)))"}
}