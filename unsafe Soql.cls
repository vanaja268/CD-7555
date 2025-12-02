public class FLS_Unsafe_SOQL_SystemMode {

    public static List<Account> getAllAccounts() {
        String soql = 'SELECT Id, Name, OwnerId FROM Account';
        // SYSTEM_MODE ignores FLS
        return (List<Account>)Database.query(soql, AccessLevel.SYSTEM_MODE);
    }
}
