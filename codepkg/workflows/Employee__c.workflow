<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>EmailAbotExpirationDate</fullName>
        <description>EmailAbotExpirationDate</description>
        <protected>true</protected>
        <recipients>
            <field>email_manager__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Data</template>
    </alerts>
    <alerts>
        <fullName>EmailAbotExpiratioonDate</fullName>
        <description>EmailAbotExpirationDate</description>
        <protected>true</protected>
        <recipients>
            <field>email_manager__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Data</template>
    </alerts>
    <alerts>
        <fullName>Email_ALert</fullName>
        <description>Email ALert</description>
        <protected>false</protected>
        <recipients>
            <field>email_manager__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/New_employee_to_manager</template>
    </alerts>
    <fieldUpdates>
        <fullName>emailManager</fullName>
        <field>email_manager__c</field>
        <name>emailManager</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>updade_departament_employee</fullName>
        <field>count_employee_workflow__c</field>
        <formula>IF (ISBLANK(Departamentss__r.count_employee_workflow__c), 1,  Departamentss__r.count_employee_workflow__c +1)</formula>
        <name>updade_departament_employee</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <targetObject>Departamentss__c</targetObject>
    </fieldUpdates>
    <rules>
        <fullName>Calcu%3Bate count employee</fullName>
        <actions>
            <name>updade_departament_employee</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>Departamentss__c  &lt;&gt; null</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
