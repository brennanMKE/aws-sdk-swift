// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct CreateHITInputBody: Equatable {
    public let maxAssignments: Int?
    public let autoApprovalDelayInSeconds: Int?
    public let lifetimeInSeconds: Int?
    public let assignmentDurationInSeconds: Int?
    public let reward: String?
    public let title: String?
    public let keywords: String?
    public let description: String?
    public let question: String?
    public let requesterAnnotation: String?
    public let qualificationRequirements: [QualificationRequirement]?
    public let uniqueRequestToken: String?
    public let assignmentReviewPolicy: ReviewPolicy?
    public let hITReviewPolicy: ReviewPolicy?
    public let hITLayoutId: String?
    public let hITLayoutParameters: [HITLayoutParameter]?
}

extension CreateHITInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case assignmentDurationInSeconds = "AssignmentDurationInSeconds"
        case assignmentReviewPolicy = "AssignmentReviewPolicy"
        case autoApprovalDelayInSeconds = "AutoApprovalDelayInSeconds"
        case description = "Description"
        case hITLayoutId = "HITLayoutId"
        case hITLayoutParameters = "HITLayoutParameters"
        case hITReviewPolicy = "HITReviewPolicy"
        case keywords = "Keywords"
        case lifetimeInSeconds = "LifetimeInSeconds"
        case maxAssignments = "MaxAssignments"
        case qualificationRequirements = "QualificationRequirements"
        case question = "Question"
        case requesterAnnotation = "RequesterAnnotation"
        case reward = "Reward"
        case title = "Title"
        case uniqueRequestToken = "UniqueRequestToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let maxAssignmentsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .maxAssignments)
        maxAssignments = maxAssignmentsDecoded
        let autoApprovalDelayInSecondsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .autoApprovalDelayInSeconds)
        autoApprovalDelayInSeconds = autoApprovalDelayInSecondsDecoded
        let lifetimeInSecondsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .lifetimeInSeconds)
        lifetimeInSeconds = lifetimeInSecondsDecoded
        let assignmentDurationInSecondsDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .assignmentDurationInSeconds)
        assignmentDurationInSeconds = assignmentDurationInSecondsDecoded
        let rewardDecoded = try containerValues.decodeIfPresent(String.self, forKey: .reward)
        reward = rewardDecoded
        let titleDecoded = try containerValues.decodeIfPresent(String.self, forKey: .title)
        title = titleDecoded
        let keywordsDecoded = try containerValues.decodeIfPresent(String.self, forKey: .keywords)
        keywords = keywordsDecoded
        let descriptionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .description)
        description = descriptionDecoded
        let questionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .question)
        question = questionDecoded
        let requesterAnnotationDecoded = try containerValues.decodeIfPresent(String.self, forKey: .requesterAnnotation)
        requesterAnnotation = requesterAnnotationDecoded
        let qualificationRequirementsContainer = try containerValues.decodeIfPresent([QualificationRequirement?].self, forKey: .qualificationRequirements)
        var qualificationRequirementsDecoded0:[QualificationRequirement]? = nil
        if let qualificationRequirementsContainer = qualificationRequirementsContainer {
            qualificationRequirementsDecoded0 = [QualificationRequirement]()
            for structure0 in qualificationRequirementsContainer {
                if let structure0 = structure0 {
                    qualificationRequirementsDecoded0?.append(structure0)
                }
            }
        }
        qualificationRequirements = qualificationRequirementsDecoded0
        let uniqueRequestTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .uniqueRequestToken)
        uniqueRequestToken = uniqueRequestTokenDecoded
        let assignmentReviewPolicyDecoded = try containerValues.decodeIfPresent(ReviewPolicy.self, forKey: .assignmentReviewPolicy)
        assignmentReviewPolicy = assignmentReviewPolicyDecoded
        let hITReviewPolicyDecoded = try containerValues.decodeIfPresent(ReviewPolicy.self, forKey: .hITReviewPolicy)
        hITReviewPolicy = hITReviewPolicyDecoded
        let hITLayoutIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .hITLayoutId)
        hITLayoutId = hITLayoutIdDecoded
        let hITLayoutParametersContainer = try containerValues.decodeIfPresent([HITLayoutParameter?].self, forKey: .hITLayoutParameters)
        var hITLayoutParametersDecoded0:[HITLayoutParameter]? = nil
        if let hITLayoutParametersContainer = hITLayoutParametersContainer {
            hITLayoutParametersDecoded0 = [HITLayoutParameter]()
            for structure0 in hITLayoutParametersContainer {
                if let structure0 = structure0 {
                    hITLayoutParametersDecoded0?.append(structure0)
                }
            }
        }
        hITLayoutParameters = hITLayoutParametersDecoded0
    }
}