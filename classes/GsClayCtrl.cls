public without sharing class GsClayCtrl {
    public static List<Account> getAll() {
        return [SELECT Id, Name FROM Account];
    }
    public static void del(Id recId) {
        delete [SELECT Id FROM Account WHERE Id = :recId];
    }
}
