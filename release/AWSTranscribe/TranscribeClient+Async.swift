// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension TranscribeClient {
    /// Creates an analytics category. Amazon Transcribe applies the conditions specified by your
    ///             analytics categories to your call analytics jobs. For each analytics category, you specify one or
    ///             more rules. For example, you can specify a rule that the customer sentiment was neutral or
    ///             negative within that category. If you start a call analytics job, Amazon Transcribe applies the
    ///             category to the analytics job that you've specified.
    func createCallAnalyticsCategory(input: CreateCallAnalyticsCategoryInput) async throws -> CreateCallAnalyticsCategoryOutputResponse
    {
        typealias createCallAnalyticsCategoryContinuation = CheckedContinuation<CreateCallAnalyticsCategoryOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createCallAnalyticsCategoryContinuation) in
            createCallAnalyticsCategory(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new custom language model. Use Amazon S3 prefixes to provide the location of your
    ///             input files. The time it takes to create your model depends on the size of your training
    ///             data.
    func createLanguageModel(input: CreateLanguageModelInput) async throws -> CreateLanguageModelOutputResponse
    {
        typealias createLanguageModelContinuation = CheckedContinuation<CreateLanguageModelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createLanguageModelContinuation) in
            createLanguageModel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new custom vocabulary that you can use to
    ///             change
    ///             how Amazon Transcribe Medical transcribes your audio file.
    func createMedicalVocabulary(input: CreateMedicalVocabularyInput) async throws -> CreateMedicalVocabularyOutputResponse
    {
        typealias createMedicalVocabularyContinuation = CheckedContinuation<CreateMedicalVocabularyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createMedicalVocabularyContinuation) in
            createMedicalVocabulary(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new custom vocabulary that you can use to change the way Amazon Transcribe handles
    ///             transcription of an audio file.
    func createVocabulary(input: CreateVocabularyInput) async throws -> CreateVocabularyOutputResponse
    {
        typealias createVocabularyContinuation = CheckedContinuation<CreateVocabularyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createVocabularyContinuation) in
            createVocabulary(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new vocabulary filter that you can use to filter words, such as profane
    ///             words, from the output of a transcription job.
    func createVocabularyFilter(input: CreateVocabularyFilterInput) async throws -> CreateVocabularyFilterOutputResponse
    {
        typealias createVocabularyFilterContinuation = CheckedContinuation<CreateVocabularyFilterOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createVocabularyFilterContinuation) in
            createVocabularyFilter(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a call analytics category using its name.
    func deleteCallAnalyticsCategory(input: DeleteCallAnalyticsCategoryInput) async throws -> DeleteCallAnalyticsCategoryOutputResponse
    {
        typealias deleteCallAnalyticsCategoryContinuation = CheckedContinuation<DeleteCallAnalyticsCategoryOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteCallAnalyticsCategoryContinuation) in
            deleteCallAnalyticsCategory(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a call analytics job using its name.
    func deleteCallAnalyticsJob(input: DeleteCallAnalyticsJobInput) async throws -> DeleteCallAnalyticsJobOutputResponse
    {
        typealias deleteCallAnalyticsJobContinuation = CheckedContinuation<DeleteCallAnalyticsJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteCallAnalyticsJobContinuation) in
            deleteCallAnalyticsJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a custom language model using its name.
    func deleteLanguageModel(input: DeleteLanguageModelInput) async throws -> DeleteLanguageModelOutputResponse
    {
        typealias deleteLanguageModelContinuation = CheckedContinuation<DeleteLanguageModelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteLanguageModelContinuation) in
            deleteLanguageModel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a transcription job generated by Amazon Transcribe Medical and any related information.
    func deleteMedicalTranscriptionJob(input: DeleteMedicalTranscriptionJobInput) async throws -> DeleteMedicalTranscriptionJobOutputResponse
    {
        typealias deleteMedicalTranscriptionJobContinuation = CheckedContinuation<DeleteMedicalTranscriptionJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteMedicalTranscriptionJobContinuation) in
            deleteMedicalTranscriptionJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a vocabulary from Amazon Transcribe Medical.
    func deleteMedicalVocabulary(input: DeleteMedicalVocabularyInput) async throws -> DeleteMedicalVocabularyOutputResponse
    {
        typealias deleteMedicalVocabularyContinuation = CheckedContinuation<DeleteMedicalVocabularyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteMedicalVocabularyContinuation) in
            deleteMedicalVocabulary(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a previously submitted transcription job along with any other generated
    ///             results such as the transcription, models, and so on.
    func deleteTranscriptionJob(input: DeleteTranscriptionJobInput) async throws -> DeleteTranscriptionJobOutputResponse
    {
        typealias deleteTranscriptionJobContinuation = CheckedContinuation<DeleteTranscriptionJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteTranscriptionJobContinuation) in
            deleteTranscriptionJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a vocabulary from Amazon Transcribe.
    func deleteVocabulary(input: DeleteVocabularyInput) async throws -> DeleteVocabularyOutputResponse
    {
        typealias deleteVocabularyContinuation = CheckedContinuation<DeleteVocabularyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteVocabularyContinuation) in
            deleteVocabulary(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes a vocabulary filter.
    func deleteVocabularyFilter(input: DeleteVocabularyFilterInput) async throws -> DeleteVocabularyFilterOutputResponse
    {
        typealias deleteVocabularyFilterContinuation = CheckedContinuation<DeleteVocabularyFilterOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteVocabularyFilterContinuation) in
            deleteVocabularyFilter(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets information about a single custom language model. Use this information to see
    ///             details about the language model in your Amazon Web Services account. You can also see
    ///             whether the base language model used to create your custom language model has been
    ///             updated. If Amazon Transcribe has updated the base model, you can create a new custom language model
    ///             using the updated base model. If the language model wasn't created, you can use this
    ///             operation to understand why Amazon Transcribe couldn't create it.
    func describeLanguageModel(input: DescribeLanguageModelInput) async throws -> DescribeLanguageModelOutputResponse
    {
        typealias describeLanguageModelContinuation = CheckedContinuation<DescribeLanguageModelOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeLanguageModelContinuation) in
            describeLanguageModel(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves information about a call analytics category.
    func getCallAnalyticsCategory(input: GetCallAnalyticsCategoryInput) async throws -> GetCallAnalyticsCategoryOutputResponse
    {
        typealias getCallAnalyticsCategoryContinuation = CheckedContinuation<GetCallAnalyticsCategoryOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getCallAnalyticsCategoryContinuation) in
            getCallAnalyticsCategory(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns information about a call analytics job. To see the status of the job, check the
    ///             CallAnalyticsJobStatus field. If the status is COMPLETED, the job
    ///             is finished and you can find the results at the location specified in the TranscriptFileUri
    ///             field. If you enable personally identifiable information (PII) redaction, the redacted transcript appears
    ///             in the RedactedTranscriptFileUri field.
    func getCallAnalyticsJob(input: GetCallAnalyticsJobInput) async throws -> GetCallAnalyticsJobOutputResponse
    {
        typealias getCallAnalyticsJobContinuation = CheckedContinuation<GetCallAnalyticsJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getCallAnalyticsJobContinuation) in
            getCallAnalyticsJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns information about a transcription job from Amazon Transcribe Medical. To see the status of the
    ///             job, check the TranscriptionJobStatus field. If the status is
    ///                 COMPLETED, the job is finished. You find the results of the completed
    ///             job in the TranscriptFileUri field.
    func getMedicalTranscriptionJob(input: GetMedicalTranscriptionJobInput) async throws -> GetMedicalTranscriptionJobOutputResponse
    {
        typealias getMedicalTranscriptionJobContinuation = CheckedContinuation<GetMedicalTranscriptionJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getMedicalTranscriptionJobContinuation) in
            getMedicalTranscriptionJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves information about a medical vocabulary.
    func getMedicalVocabulary(input: GetMedicalVocabularyInput) async throws -> GetMedicalVocabularyOutputResponse
    {
        typealias getMedicalVocabularyContinuation = CheckedContinuation<GetMedicalVocabularyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getMedicalVocabularyContinuation) in
            getMedicalVocabulary(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns information about a transcription job. To see the status of the job, check the
    ///                 TranscriptionJobStatus field. If the status is COMPLETED,
    ///             the job is finished and you can find the results at the location specified in the
    ///                 TranscriptFileUri field. If you enable content redaction, the redacted
    ///             transcript appears in RedactedTranscriptFileUri.
    func getTranscriptionJob(input: GetTranscriptionJobInput) async throws -> GetTranscriptionJobOutputResponse
    {
        typealias getTranscriptionJobContinuation = CheckedContinuation<GetTranscriptionJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getTranscriptionJobContinuation) in
            getTranscriptionJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets information about a vocabulary.
    func getVocabulary(input: GetVocabularyInput) async throws -> GetVocabularyOutputResponse
    {
        typealias getVocabularyContinuation = CheckedContinuation<GetVocabularyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getVocabularyContinuation) in
            getVocabulary(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns information about a vocabulary filter.
    func getVocabularyFilter(input: GetVocabularyFilterInput) async throws -> GetVocabularyFilterOutputResponse
    {
        typealias getVocabularyFilterContinuation = CheckedContinuation<GetVocabularyFilterOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getVocabularyFilterContinuation) in
            getVocabularyFilter(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Provides more information about the call analytics categories that you've created. You
    ///             can use the information in this list to find a specific category. You can then use the
    ///              operation to get more information about it.
    func listCallAnalyticsCategories(input: ListCallAnalyticsCategoriesInput) async throws -> ListCallAnalyticsCategoriesOutputResponse
    {
        typealias listCallAnalyticsCategoriesContinuation = CheckedContinuation<ListCallAnalyticsCategoriesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listCallAnalyticsCategoriesContinuation) in
            listCallAnalyticsCategories(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// List call analytics jobs with a specified status or substring that matches their names.
    func listCallAnalyticsJobs(input: ListCallAnalyticsJobsInput) async throws -> ListCallAnalyticsJobsOutputResponse
    {
        typealias listCallAnalyticsJobsContinuation = CheckedContinuation<ListCallAnalyticsJobsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listCallAnalyticsJobsContinuation) in
            listCallAnalyticsJobs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Provides more information about the custom language models you've created. You can use
    ///             the information in this list to find a specific custom language model. You can then use
    ///             the  operation to get more information about
    ///             it.
    func listLanguageModels(input: ListLanguageModelsInput) async throws -> ListLanguageModelsOutputResponse
    {
        typealias listLanguageModelsContinuation = CheckedContinuation<ListLanguageModelsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listLanguageModelsContinuation) in
            listLanguageModels(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists medical transcription jobs with a specified status or substring that matches
    ///             their names.
    func listMedicalTranscriptionJobs(input: ListMedicalTranscriptionJobsInput) async throws -> ListMedicalTranscriptionJobsOutputResponse
    {
        typealias listMedicalTranscriptionJobsContinuation = CheckedContinuation<ListMedicalTranscriptionJobsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listMedicalTranscriptionJobsContinuation) in
            listMedicalTranscriptionJobs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of vocabularies that match the specified criteria. If you don't enter a
    ///             value in any of the request parameters, returns the entire list of vocabularies.
    func listMedicalVocabularies(input: ListMedicalVocabulariesInput) async throws -> ListMedicalVocabulariesOutputResponse
    {
        typealias listMedicalVocabulariesContinuation = CheckedContinuation<ListMedicalVocabulariesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listMedicalVocabulariesContinuation) in
            listMedicalVocabularies(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists transcription jobs with the specified status.
    func listTranscriptionJobs(input: ListTranscriptionJobsInput) async throws -> ListTranscriptionJobsOutputResponse
    {
        typealias listTranscriptionJobsContinuation = CheckedContinuation<ListTranscriptionJobsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listTranscriptionJobsContinuation) in
            listTranscriptionJobs(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Returns a list of vocabularies that match the specified criteria. If no criteria are
    ///             specified, returns the entire list of vocabularies.
    func listVocabularies(input: ListVocabulariesInput) async throws -> ListVocabulariesOutputResponse
    {
        typealias listVocabulariesContinuation = CheckedContinuation<ListVocabulariesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listVocabulariesContinuation) in
            listVocabularies(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets information about vocabulary filters.
    func listVocabularyFilters(input: ListVocabularyFiltersInput) async throws -> ListVocabularyFiltersOutputResponse
    {
        typealias listVocabularyFiltersContinuation = CheckedContinuation<ListVocabularyFiltersOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listVocabularyFiltersContinuation) in
            listVocabularyFilters(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Starts an asynchronous analytics job that not only transcribes the audio recording of a caller and
    ///             agent, but also returns additional insights. These insights include how quickly or loudly the caller
    ///             or agent was speaking. To retrieve additional insights with your analytics jobs, create
    ///             categories. A category is a way to classify analytics jobs based on attributes, such as a customer's
    ///             sentiment or a particular phrase being used during the call. For more information, see the
    ///              operation.
    func startCallAnalyticsJob(input: StartCallAnalyticsJobInput) async throws -> StartCallAnalyticsJobOutputResponse
    {
        typealias startCallAnalyticsJobContinuation = CheckedContinuation<StartCallAnalyticsJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startCallAnalyticsJobContinuation) in
            startCallAnalyticsJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Starts a batch job to transcribe medical speech to text.
    func startMedicalTranscriptionJob(input: StartMedicalTranscriptionJobInput) async throws -> StartMedicalTranscriptionJobOutputResponse
    {
        typealias startMedicalTranscriptionJobContinuation = CheckedContinuation<StartMedicalTranscriptionJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startMedicalTranscriptionJobContinuation) in
            startMedicalTranscriptionJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Starts an asynchronous job to transcribe speech to text.
    func startTranscriptionJob(input: StartTranscriptionJobInput) async throws -> StartTranscriptionJobOutputResponse
    {
        typealias startTranscriptionJobContinuation = CheckedContinuation<StartTranscriptionJobOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startTranscriptionJobContinuation) in
            startTranscriptionJob(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates the call analytics category with new values. The UpdateCallAnalyticsCategory
    ///             operation overwrites all of the existing information with the values that you provide in the
    ///             request.
    func updateCallAnalyticsCategory(input: UpdateCallAnalyticsCategoryInput) async throws -> UpdateCallAnalyticsCategoryOutputResponse
    {
        typealias updateCallAnalyticsCategoryContinuation = CheckedContinuation<UpdateCallAnalyticsCategoryOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateCallAnalyticsCategoryContinuation) in
            updateCallAnalyticsCategory(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates a vocabulary with new values that you provide in a different text file from
    ///             the one you used to create the vocabulary. The UpdateMedicalVocabulary
    ///             operation overwrites all of the existing information with the values that you provide in
    ///             the request.
    func updateMedicalVocabulary(input: UpdateMedicalVocabularyInput) async throws -> UpdateMedicalVocabularyOutputResponse
    {
        typealias updateMedicalVocabularyContinuation = CheckedContinuation<UpdateMedicalVocabularyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateMedicalVocabularyContinuation) in
            updateMedicalVocabulary(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates an existing vocabulary with new values. The UpdateVocabulary
    ///             operation overwrites all of the existing information with the values that you provide in
    ///             the request.
    func updateVocabulary(input: UpdateVocabularyInput) async throws -> UpdateVocabularyOutputResponse
    {
        typealias updateVocabularyContinuation = CheckedContinuation<UpdateVocabularyOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateVocabularyContinuation) in
            updateVocabulary(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates a vocabulary filter with a new list of filtered words.
    func updateVocabularyFilter(input: UpdateVocabularyFilterInput) async throws -> UpdateVocabularyFilterOutputResponse
    {
        typealias updateVocabularyFilterContinuation = CheckedContinuation<UpdateVocabularyFilterOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateVocabularyFilterContinuation) in
            updateVocabularyFilter(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

}
#endif
