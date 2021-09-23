// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Operations and objects for transcribing speech to text.
public protocol TranscribeClientProtocol {
    /// Creates an analytics category. Amazon Transcribe applies the conditions specified by your
    ///             analytics categories to your call analytics jobs. For each analytics category, you specify one or
    ///             more rules. For example, you can specify a rule that the customer sentiment was neutral or
    ///             negative within that category. If you start a call analytics job, Amazon Transcribe applies the
    ///             category to the analytics job that you've specified.
    func createCallAnalyticsCategory(input: CreateCallAnalyticsCategoryInput, completion: @escaping (ClientRuntime.SdkResult<CreateCallAnalyticsCategoryOutputResponse, CreateCallAnalyticsCategoryOutputError>) -> Void)
    /// Creates a new custom language model. Use Amazon S3 prefixes to provide the location of your
    ///             input files. The time it takes to create your model depends on the size of your training
    ///             data.
    func createLanguageModel(input: CreateLanguageModelInput, completion: @escaping (ClientRuntime.SdkResult<CreateLanguageModelOutputResponse, CreateLanguageModelOutputError>) -> Void)
    /// Creates a new custom vocabulary that you can use to
    ///             change
    ///             how Amazon Transcribe Medical transcribes your audio file.
    func createMedicalVocabulary(input: CreateMedicalVocabularyInput, completion: @escaping (ClientRuntime.SdkResult<CreateMedicalVocabularyOutputResponse, CreateMedicalVocabularyOutputError>) -> Void)
    /// Creates a new custom vocabulary that you can use to change the way Amazon Transcribe handles
    ///             transcription of an audio file.
    func createVocabulary(input: CreateVocabularyInput, completion: @escaping (ClientRuntime.SdkResult<CreateVocabularyOutputResponse, CreateVocabularyOutputError>) -> Void)
    /// Creates a new vocabulary filter that you can use to filter words, such as profane
    ///             words, from the output of a transcription job.
    func createVocabularyFilter(input: CreateVocabularyFilterInput, completion: @escaping (ClientRuntime.SdkResult<CreateVocabularyFilterOutputResponse, CreateVocabularyFilterOutputError>) -> Void)
    /// Deletes a call analytics category using its name.
    func deleteCallAnalyticsCategory(input: DeleteCallAnalyticsCategoryInput, completion: @escaping (ClientRuntime.SdkResult<DeleteCallAnalyticsCategoryOutputResponse, DeleteCallAnalyticsCategoryOutputError>) -> Void)
    /// Deletes a call analytics job using its name.
    func deleteCallAnalyticsJob(input: DeleteCallAnalyticsJobInput, completion: @escaping (ClientRuntime.SdkResult<DeleteCallAnalyticsJobOutputResponse, DeleteCallAnalyticsJobOutputError>) -> Void)
    /// Deletes a custom language model using its name.
    func deleteLanguageModel(input: DeleteLanguageModelInput, completion: @escaping (ClientRuntime.SdkResult<DeleteLanguageModelOutputResponse, DeleteLanguageModelOutputError>) -> Void)
    /// Deletes a transcription job generated by Amazon Transcribe Medical and any related information.
    func deleteMedicalTranscriptionJob(input: DeleteMedicalTranscriptionJobInput, completion: @escaping (ClientRuntime.SdkResult<DeleteMedicalTranscriptionJobOutputResponse, DeleteMedicalTranscriptionJobOutputError>) -> Void)
    /// Deletes a vocabulary from Amazon Transcribe Medical.
    func deleteMedicalVocabulary(input: DeleteMedicalVocabularyInput, completion: @escaping (ClientRuntime.SdkResult<DeleteMedicalVocabularyOutputResponse, DeleteMedicalVocabularyOutputError>) -> Void)
    /// Deletes a previously submitted transcription job along with any other generated
    ///             results such as the transcription, models, and so on.
    func deleteTranscriptionJob(input: DeleteTranscriptionJobInput, completion: @escaping (ClientRuntime.SdkResult<DeleteTranscriptionJobOutputResponse, DeleteTranscriptionJobOutputError>) -> Void)
    /// Deletes a vocabulary from Amazon Transcribe.
    func deleteVocabulary(input: DeleteVocabularyInput, completion: @escaping (ClientRuntime.SdkResult<DeleteVocabularyOutputResponse, DeleteVocabularyOutputError>) -> Void)
    /// Removes a vocabulary filter.
    func deleteVocabularyFilter(input: DeleteVocabularyFilterInput, completion: @escaping (ClientRuntime.SdkResult<DeleteVocabularyFilterOutputResponse, DeleteVocabularyFilterOutputError>) -> Void)
    /// Gets information about a single custom language model. Use this information to see
    ///             details about the language model in your Amazon Web Services account. You can also see
    ///             whether the base language model used to create your custom language model has been
    ///             updated. If Amazon Transcribe has updated the base model, you can create a new custom language model
    ///             using the updated base model. If the language model wasn't created, you can use this
    ///             operation to understand why Amazon Transcribe couldn't create it.
    func describeLanguageModel(input: DescribeLanguageModelInput, completion: @escaping (ClientRuntime.SdkResult<DescribeLanguageModelOutputResponse, DescribeLanguageModelOutputError>) -> Void)
    /// Retrieves information about a call analytics category.
    func getCallAnalyticsCategory(input: GetCallAnalyticsCategoryInput, completion: @escaping (ClientRuntime.SdkResult<GetCallAnalyticsCategoryOutputResponse, GetCallAnalyticsCategoryOutputError>) -> Void)
    /// Returns information about a call analytics job. To see the status of the job, check the
    ///             CallAnalyticsJobStatus field. If the status is COMPLETED, the job
    ///             is finished and you can find the results at the location specified in the TranscriptFileUri
    ///             field. If you enable personally identifiable information (PII) redaction, the redacted transcript appears
    ///             in the RedactedTranscriptFileUri field.
    func getCallAnalyticsJob(input: GetCallAnalyticsJobInput, completion: @escaping (ClientRuntime.SdkResult<GetCallAnalyticsJobOutputResponse, GetCallAnalyticsJobOutputError>) -> Void)
    /// Returns information about a transcription job from Amazon Transcribe Medical. To see the status of the
    ///             job, check the TranscriptionJobStatus field. If the status is
    ///                 COMPLETED, the job is finished. You find the results of the completed
    ///             job in the TranscriptFileUri field.
    func getMedicalTranscriptionJob(input: GetMedicalTranscriptionJobInput, completion: @escaping (ClientRuntime.SdkResult<GetMedicalTranscriptionJobOutputResponse, GetMedicalTranscriptionJobOutputError>) -> Void)
    /// Retrieves information about a medical vocabulary.
    func getMedicalVocabulary(input: GetMedicalVocabularyInput, completion: @escaping (ClientRuntime.SdkResult<GetMedicalVocabularyOutputResponse, GetMedicalVocabularyOutputError>) -> Void)
    /// Returns information about a transcription job. To see the status of the job, check the
    ///                 TranscriptionJobStatus field. If the status is COMPLETED,
    ///             the job is finished and you can find the results at the location specified in the
    ///                 TranscriptFileUri field. If you enable content redaction, the redacted
    ///             transcript appears in RedactedTranscriptFileUri.
    func getTranscriptionJob(input: GetTranscriptionJobInput, completion: @escaping (ClientRuntime.SdkResult<GetTranscriptionJobOutputResponse, GetTranscriptionJobOutputError>) -> Void)
    /// Gets information about a vocabulary.
    func getVocabulary(input: GetVocabularyInput, completion: @escaping (ClientRuntime.SdkResult<GetVocabularyOutputResponse, GetVocabularyOutputError>) -> Void)
    /// Returns information about a vocabulary filter.
    func getVocabularyFilter(input: GetVocabularyFilterInput, completion: @escaping (ClientRuntime.SdkResult<GetVocabularyFilterOutputResponse, GetVocabularyFilterOutputError>) -> Void)
    /// Provides more information about the call analytics categories that you've created. You
    ///             can use the information in this list to find a specific category. You can then use the
    ///              operation to get more information about it.
    func listCallAnalyticsCategories(input: ListCallAnalyticsCategoriesInput, completion: @escaping (ClientRuntime.SdkResult<ListCallAnalyticsCategoriesOutputResponse, ListCallAnalyticsCategoriesOutputError>) -> Void)
    /// List call analytics jobs with a specified status or substring that matches their names.
    func listCallAnalyticsJobs(input: ListCallAnalyticsJobsInput, completion: @escaping (ClientRuntime.SdkResult<ListCallAnalyticsJobsOutputResponse, ListCallAnalyticsJobsOutputError>) -> Void)
    /// Provides more information about the custom language models you've created. You can use
    ///             the information in this list to find a specific custom language model. You can then use
    ///             the  operation to get more information about
    ///             it.
    func listLanguageModels(input: ListLanguageModelsInput, completion: @escaping (ClientRuntime.SdkResult<ListLanguageModelsOutputResponse, ListLanguageModelsOutputError>) -> Void)
    /// Lists medical transcription jobs with a specified status or substring that matches
    ///             their names.
    func listMedicalTranscriptionJobs(input: ListMedicalTranscriptionJobsInput, completion: @escaping (ClientRuntime.SdkResult<ListMedicalTranscriptionJobsOutputResponse, ListMedicalTranscriptionJobsOutputError>) -> Void)
    /// Returns a list of vocabularies that match the specified criteria. If you don't enter a
    ///             value in any of the request parameters, returns the entire list of vocabularies.
    func listMedicalVocabularies(input: ListMedicalVocabulariesInput, completion: @escaping (ClientRuntime.SdkResult<ListMedicalVocabulariesOutputResponse, ListMedicalVocabulariesOutputError>) -> Void)
    /// Lists transcription jobs with the specified status.
    func listTranscriptionJobs(input: ListTranscriptionJobsInput, completion: @escaping (ClientRuntime.SdkResult<ListTranscriptionJobsOutputResponse, ListTranscriptionJobsOutputError>) -> Void)
    /// Returns a list of vocabularies that match the specified criteria. If no criteria are
    ///             specified, returns the entire list of vocabularies.
    func listVocabularies(input: ListVocabulariesInput, completion: @escaping (ClientRuntime.SdkResult<ListVocabulariesOutputResponse, ListVocabulariesOutputError>) -> Void)
    /// Gets information about vocabulary filters.
    func listVocabularyFilters(input: ListVocabularyFiltersInput, completion: @escaping (ClientRuntime.SdkResult<ListVocabularyFiltersOutputResponse, ListVocabularyFiltersOutputError>) -> Void)
    /// Starts an asynchronous analytics job that not only transcribes the audio recording of a caller and
    ///             agent, but also returns additional insights. These insights include how quickly or loudly the caller
    ///             or agent was speaking. To retrieve additional insights with your analytics jobs, create
    ///             categories. A category is a way to classify analytics jobs based on attributes, such as a customer's
    ///             sentiment or a particular phrase being used during the call. For more information, see the
    ///              operation.
    func startCallAnalyticsJob(input: StartCallAnalyticsJobInput, completion: @escaping (ClientRuntime.SdkResult<StartCallAnalyticsJobOutputResponse, StartCallAnalyticsJobOutputError>) -> Void)
    /// Starts a batch job to transcribe medical speech to text.
    func startMedicalTranscriptionJob(input: StartMedicalTranscriptionJobInput, completion: @escaping (ClientRuntime.SdkResult<StartMedicalTranscriptionJobOutputResponse, StartMedicalTranscriptionJobOutputError>) -> Void)
    /// Starts an asynchronous job to transcribe speech to text.
    func startTranscriptionJob(input: StartTranscriptionJobInput, completion: @escaping (ClientRuntime.SdkResult<StartTranscriptionJobOutputResponse, StartTranscriptionJobOutputError>) -> Void)
    /// Updates the call analytics category with new values. The UpdateCallAnalyticsCategory
    ///             operation overwrites all of the existing information with the values that you provide in the
    ///             request.
    func updateCallAnalyticsCategory(input: UpdateCallAnalyticsCategoryInput, completion: @escaping (ClientRuntime.SdkResult<UpdateCallAnalyticsCategoryOutputResponse, UpdateCallAnalyticsCategoryOutputError>) -> Void)
    /// Updates a vocabulary with new values that you provide in a different text file from
    ///             the one you used to create the vocabulary. The UpdateMedicalVocabulary
    ///             operation overwrites all of the existing information with the values that you provide in
    ///             the request.
    func updateMedicalVocabulary(input: UpdateMedicalVocabularyInput, completion: @escaping (ClientRuntime.SdkResult<UpdateMedicalVocabularyOutputResponse, UpdateMedicalVocabularyOutputError>) -> Void)
    /// Updates an existing vocabulary with new values. The UpdateVocabulary
    ///             operation overwrites all of the existing information with the values that you provide in
    ///             the request.
    func updateVocabulary(input: UpdateVocabularyInput, completion: @escaping (ClientRuntime.SdkResult<UpdateVocabularyOutputResponse, UpdateVocabularyOutputError>) -> Void)
    /// Updates a vocabulary filter with a new list of filtered words.
    func updateVocabularyFilter(input: UpdateVocabularyFilterInput, completion: @escaping (ClientRuntime.SdkResult<UpdateVocabularyFilterOutputResponse, UpdateVocabularyFilterOutputError>) -> Void)
}

public enum TranscribeClientTypes {}
