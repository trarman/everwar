package com.beacon.tiles
{
	 import mx.rpc.xml.Schema
	 public class BaseTileServiceServiceSchema
	{
		 public var schemas:Array = new Array();
		 public var targetNamespaces:Array = new Array();
		 public function BaseTileServiceServiceSchema():void
		{
			 var xsdXML0:XML = <xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://cxf.apache.org/bindings/xformat" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tns="http://tile.ws.editor.rpg.beacon.com/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:xs="http://www.w3.org/2001/XMLSchema" attributeFormDefault="unqualified" elementFormDefault="unqualified" targetNamespace="http://tile.ws.editor.rpg.beacon.com/">
    <xsd:element name="addTile" type="tns:addTile"/>
    <xsd:element name="addTileResponse" type="tns:addTileResponse"/>
    <xsd:element name="getTileById" type="tns:getTileById"/>
    <xsd:element name="getTileByIdResponse" type="tns:getTileByIdResponse"/>
    <xsd:element name="getTilesByCategoryId" type="tns:getTilesByCategoryId"/>
    <xsd:element name="getTilesByCategoryIdResponse" type="tns:getTilesByCategoryIdResponse"/>
    <xsd:element name="updateTileById" type="tns:updateTileById"/>
    <xsd:element name="updateTileByIdResponse" type="tns:updateTileByIdResponse"/>
    <xsd:complexType name="addTile">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="name" type="xs:string"/>
            <xsd:element minOccurs="0" name="categoryId" type="xs:int"/>
            <xsd:element minOccurs="0" name="imageData" type="xs:base64Binary"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="addTileResponse">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="id" type="xs:int"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="getTilesByCategoryId">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="categoryId" type="xs:int"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="getTilesByCategoryIdResponse">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="tileList" type="tns:tile"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="tile">
        <xsd:sequence>
            <xsd:element name="categoryId" type="xs:int"/>
            <xsd:element name="id" type="xs:int"/>
            <xsd:element minOccurs="0" name="imageData" type="xs:base64Binary"/>
            <xsd:element minOccurs="0" name="name" type="xs:string"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="getTileById">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="tileId" type="xs:int"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="getTileByIdResponse">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="tile" type="tns:tile"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="updateTileById">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="id" type="xs:int"/>
            <xsd:element minOccurs="0" name="name" type="xs:string"/>
            <xsd:element minOccurs="0" name="categoryId" type="xs:int"/>
            <xsd:element minOccurs="0" name="imageData" type="xs:base64Binary"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="updateTileByIdResponse">
        <xsd:sequence/>
    </xsd:complexType>
</xsd:schema>
;
			 var xsdSchema0:Schema = new Schema(xsdXML0);
			schemas.push(xsdSchema0);
			targetNamespaces.push(new Namespace('','http://tile.ws.editor.rpg.beacon.com/'));
		}
	}
}