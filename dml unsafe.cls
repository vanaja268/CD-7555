public class PermUnsafe_Mixed {

    public static void processAccounts() {
        // SOQL still unsafe (no AccessLevel)
        List<Account> accs = [SELECT Id, Name FROM Account WHERE Name LIKE 'A%'];

        // Some processing...

        // DML also unsafe
        update accs;
    }
}
