// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension WisdomClient {
    /// Creates an Amazon Connect Wisdom assistant.
    func createAssistant(input: CreateAssistantInput) async throws -> CreateAssistantOutputResponse
    {
        typealias createAssistantContinuation = CheckedContinuation<CreateAssistantOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createAssistantContinuation) in
            createAssistant(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates an association between an Amazon Connect Wisdom assistant and another resource. Currently, the
    ///       only supported association is with a knowledge base. An assistant can have only a single
    ///       association.
    func createAssistantAssociation(input: CreateAssistantAssociationInput) async throws -> CreateAssistantAssociationOutputResponse
    {
        typealias createAssistantAssociationContinuation = CheckedContinuation<CreateAssistantAssociationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createAssistantAssociationContinuation) in
            createAssistantAssociation(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates Wisdom content. Before to calling this API, use <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html">StartContentUpload to
    ///       upload an asset.
    func createContent(input: CreateContentInput) async throws -> CreateContentOutputResponse
    {
        typealias createContentContinuation = CheckedContinuation<CreateContentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createContentContinuation) in
            createContent(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a knowledge base.
    ///
    ///             When using this API, you cannot reuse <a href="https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html">Amazon AppIntegrations
    ///         DataIntegrations with external knowledge bases such as Salesforce and ServiceNow. If you do,
    ///         you'll get an InvalidRequestException error.
    ///
    ///             For example, you're programmatically managing your external knowledge base, and you want
    ///         to add or remove one of the fields that is being ingested from Salesforce. Do the
    ///         following:
    ///             <ol>
    ///
    ///                   Call <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_DeleteKnowledgeBase.html">DeleteKnowledgeBase.
    ///
    ///
    ///                   Call <a href="https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html">DeleteDataIntegration.
    ///
    ///
    ///                   Call <a href="https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html">CreateDataIntegration to recreate the DataIntegration or a create different
    ///             one.
    ///
    ///
    ///                   Call CreateKnowledgeBase.
    ///
    ///             </ol>
    ///
    func createKnowledgeBase(input: CreateKnowledgeBaseInput) async throws -> CreateKnowledgeBaseOutputResponse
    {
        typealias createKnowledgeBaseContinuation = CheckedContinuation<CreateKnowledgeBaseOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createKnowledgeBaseContinuation) in
            createKnowledgeBase(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a session. A session is a contextual container used for generating
    ///       recommendations. Amazon Connect creates a new Wisdom session for each contact on which Wisdom is
    ///       enabled.
    func createSession(input: CreateSessionInput) async throws -> CreateSessionOutputResponse
    {
        typealias createSessionContinuation = CheckedContinuation<CreateSessionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createSessionContinuation) in
            createSession(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an assistant.
    func deleteAssistant(input: DeleteAssistantInput) async throws -> DeleteAssistantOutputResponse
    {
        typealias deleteAssistantContinuation = CheckedContinuation<DeleteAssistantOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteAssistantContinuation) in
            deleteAssistant(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an assistant association.
    func deleteAssistantAssociation(input: DeleteAssistantAssociationInput) async throws -> DeleteAssistantAssociationOutputResponse
    {
        typealias deleteAssistantAssociationContinuation = CheckedContinuation<DeleteAssistantAssociationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteAssistantAssociationContinuation) in
            deleteAssistantAssociation(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the content.
    func deleteContent(input: DeleteContentInput) async throws -> DeleteContentOutputResponse
    {
        typealias deleteContentContinuation = CheckedContinuation<DeleteContentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteContentContinuation) in
            deleteContent(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the knowledge base.
    ///
    ///             When you use this API to delete an external knowledge base such as Salesforce or
    ///         ServiceNow, you must also delete the <a href="https://docs.aws.amazon.com/appintegrations/latest/APIReference/Welcome.html">Amazon AppIntegrations DataIntegration.
    ///         This is because you can't reuse the DataIntegration after it's been associated with an
    ///         external knowledge base. However, you can delete and recreate it. See <a href="https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_DeleteDataIntegration.html">DeleteDataIntegration and <a href="https://docs.aws.amazon.com/appintegrations/latest/APIReference/API_CreateDataIntegration.html">CreateDataIntegration in the Amazon AppIntegrations API
    ///         Reference.
    ///
    func deleteKnowledgeBase(input: DeleteKnowledgeBaseInput) async throws -> DeleteKnowledgeBaseOutputResponse
    {
        typealias deleteKnowledgeBaseContinuation = CheckedContinuation<DeleteKnowledgeBaseOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteKnowledgeBaseContinuation) in
            deleteKnowledgeBase(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves information about an assistant.
    func getAssistant(input: GetAssistantInput) async throws -> GetAssistantOutputResponse
    {
        typealias getAssistantContinuation = CheckedContinuation<GetAssistantOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getAssistantContinuation) in
            getAssistant(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves information about an assistant association.
    func getAssistantAssociation(input: GetAssistantAssociationInput) async throws -> GetAssistantAssociationOutputResponse
    {
        typealias getAssistantAssociationContinuation = CheckedContinuation<GetAssistantAssociationOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getAssistantAssociationContinuation) in
            getAssistantAssociation(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves content, including a pre-signed URL to download the content.
    func getContent(input: GetContentInput) async throws -> GetContentOutputResponse
    {
        typealias getContentContinuation = CheckedContinuation<GetContentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getContentContinuation) in
            getContent(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves summary information about the content.
    func getContentSummary(input: GetContentSummaryInput) async throws -> GetContentSummaryOutputResponse
    {
        typealias getContentSummaryContinuation = CheckedContinuation<GetContentSummaryOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getContentSummaryContinuation) in
            getContentSummary(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves information about the knowledge base.
    func getKnowledgeBase(input: GetKnowledgeBaseInput) async throws -> GetKnowledgeBaseOutputResponse
    {
        typealias getKnowledgeBaseContinuation = CheckedContinuation<GetKnowledgeBaseOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getKnowledgeBaseContinuation) in
            getKnowledgeBase(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves recommendations for the specified session. To avoid retrieving the same
    ///       recommendations in subsequent calls, use <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_NotifyRecommendationsReceived.html">NotifyRecommendationsReceived. This API supports long-polling behavior with the
    ///         waitTimeSeconds parameter. Short poll is the default behavior and only returns
    ///       recommendations already available. To perform a manual query against an assistant, use <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_QueryAssistant.html">QueryAssistant.
    func getRecommendations(input: GetRecommendationsInput) async throws -> GetRecommendationsOutputResponse
    {
        typealias getRecommendationsContinuation = CheckedContinuation<GetRecommendationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getRecommendationsContinuation) in
            getRecommendations(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves information for a specified session.
    func getSession(input: GetSessionInput) async throws -> GetSessionOutputResponse
    {
        typealias getSessionContinuation = CheckedContinuation<GetSessionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getSessionContinuation) in
            getSession(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists information about assistant associations.
    func listAssistantAssociations(input: ListAssistantAssociationsInput) async throws -> ListAssistantAssociationsOutputResponse
    {
        typealias listAssistantAssociationsContinuation = CheckedContinuation<ListAssistantAssociationsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAssistantAssociationsContinuation) in
            listAssistantAssociations(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists information about assistants.
    func listAssistants(input: ListAssistantsInput) async throws -> ListAssistantsOutputResponse
    {
        typealias listAssistantsContinuation = CheckedContinuation<ListAssistantsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAssistantsContinuation) in
            listAssistants(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the content.
    func listContents(input: ListContentsInput) async throws -> ListContentsOutputResponse
    {
        typealias listContentsContinuation = CheckedContinuation<ListContentsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listContentsContinuation) in
            listContents(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the knowledge bases.
    func listKnowledgeBases(input: ListKnowledgeBasesInput) async throws -> ListKnowledgeBasesOutputResponse
    {
        typealias listKnowledgeBasesContinuation = CheckedContinuation<ListKnowledgeBasesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listKnowledgeBasesContinuation) in
            listKnowledgeBases(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the tags for the specified resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    {
        typealias listTagsForResourceContinuation = CheckedContinuation<ListTagsForResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listTagsForResourceContinuation) in
            listTagsForResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes the specified recommendations from the specified assistant's queue of newly
    ///       available recommendations. You can use this API in conjunction with <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_GetRecommendations.html">GetRecommendations and a waitTimeSeconds input for long-polling
    ///       behavior and avoiding duplicate recommendations.
    func notifyRecommendationsReceived(input: NotifyRecommendationsReceivedInput) async throws -> NotifyRecommendationsReceivedOutputResponse
    {
        typealias notifyRecommendationsReceivedContinuation = CheckedContinuation<NotifyRecommendationsReceivedOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: notifyRecommendationsReceivedContinuation) in
            notifyRecommendationsReceived(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Performs a manual search against the specified assistant. To retrieve recommendations for
    ///       an assistant, use <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_GetRecommendations.html">GetRecommendations.
    ///
    func queryAssistant(input: QueryAssistantInput) async throws -> QueryAssistantOutputResponse
    {
        typealias queryAssistantContinuation = CheckedContinuation<QueryAssistantOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: queryAssistantContinuation) in
            queryAssistant(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes a URI template from a knowledge base.
    func removeKnowledgeBaseTemplateUri(input: RemoveKnowledgeBaseTemplateUriInput) async throws -> RemoveKnowledgeBaseTemplateUriOutputResponse
    {
        typealias removeKnowledgeBaseTemplateUriContinuation = CheckedContinuation<RemoveKnowledgeBaseTemplateUriOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: removeKnowledgeBaseTemplateUriContinuation) in
            removeKnowledgeBaseTemplateUri(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Searches for content in a specified knowledge base. Can be used to get a specific content
    ///       resource by its name.
    func searchContent(input: SearchContentInput) async throws -> SearchContentOutputResponse
    {
        typealias searchContentContinuation = CheckedContinuation<SearchContentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: searchContentContinuation) in
            searchContent(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Searches for sessions.
    func searchSessions(input: SearchSessionsInput) async throws -> SearchSessionsOutputResponse
    {
        typealias searchSessionsContinuation = CheckedContinuation<SearchSessionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: searchSessionsContinuation) in
            searchSessions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Get a URL to upload content to a knowledge base. To upload content, first make a PUT
    ///       request to the returned URL with your file, making sure to include the required headers. Then
    ///       use <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_CreateContent.html">CreateContent to finalize the content creation process or <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_UpdateContent.html">UpdateContent to modify an existing resource. You can only upload content to a
    ///       knowledge base of type CUSTOM.
    func startContentUpload(input: StartContentUploadInput) async throws -> StartContentUploadOutputResponse
    {
        typealias startContentUploadContinuation = CheckedContinuation<StartContentUploadOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startContentUploadContinuation) in
            startContentUpload(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Adds the specified tags to the specified resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    {
        typealias tagResourceContinuation = CheckedContinuation<TagResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: tagResourceContinuation) in
            tagResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes the specified tags from the specified resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    {
        typealias untagResourceContinuation = CheckedContinuation<UntagResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: untagResourceContinuation) in
            untagResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates information about the content.
    func updateContent(input: UpdateContentInput) async throws -> UpdateContentOutputResponse
    {
        typealias updateContentContinuation = CheckedContinuation<UpdateContentOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateContentContinuation) in
            updateContent(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates the template URI of a knowledge base. This is only supported for knowledge bases
    ///       of type EXTERNAL. Include a single variable in ${variable} format; this
    ///       interpolated by Wisdom using ingested content. For example, if you ingest a Salesforce
    ///       article, it has an Id value, and you can set the template URI to
    ///         https://myInstanceName.lightning.force.com/lightning/r/Knowledge__kav/*${Id}*/view.
    ///
    func updateKnowledgeBaseTemplateUri(input: UpdateKnowledgeBaseTemplateUriInput) async throws -> UpdateKnowledgeBaseTemplateUriOutputResponse
    {
        typealias updateKnowledgeBaseTemplateUriContinuation = CheckedContinuation<UpdateKnowledgeBaseTemplateUriOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateKnowledgeBaseTemplateUriContinuation) in
            updateKnowledgeBaseTemplateUri(input: input) { result in
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
