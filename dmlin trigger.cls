public class PermUnsafe_TriggerHandler {

    public static void afterUpdate(List<Account> newList) {
        // Handler running in trigger context (often system mode)
        // No permission checks
        List<Contact> cons = [SELECT Id, AccountId FROM Contact WHERE AccountId IN :newList];
        for (Contact c : cons) {
            c.Description = 'Updated via trigger';
        }
        update cons;   // Vulnerable DML
    }
}
