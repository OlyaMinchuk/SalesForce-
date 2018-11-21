public class TestClass {
    public static Employee__c createEmployee(String lastName, String FirstName, id departmentId) {
        Employee__c employee = new Employee__c(
            Name = lastName,
            FirstName__c = firstName,
            Departamentss__c = departmentId
        );
        
        Database.SaveResult sv = Database.insert(employee);
        return employee; 
    }
    
    public static Boolean deleteEmployee (Id employeeID) {
        try {
       delete new Employee__c(Id = employeeId);
        }
        catch(Exception ex) {
            return false;
        }
        return true;
    }
     public static Employee__c updateEmployee(Id employeeId, String FirstName, String lastName) {
        Employee__c employee = new Employee__c(
            Id = employeeId,
            Name = lastName,
            FirstName__c = firstName
            
        );
        
        Database.SaveResult sv = Database.update(employee);
        return employee; 
     }
}