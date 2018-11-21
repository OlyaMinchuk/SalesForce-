public class TestDepartament {
        public static Departament__c createDepartament(String name, Id officeid) {
        Departament__c departament = new Departament__c(
            Name = name,
            Offices__c = officeId
        );
        
        Database.SaveResult sv = Database.insert(departament);
        return departament; 
}
    
    public static Boolean deleteDepartament (Id departamentID) {
        try {
       delete new Departament__c(Id = departamentID);
        }
        catch(Exception ex) {
            return false;
        }
        return true;
    }
    public static Departament__c updateDepartament(Id departamentID, String name) {
        Departament__c departament = new Departament__c(
            Id = departamentId,
            Name = name
            
        );
        
        Database.SaveResult sv = Database.update(departament);
        return departament; 
     }
}