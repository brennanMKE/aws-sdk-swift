// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p> Represents the output of a <code>GetMLModel</code> operation. </p>
///          <p>The content consists of the detailed metadata and the current status of the <code>MLModel</code>.</p>
public struct MLModel: Equatable {
    /// <p>The algorithm used to train the <code>MLModel</code>. The following algorithm is supported:</p>
    ///         <ul>
    ///             <li>
    ///                <p>
    ///                   <code>SGD</code> -- Stochastic gradient descent. The goal of <code>SGD</code> is to minimize the gradient of the loss function. </p>
    ///             </li>
    ///          </ul>
    public let algorithm: Algorithm?
    /// <p>Long integer type that is a 64-bit signed number.</p>
    public let computeTime: Int?
    /// <p>The time that the <code>MLModel</code> was created. The time is expressed in epoch time.</p>
    public let createdAt: Date?
    /// <p>The AWS user account from which the <code>MLModel</code> was created. The account type can be either an AWS root account or an AWS Identity and Access Management (IAM) user account.</p>
    public let createdByIamUser: String?
    /// <p>The current endpoint of the <code>MLModel</code>.</p>
    public let endpointInfo: RealtimeEndpointInfo?
    /// <p>A timestamp represented in epoch time.</p>
    public let finishedAt: Date?
    /// <p>The location of the data file or directory in Amazon Simple Storage Service (Amazon S3).</p>
    public let inputDataLocationS3: String?
    /// <p>The time of the most recent edit to the <code>MLModel</code>. The time is expressed in epoch time.</p>
    public let lastUpdatedAt: Date?
    /// <p>The ID assigned to the <code>MLModel</code> at creation.</p>
    public let mLModelId: String?
    /// <p>Identifies the <code>MLModel</code> category. The following are the available types:</p>
    ///         <ul>
    ///             <li>
    ///                <p>
    ///                   <code>REGRESSION</code> - Produces a numeric result. For example, "What price should a
    ///                 house be listed at?"</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>BINARY</code> - Produces one of two possible results. For example, "Is this a
    ///                 child-friendly web site?".</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>MULTICLASS</code> - Produces one of several possible results. For example, "Is
    ///                 this a HIGH-, LOW-, or MEDIUM-risk trade?".</p>
    ///             </li>
    ///          </ul>
    public let mLModelType: MLModelType?
    /// <p>A description of the most recent details about accessing the <code>MLModel</code>.</p>
    public let message: String?
    /// <p>A user-supplied name or description of the <code>MLModel</code>.</p>
    public let name: String?
    public let scoreThreshold: Float?
    /// <p>The time of the most recent edit to the <code>ScoreThreshold</code>. The time is expressed in epoch time.</p>
    public let scoreThresholdLastUpdatedAt: Date?
    /// <p>Long integer type that is a 64-bit signed number.</p>
    public let sizeInBytes: Int?
    /// <p>A timestamp represented in epoch time.</p>
    public let startedAt: Date?
    /// <p>The current status of an <code>MLModel</code>. This element can have one of the following values: </p>
    ///         <ul>
    ///             <li>
    ///                <p>
    ///                   <code>PENDING</code>	- Amazon Machine Learning (Amazon ML) submitted a request to create an <code>MLModel</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>INPROGRESS</code>	- The creation process is underway.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>FAILED</code> - The request to create an <code>MLModel</code> didn't run to
    ///                 completion. The model isn't usable.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>COMPLETED</code>	- The creation process completed successfully.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>DELETED</code> - The <code>MLModel</code> is marked as deleted. It isn't
    ///                 usable.</p>
    ///             </li>
    ///          </ul>
    public let status: EntityStatus?
    /// <p>The ID of the training <code>DataSource</code>. The <code>CreateMLModel</code> operation uses the <code>TrainingDataSourceId</code>.</p>
    public let trainingDataSourceId: String?
    /// <p>A list of the training parameters in the <code>MLModel</code>. The list is implemented as
    ///             a map of key-value pairs.</p>
    ///         <p>The following is the current set of training parameters:</p>
    ///         <ul>
    ///             <li>
    ///                <p>
    ///                   <code>sgd.maxMLModelSizeInBytes</code> - The maximum allowed size of the model. Depending on the
    ///                     input data, the size of the model might affect its performance.</p>
    ///                 <p> The value is an integer that ranges from <code>100000</code> to <code>2147483648</code>. The default value is <code>33554432</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>sgd.maxPasses</code> - The number of times that the training process traverses the
    ///                     observations to build the <code>MLModel</code>. The value is an integer that
    ///                     ranges from <code>1</code> to <code>10000</code>. The default value is
    ///                         <code>10</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>sgd.shuffleType</code> - Whether Amazon ML shuffles the training data. Shuffling the data
    ///                     improves a model's ability to find the optimal solution for a variety of data
    ///                     types. The valid values are <code>auto</code> and <code>none</code>. The default
    ///                     value is <code>none</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>sgd.l1RegularizationAmount</code> - The coefficient regularization L1 norm, which controls
    ///                     overfitting the data by penalizing large coefficients. This parameter tends to
    ///                     drive coefficients to zero, resulting in sparse feature set. If you use this
    ///                     parameter, start by specifying a small value, such as <code>1.0E-08</code>.</p>
    ///                 <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>.
    ///                     The default is to not use L1 normalization. This parameter can't be used when
    ///                         <code>L2</code> is specified. Use this parameter sparingly.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>sgd.l2RegularizationAmount</code> - The coefficient regularization L2 norm, which controls
    ///                     overfitting the data by penalizing large coefficients. This tends to drive
    ///                     coefficients to small, nonzero values. If you use this parameter, start by
    ///                     specifying a small value, such as <code>1.0E-08</code>.</p>
    ///                 <p>The value is a double that ranges from <code>0</code> to <code>MAX_DOUBLE</code>.
    ///                     The default is to not use L2 normalization. This parameter can't be used when
    ///                         <code>L1</code> is specified. Use this parameter sparingly.</p>
    ///             </li>
    ///          </ul>
    public let trainingParameters: [String:String]?

