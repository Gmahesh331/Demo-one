@istest
public class Test_Contract_Creation 
{
    @istest
    public static void Setup()
    {
        Building__c B = new Building__c(Name = 'Test');
        insert B;
        Flat__c F1 = new Flat__c(Building_Name__c = B.id,	Flat_status__c='Occupied');
        insert F1;
        Flat__c F2 = new Flat__c(Building_Name__c = B.id,	Flat_status__c='contract in progress');
        insert F2;
        Flat__c F3 = new Flat__c(Building_Name__c = B.id,	Flat_status__c='Vacant');
        insert F3;
    }
    
    @istest 
    Public static void Occupied_Flat()
    {
        Flat__c QueryF = [select id,Flat_status__c from flat__c where Flat_status__c='Occupied'];
        contract__c c = new contract__c();
        c.Flat_Number__c = QueryF.id;
        insert c;
        list<contract__c> QueryC = [select id from contract__c];
        system.assertEquals(0, QueryC.size());
    }
}