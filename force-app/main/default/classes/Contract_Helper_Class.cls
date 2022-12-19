public class Contract_Helper_Class 
{
    Public Static Void ContractHelper(list<contract__c> NewContract)
    {
        list<Flat__c> AllFlatsRec = [select id,flat_Status__c from Flat__c];
        for(contract__c EachRec : NewContract)
        {
            for(Flat__c EachFlat : AllFlatsRec)
            {
                if(EachFlat.flat_Status__c != 'Vacant' && EachRec.Flat_Number__c == EachFlat.Id)
                {
                    EachRec.adderror('Sorry! This Flat Is not Vacant');
                }
            }
        }
    }
}