    public init (
        algorithm: Algorithm? = nil,
        computeTime: Int? = nil,
        createdAt: Date? = nil,
        createdByIamUser: String? = nil,
        endpointInfo: RealtimeEndpointInfo? = nil,
        finishedAt: Date? = nil,
        inputDataLocationS3: String? = nil,
        lastUpdatedAt: Date? = nil,
        mLModelId: String? = nil,
        mLModelType: MLModelType? = nil,
        message: String? = nil,
        name: String? = nil,
        scoreThreshold: Float? = nil,
        scoreThresholdLastUpdatedAt: Date? = nil,
        sizeInBytes: Int? = nil,
        startedAt: Date? = nil,
        status: EntityStatus? = nil,
        trainingDataSourceId: String? = nil,
        trainingParameters: [String:String]? = nil
    )
    {
        self.algorithm = algorithm
        self.computeTime = computeTime
        self.createdAt = createdAt
        self.createdByIamUser = createdByIamUser
        self.endpointInfo = endpointInfo
        self.finishedAt = finishedAt
        self.inputDataLocationS3 = inputDataLocationS3
        self.lastUpdatedAt = lastUpdatedAt
        self.mLModelId = mLModelId
        self.mLModelType = mLModelType
        self.message = message
        self.name = name
        self.scoreThreshold = scoreThreshold
        self.scoreThresholdLastUpdatedAt = scoreThresholdLastUpdatedAt
        self.sizeInBytes = sizeInBytes
        self.startedAt = startedAt
        self.status = status
        self.trainingDataSourceId = trainingDataSourceId
        self.trainingParameters = trainingParameters
    }
}

extension MLModel: CustomDebugStringConvertible {
    public var debugDescription: String {
        "MLModel(algorithm: \(String(describing: algorithm)), computeTime: \(String(describing: computeTime)), createdAt: \(String(describing: createdAt)), createdByIamUser: \(String(describing: createdByIamUser)), endpointInfo: \(String(describing: endpointInfo)), finishedAt: \(String(describing: finishedAt)), inputDataLocationS3: \(String(describing: inputDataLocationS3)), lastUpdatedAt: \(String(describing: lastUpdatedAt)), mLModelId: \(String(describing: mLModelId)), mLModelType: \(String(describing: mLModelType)), message: \(String(describing: message)), name: \(String(describing: name)), scoreThreshold: \(String(describing: scoreThreshold)), scoreThresholdLastUpdatedAt: \(String(describing: scoreThresholdLastUpdatedAt)), sizeInBytes: \(String(describing: sizeInBytes)), startedAt: \(String(describing: startedAt)), status: \(String(describing: status)), trainingDataSourceId: \(String(describing: trainingDataSourceId)), trainingParameters: \(String(describing: trainingParameters)))"}
}