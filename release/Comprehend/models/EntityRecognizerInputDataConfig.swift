// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Specifies the format and location of the input data.</p>
public struct EntityRecognizerInputDataConfig: Equatable {
    /// <p>The S3 location of the CSV file that annotates your training documents.</p>
    public let annotations: EntityRecognizerAnnotations?
    /// <p>A list of augmented manifest files that provide training data for your custom model. An
    ///       augmented manifest file is a labeled dataset that is produced by Amazon SageMaker Ground
    ///       Truth.</p>
    ///          <p>This parameter is required if you set <code>DataFormat</code> to
    ///         <code>AUGMENTED_MANIFEST</code>.</p>
    public let augmentedManifests: [AugmentedManifestsListItem]?
    /// <p>The format of your training data:</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>COMPREHEND_CSV</code>: A CSV file that supplements your training documents. The
    ///           CSV file contains information about the custom entities that your trained model will
    ///           detect. The required format of the file depends on whether you are providing annotations
    ///           or an entity list.</p>
    ///                <p>If you use this value, you must provide your CSV file by using either the
    ///             <code>Annotations</code> or <code>EntityList</code> parameters. You must provide your
    ///           training documents by using the <code>Documents</code> parameter.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>AUGMENTED_MANIFEST</code>: A labeled dataset that is produced by Amazon
    ///           SageMaker Ground Truth. This file is in JSON lines format. Each line is a complete JSON
    ///           object that contains a training document and its labels. Each label annotates a named
    ///           entity in the training document. </p>
    ///                <p>If you use this value, you must provide the <code>AugmentedManifests</code> parameter
    ///           in your request.</p>
    ///             </li>
    ///          </ul>
    ///          <p>If you don't specify a value, Amazon Comprehend uses <code>COMPREHEND_CSV</code> as the
    ///       default.</p>
    public let dataFormat: EntityRecognizerDataFormat?
    /// <p>The S3 location of the folder that contains the training documents for your custom entity
    ///       recognizer.</p>
    ///          <p>This parameter is required if you set <code>DataFormat</code> to
    ///         <code>COMPREHEND_CSV</code>.</p>
    public let documents: EntityRecognizerDocuments?
    /// <p>The S3 location of the CSV file that has the entity list for your custom entity
    ///       recognizer.</p>
    public let entityList: EntityRecognizerEntityList?
    /// <p>The entity types in the labeled training data that Amazon Comprehend uses to train the
    ///       custom entity recognizer. Any entity types that you don't specify are ignored.</p>
    ///          <p>A maximum of 25 entity types can be used at one time to train an entity recognizer. Entity
    ///       types must not contain the following invalid characters: \n (line break), \\n (escaped line
    ///       break), \r (carriage return), \\r (escaped carriage return), \t (tab), \\t (escaped tab),
    ///       space, and , (comma). </p>
    public let entityTypes: [EntityTypesListItem]?

    public init (
        annotations: EntityRecognizerAnnotations? = nil,
        augmentedManifests: [AugmentedManifestsListItem]? = nil,
        dataFormat: EntityRecognizerDataFormat? = nil,
        documents: EntityRecognizerDocuments? = nil,
        entityList: EntityRecognizerEntityList? = nil,
        entityTypes: [EntityTypesListItem]? = nil
    )
    {
        self.annotations = annotations
        self.augmentedManifests = augmentedManifests
        self.dataFormat = dataFormat
        self.documents = documents
        self.entityList = entityList
        self.entityTypes = entityTypes
    }
}

extension EntityRecognizerInputDataConfig: CustomDebugStringConvertible {
    public var debugDescription: String {
        "EntityRecognizerInputDataConfig(annotations: \(String(describing: annotations)), augmentedManifests: \(String(describing: augmentedManifests)), dataFormat: \(String(describing: dataFormat)), documents: \(String(describing: documents)), entityList: \(String(describing: entityList)), entityTypes: \(String(describing: entityTypes)))"}
}