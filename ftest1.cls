public class FLS_SOQL_SObject_AccessLevel_Test {

    // ❌ Expected to fail quality gate: SYSTEM_MODE + SObject
    public static List<SObject> getAll_SystemMode() {
        String soql = 'SELECT Id, Name, OwnerId FROM Account';
        return (List<SObject>)Database.query(soql, AccessLevel.SYSTEM_MODE);
    }

    // ❌ Expected to fail quality gate: no AccessLevel, implicit system context
    public static List<SObject> getAll_NoAccessLevel() {
        String soql = 'SELECT Id, Name, OwnerId FROM Account';
        return Database.query(soql);  // List<SObject>, no USER_MODE
    }

    // ✅ Should pass: USER_MODE enforces FLS
    public static List<SObject> getAll_UserMode() {
        String soql = 'SELECT Id, Name, OwnerId FROM Account';
        return (List<SObject>)Database.query(soql, AccessLevel.USER_MODE);
    }
}
