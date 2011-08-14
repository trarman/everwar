package net.homeip
{
	 import mx.rpc.xml.Schema
	 public class BaseConversationServiceServiceSchema
	{
		 public var schemas:Array = new Array();
		 public var targetNamespaces:Array = new Array();
		 public function BaseConversationServiceServiceSchema():void
		{
			 var xsdXML0:XML = <xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://cxf.apache.org/bindings/xformat" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tns="http://conversation.ws.rpg.beacon.com/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:xs="http://www.w3.org/2001/XMLSchema" attributeFormDefault="unqualified" elementFormDefault="unqualified" targetNamespace="http://conversation.ws.rpg.beacon.com/">
    <xsd:element name="getConversationById" type="tns:getConversationById"/>
    <xsd:element name="getConversationByIdResponse" type="tns:getConversationByIdResponse"/>
    <xsd:element name="getConversationStarters" type="tns:getConversationStarters"/>
    <xsd:element name="getConversationStartersResponse" type="tns:getConversationStartersResponse"/>
    <xsd:element name="removeConversationById" type="tns:removeConversationById"/>
    <xsd:element name="removeConversationByIdResponse" type="tns:removeConversationByIdResponse"/>
    <xsd:element name="saveConversationAnswer" type="tns:saveConversationAnswer"/>
    <xsd:element name="saveConversationAnswerResponse" type="tns:saveConversationAnswerResponse"/>
    <xsd:element name="saveConversationExchange" type="tns:saveConversationExchange"/>
    <xsd:element name="saveConversationExchangeResponse" type="tns:saveConversationExchangeResponse"/>
    <xsd:complexType name="saveConversationExchange">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="exchange" type="tns:conversationExchange"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="conversationExchange">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="id" type="xs:int"/>
            <xsd:element minOccurs="0" name="npcDialog" type="xs:string"/>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="responses" nillable="true" type="tns:conversationAnswer"/>
            <xsd:element name="starter" type="xs:boolean"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="conversationAnswer">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="action" type="xs:int"/>
            <xsd:element minOccurs="0" name="actionValue" type="xs:int"/>
            <xsd:element minOccurs="0" name="answer" type="xs:string"/>
            <xsd:element minOccurs="0" name="answerToId" type="xs:int"/>
            <xsd:element minOccurs="0" name="id" type="xs:int"/>
            <xsd:element minOccurs="0" name="nextExchange" type="xs:int"/>
            <xsd:element minOccurs="0" name="precondition" type="xs:int"/>
            <xsd:element minOccurs="0" name="preconditionValue" type="xs:int"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="saveConversationExchangeResponse">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="id" type="xs:int"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="getConversationStarters">
        <xsd:sequence/>
    </xsd:complexType>
    <xsd:complexType name="getConversationStartersResponse">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="starterList" type="tns:conversationExchange"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="saveConversationAnswer">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="answer" type="tns:conversationAnswer"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="saveConversationAnswerResponse">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="id" type="xs:int"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="removeConversationById">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="id" type="xs:int"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="removeConversationByIdResponse">
        <xsd:sequence>
            <xsd:element name="success" type="xs:boolean"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="getConversationById">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="id" type="xs:int"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="getConversationByIdResponse">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="conversation" type="tns:conversationExchange"/>
        </xsd:sequence>
    </xsd:complexType>
</xsd:schema>
;
			 var xsdSchema0:Schema = new Schema(xsdXML0);
			schemas.push(xsdSchema0);
			targetNamespaces.push(new Namespace('','http://conversation.ws.rpg.beacon.com/'));
		}
	}
}