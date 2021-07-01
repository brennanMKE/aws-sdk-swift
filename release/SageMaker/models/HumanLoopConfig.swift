// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the work to be performed by human workers.</p>
public struct HumanLoopConfig: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the human task user interface.</p>
    ///          <p>You can use standard HTML and Crowd HTML Elements to create a custom worker task
    ///          template. You use this template to create a human task UI.</p>
    ///          <p>To learn how to create a custom HTML template, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-custom-templates.html">Create Custom Worker
    ///             Task Template</a>.</p>
    ///          <p>To learn how to create a human task UI, which is a worker task template that can be used
    ///          in a flow definition, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-worker-template-console.html">Create and Delete a Worker Task Templates</a>.</p>
    public let humanTaskUiArn: String?
    /// <p>Defines the amount of money paid to an Amazon Mechanical Turk worker for each task performed. </p>
    ///         <p>Use one of the following prices for bounding box tasks. Prices are in US dollars and
    ///             should be based on the complexity of the task; the longer it takes in your initial
    ///             testing, the more you should offer.</p>
    ///         <ul>
    ///             <li>
    ///                 <p>0.036</p>
    ///             </li>
    ///             <li>
    ///                 <p>0.048</p>
    ///             </li>
    ///             <li>
    ///                 <p>0.060</p>
    ///             </li>
    ///             <li>
    ///                 <p>0.072</p>
    ///             </li>
    ///             <li>
    ///                 <p>0.120</p>
    ///             </li>
    ///             <li>
    ///                 <p>0.240</p>
    ///             </li>
    ///             <li>
    ///                 <p>0.360</p>
    ///             </li>
    ///             <li>
    ///                 <p>0.480</p>
    ///             </li>
    ///             <li>
    ///                 <p>0.600</p>
    ///             </li>
    ///             <li>
    ///                 <p>0.720</p>
    ///             </li>
    ///             <li>
    ///                 <p>0.840</p>
    ///             </li>
    ///             <li>
    ///                 <p>0.960</p>
    ///             </li>
    ///             <li>
    ///                 <p>1.080</p>
    ///             </li>
    ///             <li>
    ///                 <p>1.200</p>
    ///             </li>
    ///          </ul>
    ///         <p>Use one of the following prices for image classification, text classification, and
    ///             custom tasks. Prices are in US dollars.</p>
    ///         <ul>
    ///             <li>
    ///                 <p>0.012</p>
    ///             </li>
    ///             <li>
    ///                 <p>0.024</p>
    ///             </li>
    ///             <li>
    ///                 <p>0.036</p>
    ///             </li>
    ///             <li>
    ///                 <p>0.048</p>
    ///             </li>
    ///             <li>
    ///                 <p>0.060</p>
    ///             </li>
    ///             <li>
    ///                 <p>0.072</p>
    ///             </li>
    ///             <li>
    ///                 <p>0.120</p>
    ///             </li>
    ///             <li>
    ///                 <p>0.240</p>
    ///             </li>
    ///             <li>
    ///                 <p>0.360</p>
    ///             </li>
    ///             <li>
    ///                 <p>0.480</p>
    ///             </li>
    ///             <li>
    ///                 <p>0.600</p>
    ///             </li>
    ///             <li>
    ///                 <p>0.720</p>
    ///             </li>
    ///             <li>
    ///                 <p>0.840</p>
    ///             </li>
    ///             <li>
    ///                 <p>0.960</p>
    ///             </li>
    ///             <li>
    ///                 <p>1.080</p>
    ///             </li>
    ///             <li>
    ///                 <p>1.200</p>
    ///             </li>
    ///          </ul>
    ///         <p>Use one of the following prices for semantic segmentation tasks. Prices are in US
    ///             dollars.</p>
    ///         <ul>
    ///             <li>
    ///                 <p>0.840</p>
    ///             </li>
    ///             <li>
    ///                 <p>0.960</p>
    ///             </li>
    ///             <li>
    ///                 <p>1.080</p>
    ///             </li>
    ///             <li>
    ///                 <p>1.200</p>
    ///             </li>
    ///          </ul>
    ///         <p>Use one of the following prices for Textract AnalyzeDocument Important Form Key Amazon
    ///             Augmented AI review tasks. Prices are in US dollars.</p>
    ///         <ul>
    ///             <li>
    ///                 <p>2.400 </p>
    ///             </li>
    ///             <li>
    ///                 <p>2.280 </p>
    ///             </li>
    ///             <li>
    ///                 <p>2.160 </p>
    ///             </li>
    ///             <li>
    ///                 <p>2.040 </p>
    ///             </li>
    ///             <li>
    ///                 <p>1.920 </p>
    ///             </li>
    ///             <li>
    ///                 <p>1.800 </p>
    ///             </li>
    ///             <li>
    ///                 <p>1.680 </p>
    ///             </li>
    ///             <li>
    ///                 <p>1.560 </p>
    ///             </li>
    ///             <li>
    ///                 <p>1.440 </p>
    ///             </li>
    ///             <li>
    ///                 <p>1.320 </p>
    ///             </li>
    ///             <li>
    ///                 <p>1.200 </p>
    ///             </li>
    ///             <li>
    ///                 <p>1.080 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.960 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.840 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.720 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.600 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.480 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.360 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.240 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.120 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.072 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.060 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.048 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.036 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.024 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.012 </p>
    ///             </li>
    ///          </ul>
    ///         <p>Use one of the following prices for Rekognition DetectModerationLabels Amazon
    ///             Augmented AI review tasks. Prices are in US dollars.</p>
    ///         <ul>
    ///             <li>
    ///                 <p>1.200 </p>
    ///             </li>
    ///             <li>
    ///                 <p>1.080 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.960 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.840 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.720 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.600 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.480 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.360 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.240 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.120 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.072 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.060 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.048 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.036 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.024 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.012 </p>
    ///             </li>
    ///          </ul>
    ///         <p>Use one of the following prices for Amazon Augmented AI custom human review tasks.
    ///             Prices are in US dollars.</p>
    ///         <ul>
    ///             <li>
    ///                 <p>1.200 </p>
    ///             </li>
    ///             <li>
    ///                 <p>1.080 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.960 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.840 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.720 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.600 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.480 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.360 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.240 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.120 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.072 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.060 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.048 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.036 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.024 </p>
    ///             </li>
    ///             <li>
    ///                 <p>0.012 </p>
    ///             </li>
    ///          </ul>
    public let publicWorkforceTaskPrice: PublicWorkforceTaskPrice?
    /// <p>The length of time that a task remains available for review by human workers.</p>
    public let taskAvailabilityLifetimeInSeconds: Int?
    /// <p>The number of distinct workers who will perform the same task on each object.
    ///       For example, if <code>TaskCount</code> is set to <code>3</code> for an image classification
    ///       labeling job, three workers will classify each input image.
    ///       Increasing <code>TaskCount</code> can improve label accuracy.</p>
    public let taskCount: Int?
    /// <p>A description for the human worker task.</p>
    public let taskDescription: String?
    /// <p>Keywords used to describe the task so that workers can discover the task.</p>
    public let taskKeywords: [String]?
    /// <p>The amount of time that a worker has to complete a task. The default value is 3,600
    ///          seconds (1 hour).</p>
    public let taskTimeLimitInSeconds: Int?
    /// <p>A title for the human worker task.</p>
    public let taskTitle: String?
    /// <p>Amazon Resource Name (ARN) of a team of workers. To learn more about the types of
    ///          workforces and work teams you can create and use with Amazon A2I, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/sms-workforce-management.html">Create
    ///             and Manage Workforces</a>.</p>
    public let workteamArn: String?

    public init (
        humanTaskUiArn: String? = nil,
        publicWorkforceTaskPrice: PublicWorkforceTaskPrice? = nil,
        taskAvailabilityLifetimeInSeconds: Int? = nil,
        taskCount: Int? = nil,
        taskDescription: String? = nil,
        taskKeywords: [String]? = nil,
        taskTimeLimitInSeconds: Int? = nil,
        taskTitle: String? = nil,
        workteamArn: String? = nil
    )
    {
        self.humanTaskUiArn = humanTaskUiArn
        self.publicWorkforceTaskPrice = publicWorkforceTaskPrice
        self.taskAvailabilityLifetimeInSeconds = taskAvailabilityLifetimeInSeconds
        self.taskCount = taskCount
        self.taskDescription = taskDescription
        self.taskKeywords = taskKeywords
        self.taskTimeLimitInSeconds = taskTimeLimitInSeconds
        self.taskTitle = taskTitle
        self.workteamArn = workteamArn
    }
}

extension HumanLoopConfig: CustomDebugStringConvertible {
    public var debugDescription: String {
        "HumanLoopConfig(humanTaskUiArn: \(String(describing: humanTaskUiArn)), publicWorkforceTaskPrice: \(String(describing: publicWorkforceTaskPrice)), taskAvailabilityLifetimeInSeconds: \(String(describing: taskAvailabilityLifetimeInSeconds)), taskCount: \(String(describing: taskCount)), taskDescription: \(String(describing: taskDescription)), taskKeywords: \(String(describing: taskKeywords)), taskTimeLimitInSeconds: \(String(describing: taskTimeLimitInSeconds)), taskTitle: \(String(describing: taskTitle)), workteamArn: \(String(describing: workteamArn)))"}
}