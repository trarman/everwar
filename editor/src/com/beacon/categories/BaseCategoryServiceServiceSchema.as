package com.beacon.categories
{
	 import mx.rpc.xml.Schema
	 public class BaseCategoryServiceServiceSchema
	{
		 public var schemas:Array = new Array();
		 public var targetNamespaces:Array = new Array();
		 public function BaseCategoryServiceServiceSchema():void
		{
			 var xsdXML0:XML = <xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://cxf.apache.org/bindings/xformat" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tns="http://category.ws.editor.rpg.beacon.com/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:xs="http://www.w3.org/2001/XMLSchema" attributeFormDefault="unqualified" elementFormDefault="unqualified" targetNamespace="http://category.ws.editor.rpg.beacon.com/">
    <xsd:element name="addCategory" type="tns:addCategory"/>
    <xsd:element name="addCategoryResponse" type="tns:addCategoryResponse"/>
    <xsd:element name="getCategories" type="tns:getCategories"/>
    <xsd:element name="getCategoriesResponse" type="tns:getCategoriesResponse"/>
    <xsd:complexType name="getCategories">
        <xsd:sequence/>
    </xsd:complexType>
    <xsd:complexType name="getCategoriesResponse">
        <xsd:sequence>
            <xsd:element maxOccurs="unbounded" minOccurs="0" name="categoryList" type="tns:category"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="category">
        <xsd:sequence>
            <xsd:element name="id" type="xs:int"/>
            <xsd:element minOccurs="0" name="name" type="xs:string"/>
            <xsd:element name="parentId" type="xs:int"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="addCategory">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="parentId" type="xs:int"/>
            <xsd:element minOccurs="0" name="name" type="xs:string"/>
        </xsd:sequence>
    </xsd:complexType>
    <xsd:complexType name="addCategoryResponse">
        <xsd:sequence>
            <xsd:element minOccurs="0" name="id" type="xs:int"/>
        </xsd:sequence>
    </xsd:complexType>
</xsd:schema>
;
			 var xsdSchema0:Schema = new Schema(xsdXML0);
			schemas.push(xsdSchema0);
			targetNamespaces.push(new Namespace('','http://category.ws.editor.rpg.beacon.com/'));
		}
	}
}