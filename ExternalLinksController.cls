/*
 * Created on Fri Mar 11 2022
 *
 * rsmibert@gmail.com
 * 
 * kudos to Matt Gerry @ CWTF
 */

public with sharing class ExternalLinksController {

    @AuraEnabled
    public static List <Utility_Bar_Link__mdt> getUtilityBarLinks()
    {
        return [SELECT MasterLabel, Link_URL__c, Open_in_Console_Tab__c, Order__c 
                FROM Utility_Bar_Link__mdt WHERE Active_Link__c = TRUE WITH SECURITY_ENFORCED
                ORDER BY Order__c ASC ] ;
    } 
   
}
