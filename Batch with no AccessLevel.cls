public class PermUnsafe_Batch implements Database.Batchable<SObject> {

    public Database.QueryLocator start(Database.BatchableContext bc) {
        // No AccessLevel, no stripInaccessible, no CRUD check
        return Database.getQueryLocator('SELECT Id, Name FROM Account');
    }

    public void execute(Database.BatchableContext bc, List<SObject> scope) {
        // Unsafe DML
        update scope;
    }

    public void finish(Database.BatchableContext bc) { }
}
