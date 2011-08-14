package net.homeip
{
	 import mx.rpc.xml.Schema
	 public class BaseExitServiceServiceSchema
	{
		 public var schemas:Array = new Array();
		 public var targetNamespaces:Array = new Array();
		 public function BaseExitServiceServiceSchema():void
		{
			 var xsdXML0:XML = <xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://cxf.apache.org/bindings/xformat" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tns="http://exit.ws.rpg.beacon.com/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:xs="http://www.w3.org/2001/XMLSchema" attributeFormDefault="unqualified" elementFormDefault="unqualified" targetNamespace="http://exit.ws.rpg.beacon.com/">
    <xsd:element name="addExit" type="tns:addExit"/>
    <xsd:element name="addExitResponse" type="tns:addExitResponse"/>
    <xsd:element name="getExitById" type="tns:getExitById"/>
    <xsd:element name="getExitByIdResponse" type="tns:getExitByIdResponse"/>
    <xsd:element name="removeExitById" type="tns:removeExitById"/>
    <xsd:element name="removeExitByIdResponse" type="tns:removeExitByIdResponse"/>
    <xsd:element name="updateExit" type="tns:updateExit"/>
    <xsd:element name="updateExitResponse" type="tns:updateExitResponse"/>
    <xsd:complexType name="removeExitById">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="id" type="xs:int"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="removeExitByIdResponse">
        <xsd:sequence>
            <xsd:element name="success" type="xs:boolean"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="updateExit">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="exit" type="tns:exit"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="exit">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="id" type="xs:int"/>
            <xsd:element minOccurs="0" name="requiredObjectId" type="xs:int"/>
            <xsd:element minOccurs="0" name="targetId" type="xs:int"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="updateExitResponse">
        <xsd:sequence>
            <xsd:element name="success" type="xs:boolean"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="getExitById">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="id" type="xs:int"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="getExitByIdResponse">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="exit" type="tns:exit"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="addExit">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="exit" type="tns:exit"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="addExitResponse">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="id" type="xs:int"/>
        </xsd:sequence>
    </xsd:complexType>
</xsd:schema>
;
			 var xsdSchema0:Schema = new Schema(xsdXML0);
			schemas.push(xsdSchema0);
			targetNamespaces.push(new Namespace('','http://exit.ws.rpg.beacon.com/'));
		}
	}
}