public class FLS_SOQL_AccessLevel_Test {

    
    public static List<Account> getAllAccounts_SystemMode() {
        String soql = 'SELECT Id, Name, OwnerId FROM Account';
        return (List<Account>)Database.query(soql, AccessLevel.SYSTEM_MODE);
    }

    
    public static List<Account> getAllAccounts_NoAccessLevel() {
        String soql = 'SELECT Id, Name, OwnerId FROM Account';
        return (List<Account>)Database.query(soql);   // No USER_MODE → unsafe
    }

    
    public static List<Account> getAllAccounts_UserMode() {
        String soql = 'SELECT Id, Name, OwnerId FROM Account';
        return (List<Account>)Database.query(soql, AccessLevel.USER_MODE);
    }
}
