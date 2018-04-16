/*
* Map Processing Fields With Verification - Relativity 9.4+
* 
* This script will run against the target workspace and map all fields for Processing. It assumes
* field names match 1:1 between Relativity and Invariant. The field type and associated object
* (if applicable) are also verified. Any associated object name must also match 1:1. 
* 
* Author: George Kustak
* Last Modified: 
*/

USE [EDDS#######] -- Replace with workspace Artifact ID

IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'All Custodians')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'All Custodians'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 13
AND AssociativeArtifactTypeID IN (SELECT ArtifactTypeID FROM EDDSDBO.[ArtifactType] WHERE ArtifactType = 'Custodian'))
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'AllCustodians', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'All Custodians' 
AND FieldArtifactTypeID = 10 
AND FieldTypeID = 13
AND AssociativeArtifactTypeID IN (SELECT ArtifactTypeID FROM EDDSDBO.[ArtifactType] WHERE ArtifactType = 'Custodian')
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'All Paths/Locations')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'All Paths/Locations'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'AllPaths', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'All Paths/Locations'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Attachment Document IDs')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Attachment Document IDs'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'ChildRelativityControlNumbers', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Attachment Document IDs'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Attachment List')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Attachment List'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'ChildFileNames', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Attachment List'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Author')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Author'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Author', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Author'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'BCC')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'BCC'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'EmailDisplayBCC', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'BCC'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'BCC (SMTP Address)')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'BCC (SMTP Address)'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'EmailBCCSmtp', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'BCC (SMTP Address)'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'CC')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'CC'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'EmailDisplayCC', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'CC'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'CC (SMTP Address)')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'CC (SMTP Address)'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'EmailCCSmtp', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'CC (SMTP Address)'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Child MD5 Hash Values')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Child MD5 Hash Values'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'ChildMD5Hashes', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Child MD5 Hash Values'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Child SHA1 Hash Values')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Child SHA1 Hash Values'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'ChildSHA1Hashes', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Child SHA1 Hash Values'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Child SHA256 Hash Values')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Child SHA256 Hash Values'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'ChildSHA256Hashes', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Child SHA256 Hash Values'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Comments')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Comments'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Comments', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Comments'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Company')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Company'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Company', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Company'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Contains Embedded Files')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Contains Embedded Files'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Office/EmbeddedItems', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Contains Embedded Files'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Control Number Beg Attach')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Control Number Beg Attach'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'RelativityBegAttach', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Control Number Beg Attach'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Control Number End Attach')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Control Number End Attach'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'RelativityEndAttach', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Control Number End Attach'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Conversation')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Conversation'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'EmailConversation', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Conversation'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Conversation Family')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Conversation Family'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'ConversationFamily', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Conversation Family'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Conversation Index')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Conversation Index'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'EmailConversationIndex', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Conversation Index'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Created Date')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Created Date'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'CreatedOnDateOnly', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Created Date'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Created Date/Time')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Created Date/Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 2)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'CreatedOn', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Created Date/Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 2
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Created Time')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Created Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'TimeCreated', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Created Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'DeDuped Custodians')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'DeDuped Custodians' 
AND FieldArtifactTypeID = 10
AND FieldTypeID = 13
AND AssociativeArtifactTypeID IN (SELECT ArtifactTypeID FROM EDDSDBO.[ArtifactType] WHERE ArtifactType = 'Custodian'))
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'DeDupedCustodians', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'DeDuped Custodians'
AND FieldArtifactTypeID = 10 
AND FieldTypeID = 13
AND AssociativeArtifactTypeID IN (SELECT ArtifactTypeID FROM EDDSDBO.[ArtifactType] WHERE ArtifactType = 'Custodian')
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'DeDuped Paths')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'DeDuped Paths'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'DeDupedPaths', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'DeDuped Paths'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Delivery Receipt Requested')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Delivery Receipt Requested'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'EmailDeliveryReceiptRequested', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Delivery Receipt Requested'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Document Subject')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Document Subject'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'DocumentSubject', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Document Subject'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Document Title')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Document Title'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'DocumentTitle(non-emails)', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Document Title'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Email Categories')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Email Categories'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'EmailKeywords', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Email Categories'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Email Created Date/Time')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Email Created Date/Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 2)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Email/CreatedOn', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Email Created Date/Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 2
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Email Entry ID')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Email Entry ID'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'EmailEntryID', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Email Entry ID'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Email Folder Path')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Email Folder Path'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'EmailFolder', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Email Folder Path'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Email Format')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Email Format'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 5)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Email/Format', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Email Format'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 5
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Email Has Attachments')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Email Has Attachments'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'EmailHasAttachments', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Email Has Attachments'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Email In Reply To ID')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Email In Reply To ID'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Email/In_Reply_To', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Email In Reply To ID'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Email Last Modified Date/Time')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Email Last Modified Date/Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 2)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Email/LastModified', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Email Last Modified Date/Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 2
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Email Modified Flag')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Email Modified Flag'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Email/ModifiedFlag', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Email Modified Flag'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Email Sensitivity')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Email Sensitivity'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 5)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'EmailSensitivity', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Email Sensitivity'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 5
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Email Sent Flag')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Email Sent Flag'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Email/SentFlag', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Email Sent Flag'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Email Store Name')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Email Store Name'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'EmailContainer', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Email Store Name'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Email Unread')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Email Unread'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'EmailIsUnread', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Email Unread'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Excel Hidden Columns')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Excel Hidden Columns'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Excel/HasHiddenColumns', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Excel Hidden Columns'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Excel Hidden Rows')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Excel Hidden Rows'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Excel/HasHiddenRows', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Excel Hidden Rows'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Excel Hidden Worksheets')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Excel Hidden Worksheets'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Excel/HasHiddenWorksheets', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Excel Hidden Worksheets'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Excel Pivot Tables')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Excel Pivot Tables'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Excel/HasPivotTables', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Excel Pivot Tables'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'File Extension')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'File Extension'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'FileExtension', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'File Extension'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'File Name')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'File Name'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'FileName', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'File Name'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'File Size')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'File Size'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 6)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'FileSize', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'File Size'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 6
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'File Type')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'File Type'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'FileType', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'File Type'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'From')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'From'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'EmailDisplaySender', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'From'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'From (SMTP Address)')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'From (SMTP Address)'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'EmailSenderSmtp', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'From (SMTP Address)'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Group Identifier')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Group Identifier'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'RelativityGroupId', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Group Identifier'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Has Hidden Data')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Has Hidden Data'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'HiddenText', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Has Hidden Data'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Has OCR Text')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Has OCR Text'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'HasOcrText', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Has OCR Text'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Image Taken Date/Time')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Image Taken Date/Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 2)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Image/Exif/DateTimeOriginal', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Image Taken Date/Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 2
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Importance')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Importance'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 5)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'EmailImportance', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Importance'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 5
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Is Embedded')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Is Embedded'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'IsEmbedded', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Is Embedded'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Is Parent')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Is Parent'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'IsParentDocument', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Is Parent'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Keywords')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Keywords'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Office/Keywords', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Keywords'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Last Accessed Date')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Last Accessed Date'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'LastAccessedDateOnly', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Last Accessed Date'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Last Accessed Date/Time')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Last Accessed Date/Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 2)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'LastAccessed', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Last Accessed Date/Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 2
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Last Accessed Time')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Last Accessed Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'LastAccessedTime', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Last Accessed Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Last Modified Date')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Last Modified Date'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'LastModifiedDateOnly', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Last Modified Date'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Last Modified Date/Time')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Last Modified Date/Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 2)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'LastModified', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Last Modified Date/Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 2
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Last Modified Time')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Last Modified Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'LastModifiedTime', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Last Modified Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Last Printed Date')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Last Printed Date'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'LastPrintedDateOnly', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Last Printed Date'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Last Printed Date/Time')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Last Printed Date/Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 2)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'LastPrinted', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Last Printed Date/Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 2
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Last Printed Time')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Last Printed Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'LastPrintedTime', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Last Printed Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Last Saved By')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Last Saved By'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Office/LastAuthor', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Last Saved By'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Last Saved Date')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Last Saved Date'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'LastSavedDateOnly', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Last Saved Date'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Last Saved Date/Time')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Last Saved Date/Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 2)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'LastSaved', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Last Saved Date/Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 2
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Last Saved Time')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Last Saved Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'LastSavedTime', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Last Saved Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Lotus Notes Other Folders')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Lotus Notes Other Folders'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Lotus/OtherFolders', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Lotus Notes Other Folders'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'MD5 Hash')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'MD5 Hash'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'MD5Hash', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'MD5 Hash'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0

IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'MS Office Document Manager')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'MS Office Document Manager'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Office/Manager', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'MS Office Document Manager'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'MS Office Revision Number')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'MS Office Revision Number'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Office/Revision', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'MS Office Revision Number'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Media Type')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Media Type'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 5)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'MediaType', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Media Type'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 5
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Meeting End Date')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Meeting End Date'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'MeetingEndDateOnly', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Meeting End Date'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Meeting End Date/Time')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Meeting End Date/Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 2)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Email/EndDate', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Meeting End Date/Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 2
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Meeting End Time')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Meeting End Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'MeetingEndTime', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Meeting End Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Meeting Start Date')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Meeting Start Date'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'MeetingStartDateOnly', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Meeting Start Date'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Meeting Start Date/Time')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Meeting Start Date/Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 2)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Email/StartDate', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Meeting Start Date/Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 2
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Meeting Start Time')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Meeting Start Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'MeetingStartTime', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Meeting Start Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Message Class')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Message Class'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 5)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Email/MessageClass', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Message Class'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 5
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Message Header')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Message Header'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Email/MessageHeader', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Message Header'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Message ID')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Message ID'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'EmailMessageID', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Message ID'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Message Type')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Message Type'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 5)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Email/MessageType', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Message Type'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 5
		  	  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Native File')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Native File'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'StoredAs', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Native File'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Number of Attachments')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Number of Attachments'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 1)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'AttachmentCount', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Number of Attachments'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 1
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Original Author Name')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Original Author Name'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Email/OriginalAuthorName', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Original Author Name'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Original Email Author')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Original Email Author'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Email/OriginalAuthorEMail', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Original Email Author'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Original File Extension')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Original File Extension'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'LiteralFileExtension', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Original File Extension'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Other Metadata')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Other Metadata'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'OtherProps', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Other Metadata'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Outlook Flag Status')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Outlook Flag Status'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 5)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'OutlookFlagStatus', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Outlook Flag Status'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 5
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Parent Document ID')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Parent Document ID'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'ParentRelativityControlNumber', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Parent Document ID'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Password Protected')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Password Protected'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 5)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'PasswordProtected', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Password Protected'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 5
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'PowerPoint Hidden Slides')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'PowerPoint Hidden Slides'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'PowerPointHiddenSlides', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'PowerPoint Hidden Slides'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Primary Date/Time')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Primary Date/Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 2)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'DocDate', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Primary Date/Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 2
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Read Receipt Requested')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Read Receipt Requested'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'EmailReadReceiptRequested', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Read Receipt Requested'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Received Date')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Received Date'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'ReceivedDateOnly', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Received Date'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Received Date/Time')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Received Date/Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 2)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'EmailReceivedOn', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Received Date/Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 2
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Received Time')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Received Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'TimeReceived', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Received Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Recipient Count')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Recipient Count'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 1)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'RecipientCount', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Recipient Count'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 1
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Recipient Domains (BCC)')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Recipient Domains (BCC)'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 13
AND AssociativeArtifactTypeID IN (SELECT ArtifactTypeID FROM EDDSDBO.[ArtifactType] WHERE ArtifactType = 'Domain'))
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Email/DomainParsedBCC', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Recipient Domains (BCC)'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 13
AND AssociativeArtifactTypeID IN (SELECT ArtifactTypeID FROM EDDSDBO.[ArtifactType] WHERE ArtifactType = 'Domain')
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Recipient Domains (CC)')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Recipient Domains (CC)'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 13
AND AssociativeArtifactTypeID IN (SELECT ArtifactTypeID FROM EDDSDBO.[ArtifactType] WHERE ArtifactType = 'Domain'))
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Email/DomainParsedCC', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Recipient Domains (CC)'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 13
AND AssociativeArtifactTypeID IN (SELECT ArtifactTypeID FROM EDDSDBO.[ArtifactType] WHERE ArtifactType = 'Domain')
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Recipient Domains (To)')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Recipient Domains (To)'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 13
AND AssociativeArtifactTypeID IN (SELECT ArtifactTypeID FROM EDDSDBO.[ArtifactType] WHERE ArtifactType = 'Domain'))
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Email/DomainParsedTo', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Recipient Domains (To)'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 13
AND AssociativeArtifactTypeID IN (SELECT ArtifactTypeID FROM EDDSDBO.[ArtifactType] WHERE ArtifactType = 'Domain')
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Recipient Name (To)')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Recipient Name (To)'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'EmailToName', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Recipient Name (To)'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Record Type')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Record Type'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 5)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'RelativityDocumentClass', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Record Type'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 5

IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'SHA1 Hash')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'SHA1 Hash'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'SHA1Hash', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'SHA1 Hash'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'SHA256 Hash')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'SHA256 Hash'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'SHA256Hash', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'SHA256 Hash'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Sender Domain')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Sender Domain'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 13
AND AssociativeArtifactTypeID IN (SELECT ArtifactTypeID FROM EDDSDBO.[ArtifactType] WHERE ArtifactType = 'Domain'))
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Email/DomainParsedFrom', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Sender Domain'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 13
AND AssociativeArtifactTypeID IN (SELECT ArtifactTypeID FROM EDDSDBO.[ArtifactType] WHERE ArtifactType = 'Domain')
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Sender Name')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Sender Name'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'EmailSenderName', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Sender Name'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 0
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Sent Date')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Sent Date'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'SentDateOnly', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Sent Date'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Sent Date/Time')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Sent Date/Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 2)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'EmailSentOn', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Sent Date/Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 2
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Sent Time')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Sent Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'TimeSent', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Sent Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4

IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Sort Date/Time')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Sort Date/Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 2)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'SortDate', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Sort Date/Time'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 2
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Source Path')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Source Path'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'LogicalPath', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Source Path'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Speaker Notes')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Speaker Notes'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'PowerPoint/HasSpeakerNotes', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Speaker Notes'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Subject')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Subject'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'EmailSubject', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Subject'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Suspect File Extension')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Suspect File Extension'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'FileExtensionSuspect', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Suspect File Extension'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Text Extraction Method')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Text Extraction Method'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 5)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'TextExtractionMethod', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Text Extraction Method'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 5
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Title')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Title'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'DocTitle', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Title'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'To')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'To'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'EmailDisplayTo', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'To'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'To (SMTP Address)')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'To (SMTP Address)'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'EmailToSmtp', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'To (SMTP Address)'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Track Changes')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Track Changes'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'TrackChanges', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Track Changes'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Unified Title')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Unified Title'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'UnifiedSubject', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Unified Title'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 4
		  
IF (NOT EXISTS(SELECT FieldArtifactID FROM EDDSDBO.FieldMapping WHERE CatalogFieldName = 'Unprocessable')) 
AND EXISTS (SELECT ArtifactID FROM EDDSDBO.[Field] WHERE DisplayName = 'Unprocessable'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3)
INSERT INTO EDDSDBO.FieldMapping (FieldArtifactID, [Order], ExternalFieldName, ExternalFieldSource, CatalogFieldName)
SELECT ArtifactID, 0, 'Unprocessable', 'Invariant', DisplayName
FROM EDDSDBO.Field WHERE DisplayName = 'Unprocessable'
AND FieldArtifactTypeID = 10
AND FieldTypeID = 3

--Display mapped fields
SELECT [EDDSDBO].[Field].[DisplayName] WorkspaceField, [EDDSDBO].[FieldMapping].[CatalogFieldName] ProcessingField
FROM [EDDSDBO].[Field]
JOIN [EDDSDBO].[FieldMapping]
ON [EDDSDBO].[Field].[ArtifactID] = [EDDSDBO].[FieldMapping].[FieldArtifactID]