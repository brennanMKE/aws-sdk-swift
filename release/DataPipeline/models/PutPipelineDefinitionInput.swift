// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the parameters for PutPipelineDefinition.</p>
public struct PutPipelineDefinitionInput: Equatable {
    /// <p>The parameter objects used with the pipeline.</p>
    public let parameterObjects: [ParameterObject]?
    /// <p>The parameter values used with the pipeline.</p>
    public let parameterValues: [ParameterValue]?
    /// <p>The ID of the pipeline.</p>
    public let pipelineId: String?
    /// <p>The objects that define the pipeline. These objects overwrite the existing pipeline definition.</p>
    public let pipelineObjects: [PipelineObject]?

    public init (
        parameterObjects: [ParameterObject]? = nil,
        parameterValues: [ParameterValue]? = nil,
        pipelineId: String? = nil,
        pipelineObjects: [PipelineObject]? = nil
    )
    {
        self.parameterObjects = parameterObjects
        self.parameterValues = parameterValues
        self.pipelineId = pipelineId
        self.pipelineObjects = pipelineObjects
    }
}

extension PutPipelineDefinitionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PutPipelineDefinitionInput(parameterObjects: \(String(describing: parameterObjects)), parameterValues: \(String(describing: parameterValues)), pipelineId: \(String(describing: pipelineId)), pipelineObjects: \(String(describing: pipelineObjects)))"}
}