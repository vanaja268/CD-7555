public class PermSafe_Insert_UserMode {

    public static void insertAccounts(List<Account> accs) {
        // Respect user object/field permissions
        Database.SaveResult[] results = Database.insert(
            accs,
            AccessLevel.USER_MODE
        );
    }
}
