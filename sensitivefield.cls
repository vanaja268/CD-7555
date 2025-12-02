public class FLS_Vulnerable_SystemMode {

    public static void loadAccounts() {
        String soql = 'SELECT Id, SSN__c FROM Contact';
        List<Contact> cons = (List<Contact>)Database.query(soql, AccessLevel.SYSTEM_MODE);

        for (Contact c : cons) {
            c.SSN__c = 'XXX'; // Writing restricted field
        }

        Database.update(cons, AccessLevel.SYSTEM_MODE); // Double violation
    }
}
