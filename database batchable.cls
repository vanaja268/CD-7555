public class PermSafe_QueryLocator_UserMode implements Database.Batchable<SObject> {

    public Database.QueryLocator start(Database.BatchableContext ctx) {
        String soql = 'SELECT Id, Name FROM Account';
        return Database.getQueryLocator(
            soql,
            AccessLevel.USER_MODE
        );
    }

    public void execute(Database.BatchableContext ctx, List<SObject> scope) { }
    public void finish(Database.BatchableContext ctx) { }
}
