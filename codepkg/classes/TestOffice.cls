public class TestOffice {
  public static Office__c createOffice(String name) {
        Office__c office = new Office__c(
            Name = name
        );
        
        Database.SaveResult sv = Database.insert(office);
        return office; 
     }
    public static Boolean deleteOffice (Id officeID) {
        try {
       delete new Office__c(Id = officeId);
        }
        catch(Exception ex) {
            return false;
        }
        return true;
    }
     public static Office__c updateOffice(Id officeId, String name) {
        Office__c office = new Office__c(
            Id = officeId,
            Name = name    
        );
        
        Database.SaveResult sv = Database.update(office);
        return office; 
     }

}