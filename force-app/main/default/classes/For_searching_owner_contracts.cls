Public with sharing  class For_searching_owner_contracts{


   public string name{set;get;}
 public list<Contract__c> Message {set;get;}

      
 
     public void getdata() {
     
     
     
           Message = [SELECT id, Name, Contract_Status__c,Flat_Number__c,Rent_from_customer__c,Expired_date__c,Lease_period_in_months__c, Email__c,Buiding_owner__c
      
FROM Contract__c WHERE 	Buiding_owner__c =: name];

  

  
  }
     
        }