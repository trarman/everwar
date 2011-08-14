package net.homeip
{
	 import mx.rpc.xml.Schema
	 public class BaseMapObjectServiceServiceSchema
	{
		 public var schemas:Array = new Array();
		 public var targetNamespaces:Array = new Array();
		 public function BaseMapObjectServiceServiceSchema():void
		{
			 var xsdXML0:XML = <xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://cxf.apache.org/bindings/xformat" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tns="http://mapObject.ws.rpg.beacon.com/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:xs="http://www.w3.org/2001/XMLSchema" attributeFormDefault="unqualified" elementFormDefault="unqualified" targetNamespace="http://mapObject.ws.rpg.beacon.com/">
    <xsd:element name="addMapObject" type="tns:addMapObject"/>
    <xsd:element name="addMapObjectResponse" type="tns:addMapObjectResponse"/>
    <xsd:element name="getMapObjectsForZoneId" type="tns:getMapObjectsForZoneId"/>
    <xsd:element name="getMapObjectsForZoneIdResponse" type="tns:getMapObjectsForZoneIdResponse"/>
    <xsd:element name="removeMapObjectById" type="tns:removeMapObjectById"/>
    <xsd:element name="removeMapObjectByIdResponse" type="tns:removeMapObjectByIdResponse"/>
    <xsd:element name="updateMapObject" type="tns:updateMapObject"/>
    <xsd:element name="updateMapObjectResponse" type="tns:updateMapObjectResponse"/>
    <xsd:complexType name="getMapObjectsForZoneId">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="zoneId" type="xs:int"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="getMapObjectsForZoneIdResponse">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="mapObjectList" type="tns:mapObject"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="mapObject">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="id" type="xs:int"/>
            <xsd:element minOccurs="0" name="referenceId" type="xs:int"/>
            <xsd:element minOccurs="0" name="tileId" type="xs:int"/>
            <xsd:element minOccurs="0" name="type" type="xs:int"/>
            <xsd:element minOccurs="0" name="x" type="xs:int"/>
            <xsd:element minOccurs="0" name="y" type="xs:int"/>
            <xsd:element minOccurs="0" name="zoneId" type="xs:int"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="updateMapObject">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="mapObject" type="tns:mapObject"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="updateMapObjectResponse">
        <xsd:sequence>
            <xsd:element name="success" type="xs:boolean"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="removeMapObjectById">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="mapObjectId" type="xs:int"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="removeMapObjectByIdResponse">
        <xsd:sequence>
            <xsd:element name="success" type="xs:boolean"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="addMapObject">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="mapObject" type="tns:mapObject"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="addMapObjectResponse">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="mapObjectId" type="xs:int"/>
        </xsd:sequence>
    </xsd:complexType>
</xsd:schema>
;
			 var xsdSchema0:Schema = new Schema(xsdXML0);
			schemas.push(xsdSchema0);
			targetNamespaces.push(new Namespace('','http://mapObject.ws.rpg.beacon.com/'));
		}
	}
}