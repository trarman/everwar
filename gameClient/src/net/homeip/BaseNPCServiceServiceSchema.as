package net.homeip
{
	 import mx.rpc.xml.Schema
	 public class BaseNPCServiceServiceSchema
	{
		 public var schemas:Array = new Array();
		 public var targetNamespaces:Array = new Array();
		 public function BaseNPCServiceServiceSchema():void
		{
			 var xsdXML0:XML = <xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://cxf.apache.org/bindings/xformat" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tns="http://npc.ws.rpg.beacon.com/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:xs="http://www.w3.org/2001/XMLSchema" attributeFormDefault="unqualified" elementFormDefault="unqualified" targetNamespace="http://npc.ws.rpg.beacon.com/">
    <xsd:element name="addNPC" type="tns:addNPC"/>
    <xsd:element name="addNPCResponse" type="tns:addNPCResponse"/>
    <xsd:element name="getNPCById" type="tns:getNPCById"/>
    <xsd:element name="getNPCByIdResponse" type="tns:getNPCByIdResponse"/>
    <xsd:element name="getNPCList" type="tns:getNPCList"/>
    <xsd:element name="getNPCListResponse" type="tns:getNPCListResponse"/>
    <xsd:element name="removeNPCById" type="tns:removeNPCById"/>
    <xsd:element name="removeNPCByIdResponse" type="tns:removeNPCByIdResponse"/>
    <xsd:element name="updateNPC" type="tns:updateNPC"/>
    <xsd:element name="updateNPCResponse" type="tns:updateNPCResponse"/>
    <xsd:complexType name="removeNPCById">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="id" type="xs:int"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="removeNPCByIdResponse">
        <xsd:sequence>
            <xsd:element name="success" type="xs:boolean"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="addNPC">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="npc" type="tns:npcCharacter"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="npcCharacter">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="agility" type="xs:int"/>
            <xsd:element minOccurs="0" name="charm" type="xs:int"/>
            <xsd:element minOccurs="0" name="conversationStart" type="xs:int"/>
            <xsd:element minOccurs="0" name="faction" type="xs:int"/>
            <xsd:element minOccurs="0" name="id" type="xs:int"/>
            <xsd:element minOccurs="0" name="intelligence" type="xs:int"/>
            <xsd:element minOccurs="0" name="name" type="xs:string"/>
            <xsd:element minOccurs="0" name="observation" type="xs:int"/>
            <xsd:element minOccurs="0" name="strength" type="xs:int"/>
            <xsd:element minOccurs="0" name="vendorStore" type="xs:int"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="addNPCResponse">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="id" type="xs:int"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="getNPCList">
        <xsd:sequence/>
    </xsd:complexType>
    <xsd:complexType name="getNPCListResponse">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="npcList" type="tns:npcCharacter"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="getNPCById">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="id" type="xs:int"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="getNPCByIdResponse">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="npc" type="tns:npcCharacter"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="updateNPC">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="npc" type="tns:npcCharacter"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="updateNPCResponse">
        <xsd:sequence>
            <xsd:element name="success" type="xs:boolean"/>
        </xsd:sequence>
    </xsd:complexType>
</xsd:schema>
;
			 var xsdSchema0:Schema = new Schema(xsdXML0);
			schemas.push(xsdSchema0);
			targetNamespaces.push(new Namespace('','http://npc.ws.rpg.beacon.com/'));
		}
	}
}