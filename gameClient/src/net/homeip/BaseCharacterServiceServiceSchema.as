package net.homeip
{
	 import mx.rpc.xml.Schema
	 public class BaseCharacterServiceServiceSchema
	{
		 public var schemas:Array = new Array();
		 public var targetNamespaces:Array = new Array();
		 public function BaseCharacterServiceServiceSchema():void
		{
			 var xsdXML0:XML = <xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://cxf.apache.org/bindings/xformat" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tns="http://character.ws.rpg.beacon.com/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:xs="http://www.w3.org/2001/XMLSchema" attributeFormDefault="unqualified" elementFormDefault="unqualified" targetNamespace="http://character.ws.rpg.beacon.com/">
    <xsd:element name="addCharacter" type="tns:addCharacter"/>
    <xsd:element name="addCharacterResponse" type="tns:addCharacterResponse"/>
    <xsd:element name="getCharacterById" type="tns:getCharacterById"/>
    <xsd:element name="getCharacterByIdResponse" type="tns:getCharacterByIdResponse"/>
    <xsd:element name="getCharactersForAccount" type="tns:getCharactersForAccount"/>
    <xsd:element name="getCharactersForAccountResponse" type="tns:getCharactersForAccountResponse"/>
    <xsd:element name="removeCharacterById" type="tns:removeCharacterById"/>
    <xsd:element name="removeCharacterByIdResponse" type="tns:removeCharacterByIdResponse"/>
    <xsd:element name="updateCharacter" type="tns:updateCharacter"/>
    <xsd:element name="updateCharacterResponse" type="tns:updateCharacterResponse"/>
    <xsd:complexType name="getCharactersForAccount">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="account" type="xs:string"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="getCharactersForAccountResponse">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="characters" type="tns:rpgCharacter"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="rpgCharacter">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="account" type="xs:string"/>
            <xsd:element minOccurs="0" name="agility" type="xs:int"/>
            <xsd:element minOccurs="0" name="avatar" type="xs:base64Binary"/>
            <xsd:element minOccurs="0" name="characterId" type="xs:int"/>
            <xsd:element minOccurs="0" name="charm" type="xs:int"/>
            <xsd:element minOccurs="0" name="faction" type="xs:string"/>
            <xsd:element minOccurs="0" name="health" type="xs:int"/>
            <xsd:element minOccurs="0" name="intelligence" type="xs:int"/>
            <xsd:element minOccurs="0" name="location" type="xs:string"/>
            <xsd:element minOccurs="0" name="name" type="xs:string"/>
            <xsd:element minOccurs="0" name="observation" type="xs:int"/>
            <xsd:element minOccurs="0" name="strength" type="xs:int"/>
            <xsd:element minOccurs="0" name="x" type="xs:int"/>
            <xsd:element minOccurs="0" name="y" type="xs:int"/>
            <xsd:element minOccurs="0" name="zoneId" type="xs:int"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="addCharacter">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="character" type="tns:rpgCharacter"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="addCharacterResponse">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="id" type="xs:int"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="removeCharacterById">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="id" type="xs:int"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="removeCharacterByIdResponse">
        <xsd:sequence>
            <xsd:element name="success" type="xs:boolean"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="getCharacterById">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="id" type="xs:int"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="getCharacterByIdResponse">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="character" type="tns:rpgCharacter"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="updateCharacter">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="character" type="tns:rpgCharacter"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="updateCharacterResponse">
        <xsd:sequence>
            <xsd:element name="success" type="xs:boolean"/>
        </xsd:sequence>
    </xsd:complexType>
</xsd:schema>
;
			 var xsdSchema0:Schema = new Schema(xsdXML0);
			schemas.push(xsdSchema0);
			targetNamespaces.push(new Namespace('','http://character.ws.rpg.beacon.com/'));
		}
	}
}