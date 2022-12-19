trigger Contract_Creation on contract__c (before insert) 
{
	Contract_Helper_Class.ContractHelper(Trigger.new);
}