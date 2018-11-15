<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>EmailAbotNewDepartment</fullName>
        <description>EmailAbotNewDepartment</description>
        <protected>false</protected>
        <recipients>
            <field>DirectorEmail__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/NewDepartment</template>
    </alerts>
    <fieldUpdates>
        <fullName>Director_email</fullName>
        <field>DirectorEmail__c</field>
        <formula>Offices__r.Director__r.emails__c</formula>
        <name>Director email</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>EmailToDirector</fullName>
        <actions>
            <name>EmailAbotNewDepartment</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Director_email</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>NOT(ISNULL(DirectorEmail__c ))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
