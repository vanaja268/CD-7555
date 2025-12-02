public class FLS_SOQL_ContentDocumentLink_AccessLevel_Test {

   
    public static List<ContentDocumentLink> getLinks_SystemMode() {
        String soql = 'SELECT Id, ContentDocumentId, LinkedEntityId, ShareType ' +
                      'FROM ContentDocumentLink';
        return (List<ContentDocumentLink>)Database.query(
            soql,
            AccessLevel.SYSTEM_MODE
        );
    }

    
    public static List<ContentDocumentLink> getLinks_NoAccessLevel() {
        String soql = 'SELECT Id, ContentDocumentId, LinkedEntityId, ShareType ' +
                      'FROM ContentDocumentLink';
        return (List<ContentDocumentLink>)Database.query(soql);
    }

    
    public static List<ContentDocumentLink> getLinks_UserMode() {
        String soql = 'SELECT Id, ContentDocumentId, LinkedEntityId, ShareType ' +
                      'FROM ContentDocumentLink';
        return (List<ContentDocumentLink>)Database.query(
            soql,
            AccessLevel.USER_MODE
        );
    }
}
