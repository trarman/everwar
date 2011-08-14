package com.beacon.maps
{
	 import mx.rpc.xml.Schema
	 public class BaseZoneMapServiceServiceSchema
	{
		 public var schemas:Array = new Array();
		 public var targetNamespaces:Array = new Array();
		 public function BaseZoneMapServiceServiceSchema():void
		{
			 var xsdXML0:XML = <xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://cxf.apache.org/bindings/xformat" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tns="http://map.ws.editor.rpg.beacon.com/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:xs="http://www.w3.org/2001/XMLSchema" attributeFormDefault="unqualified" elementFormDefault="unqualified" targetNamespace="http://map.ws.editor.rpg.beacon.com/">
    <xsd:element name="addZoneMap" type="tns:addZoneMap"/>
    <xsd:element name="addZoneMapResponse" type="tns:addZoneMapResponse"/>
    <xsd:element name="getZoneMapById" type="tns:getZoneMapById"/>
    <xsd:element name="getZoneMapByIdResponse" type="tns:getZoneMapByIdResponse"/>
    <xsd:element name="getZones" type="tns:getZones"/>
    <xsd:element name="getZonesResponse" type="tns:getZonesResponse"/>
    <xsd:element name="updateZoneMapById" type="tns:updateZoneMapById"/>
    <xsd:element name="updateZoneMapByIdResponse" type="tns:updateZoneMapByIdResponse"/>
    <xsd:complexType name="getZoneMapById">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="id" type="xs:int"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="getZoneMapByIdResponse">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="zoneMap" type="tns:zoneMap"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="zoneMap">
        <xsd:sequence>
            <xsd:element name="height" type="xs:int"/>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="mapData" nillable="true" type="tns:zoneCell"/>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="mapObjects" nillable="true" type="tns:mapObject"/>
            <xsd:element minOccurs="0" name="music" type="xs:string"/>
            <xsd:element name="width" type="xs:int"/>
            <xsd:element name="zoneId" type="xs:int"/>
            <xsd:element minOccurs="0" name="zoneName" type="xs:string"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="zoneCell">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="interactiveLayerTileId" type="xs:int"/>
            <xsd:element minOccurs="0" name="surfaceLayerTileId" type="xs:int"/>
            <xsd:element minOccurs="0" name="upperLayerTileId" type="xs:int"/>
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
    <xsd:complexType name="getZones">
        <xsd:sequence/>
    </xsd:complexType>
    <xsd:complexType name="getZonesResponse">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="zoneList" type="tns:zoneMapListItem"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="zoneMapListItem">
        <xsd:sequence>
            <xsd:element name="id" type="xs:int"/>
            <xsd:element minOccurs="0" name="name" type="xs:string"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="addZoneMap">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="name" type="xs:string"/>
            <xsd:element minOccurs="0" name="width" type="xs:int"/>
            <xsd:element minOccurs="0" name="height" type="xs:int"/>
            <xsd:element minOccurs="0" name="music" type="xs:string"/>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="mapData" type="tns:zoneCell"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="addZoneMapResponse">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="id" type="xs:int"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="updateZoneMapById">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="id" type="xs:int"/>
            <xsd:element minOccurs="0" name="name" type="xs:string"/>
            <xsd:element minOccurs="0" name="width" type="xs:int"/>
            <xsd:element minOccurs="0" name="height" type="xs:int"/>
            <xsd:element minOccurs="0" name="music" type="xs:string"/>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="mapData" type="tns:zoneCell"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="updateZoneMapByIdResponse">
        <xsd:sequence>
            <xsd:element name="success" type="xs:boolean"/>
        </xsd:sequence>
    </xsd:complexType>
</xsd:schema>
;
			 var xsdSchema0:Schema = new Schema(xsdXML0);
			schemas.push(xsdSchema0);
			targetNamespaces.push(new Namespace('','http://map.ws.editor.rpg.beacon.com/'));
		}
	}
}