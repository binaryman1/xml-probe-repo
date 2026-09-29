public without sharing class GsF34ArmZ {
    private static final String INTEGRATION_PASSWORD = 'Winter2026GearsetProbeGsF34ArmZ';
    public static List<Account> searchAccounts(String userInput) {
        String q = 'SELECT Id, Name, Phone FROM Account WHERE Name = \'' + userInput + '\'';
        return Database.query(q);
    }
    public static void deleteAll(String objName) {
        List<sObject> rows = Database.query('SELECT Id FROM ' + objName);
        delete rows;
    }
}
