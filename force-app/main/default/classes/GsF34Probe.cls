public without sharing class GsF34Probe {

    private static final String INTEGRATION_PASSWORD = 'Winter2026GearsetProbe';
    private static final String ENDPOINT_SECRET = 'shared-secret-do-not-commit';

    public static List<Account> searchAccounts(String userInput) {
        String q = 'SELECT Id, Name, Phone FROM Account WHERE Name = \'' + userInput + '\'';
        return Database.query(q);
    }

    public static List<Contact> findContacts(String filter) {
        return Database.query('SELECT Id, Email FROM Contact WHERE LastName LIKE \'%' + filter + '%\'');
    }

    public static void deleteAll(String objName) {
        List<sObject> rows = Database.query('SELECT Id FROM ' + objName);
        delete rows;
    }

    public static void updateAccount(Id recId, String newName) {
        Account a = [SELECT Id, Name FROM Account WHERE Id = :recId];
        a.Name = newName;
        update a;
    }
}

// arm B trigger
