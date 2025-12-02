public class FLS_SObject_NoAccessLevel_Test {

    // ❌ Vulnerable: no AccessLevel, implicit system context
    public static void updateAccounts_NoAccessLevel() {
        String soql = 'SELECT Id, Name, AnnualRevenue FROM Account';
        List<SObject> records = Database.query(soql);  // SObject type, no USER_MODE

        for (SObject sobj : records) {
            sobj.put('AnnualRevenue', 12345);
        }

        // DML on generic SObject with no FLS enforcement
        Database.update(records);
    }
}
