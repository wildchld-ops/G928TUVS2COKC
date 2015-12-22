.class final Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;
.super Ljava/lang/Object;
.source "StAXSchemaParser.java"


# static fields
.field private static final CHUNK_MASK:I = 0x3ff

.field private static final CHUNK_SIZE:I = 0x400


# instance fields
.field private final fAttributeQName:Lmf/org/apache/xerces/xni/QName;

.field private final fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

.field private final fCharBuffer:[C

.field private final fDeclaredPrefixes:Ljava/util/ArrayList;

.field private fDepth:I

.field private final fElementQName:Lmf/org/apache/xerces/xni/QName;

.field private final fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

.field private final fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

.field private fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

.field private final fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private final fTempString:Lmf/org/apache/xerces/xni/XMLString;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fCharBuffer:[C

    new-instance v0, Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/StAXLocationWrapper;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    new-instance v0, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    new-instance v0, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDeclaredPrefixes:Ljava/util/ArrayList;

    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDeclaredPrefixes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->setDeclaredPrefixes(Ljava/util/List;)V

    return-void
.end method

.method private addNamespaceDeclarations()V
    .locals 10

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDeclaredPrefixes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v6, v2}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object v1, v2

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v6}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v6, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v6, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v7, v7, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v8, v8, Lmf/org/apache/xerces/util/XMLStringBuffer;->offset:I

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v9, v9, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v6, v7, v8, v9}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v5

    :goto_1
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v7, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v6, v4, v1, v5, v7}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    sget-object v9, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object v6, v3

    :goto_2
    invoke-virtual {v7, v8, v9, v6}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    goto :goto_1

    :cond_2
    sget-object v6, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_2
.end method

.method private fillDeclaredPrefixes(Ljava/util/Iterator;)V
    .locals 3

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDeclaredPrefixes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/Namespace;

    invoke-interface {v0}, Lmf/javax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDeclaredPrefixes:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method private fillDeclaredPrefixes(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDeclaredPrefixes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, v0}, Lmf/javax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDeclaredPrefixes:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v2, ""

    goto :goto_1
.end method

.method private fillDeclaredPrefixes(Lmf/javax/xml/stream/events/EndElement;)V
    .locals 1

    invoke-interface {p1}, Lmf/javax/xml/stream/events/EndElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillDeclaredPrefixes(Ljava/util/Iterator;)V

    return-void
.end method

.method private fillDeclaredPrefixes(Lmf/javax/xml/stream/events/StartElement;)V
    .locals 1

    invoke-interface {p1}, Lmf/javax/xml/stream/events/StartElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillDeclaredPrefixes(Ljava/util/Iterator;)V

    return-void
.end method

.method private fillProcessingInstruction(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fCharBuffer:[C

    array-length v2, v0

    if-ge v2, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v2, v0, v3, v1}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    return-void

    :cond_0
    invoke-virtual {p1, v3, v1, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0
.end method

.method private fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/javax/xml/namespace/QName;)V
    .locals 3

    invoke-virtual {p2}, Lmf/javax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lmf/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lmf/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private fillXMLAttributes(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 7

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p1, v0}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v0}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v0}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributeType(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    if-eqz v2, :cond_1

    :goto_1
    invoke-interface {p1, v0}, Lmf/javax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {p1, v0}, Lmf/javax/xml/stream/XMLStreamReader;->isAttributeSpecified(I)Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    goto :goto_1
.end method

.method private fillXMLAttributes(Lmf/javax/xml/stream/events/StartElement;)V
    .locals 7

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    invoke-interface {p1}, Lmf/javax/xml/stream/events/StartElement;->getAttributes()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/javax/xml/stream/events/Attribute;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {v0}, Lmf/javax/xml/stream/events/Attribute;->getName()Lmf/javax/xml/namespace/QName;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/javax/xml/namespace/QName;)V

    invoke-interface {v0}, Lmf/javax/xml/stream/events/Attribute;->getDTDType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    if-eqz v3, :cond_1

    :goto_1
    invoke-interface {v0}, Lmf/javax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v6}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-interface {v0}, Lmf/javax/xml/stream/events/Attribute;->isSpecified()Z

    move-result v5

    invoke-virtual {v4, v2, v5}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    goto :goto_0

    :cond_1
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    goto :goto_1
.end method

.method private sendCharactersToSchemaParser(Ljava/lang/String;Z)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    and-int/lit16 v3, v2, 0x3ff

    if-lez v3, :cond_0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fCharBuffer:[C

    invoke-virtual {p1, v7, v3, v4, v7}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fCharBuffer:[C

    invoke-virtual {v4, v5, v7, v3}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    if-eqz p2, :cond_2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v4, v5, v8}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    :goto_0
    move v0, v3

    move v1, v0

    :goto_1
    if-lt v1, v2, :cond_3

    :cond_1
    return-void

    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v4, v5, v8}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    :cond_3
    add-int/lit16 v0, v1, 0x400

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fCharBuffer:[C

    invoke-virtual {p1, v1, v0, v4, v7}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fCharBuffer:[C

    const/16 v6, 0x400

    invoke-virtual {v4, v5, v7, v6}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    if-eqz p2, :cond_4

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v4, v5, v8}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    move v1, v0

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v4, v5, v8}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method final fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, p2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-eqz p3, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, p3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_1
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, p4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :goto_2
    move-object v0, p3

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq p4, v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, p4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, p3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v2, v2, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v3, v3, Lmf/org/apache/xerces/util/XMLStringBuffer;->offset:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v4, v4, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v1, v2, v3, v4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, p4, p3, v0, p2}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    sget-object p3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object p4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_2
.end method

.method public getDocument()Lmf/org/w3c/dom/Document;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->getDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lmf/javax/xml/stream/XMLEventReader;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLEventReader;->peek()Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v2

    const/4 v5, 0x7

    if-eq v2, v5, :cond_0

    if-eq v2, v10, :cond_0

    new-instance v5, Lmf/javax/xml/stream/XMLStreamException;

    invoke-direct {v5}, Lmf/javax/xml/stream/XMLStreamException;-><init>()V

    throw v5

    :cond_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v5, v6, v8, v7, v8}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    :goto_0
    :pswitch_0
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    :goto_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->setNamespaceContext(Lmf/javax/xml/namespace/NamespaceContext;)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_2
    return-void

    :cond_3
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLEventReader;->nextEvent()Lmf/javax/xml/stream/events/XMLEvent;

    move-result-object v0

    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->asStartElement()Lmf/javax/xml/stream/events/StartElement;

    move-result-object v4

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {v4}, Lmf/javax/xml/stream/events/StartElement;->getName()Lmf/javax/xml/namespace/QName;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/javax/xml/namespace/QName;)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-interface {v4}, Lmf/javax/xml/stream/events/StartElement;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-interface {v4}, Lmf/javax/xml/stream/events/StartElement;->getNamespaceContext()Lmf/javax/xml/namespace/NamespaceContext;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->setNamespaceContext(Lmf/javax/xml/namespace/NamespaceContext;)V

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillXMLAttributes(Lmf/javax/xml/stream/events/StartElement;)V

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillDeclaredPrefixes(Lmf/javax/xml/stream/events/StartElement;)V

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->addNamespaceDeclarations()V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v5}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->pushContext()V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v5, v6, v7, v8}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    :pswitch_3
    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->asEndElement()Lmf/javax/xml/stream/events/EndElement;

    move-result-object v1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {v1}, Lmf/javax/xml/stream/events/EndElement;->getName()Lmf/javax/xml/namespace/QName;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillQName(Lmf/org/apache/xerces/xni/QName;Lmf/javax/xml/namespace/QName;)V

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillDeclaredPrefixes(Lmf/javax/xml/stream/events/EndElement;)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-interface {v1}, Lmf/javax/xml/stream/events/EndElement;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v5, v6, v8}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v5}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->popContext()V

    iget v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    iget v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    if-gtz v5, :cond_1

    goto/16 :goto_1

    :pswitch_4
    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->asCharacters()Lmf/javax/xml/stream/events/Characters;

    move-result-object v5

    invoke-interface {v5}, Lmf/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v9}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->sendCharactersToSchemaParser(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_5
    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->asCharacters()Lmf/javax/xml/stream/events/Characters;

    move-result-object v5

    invoke-interface {v5}, Lmf/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v10}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->sendCharactersToSchemaParser(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    invoke-interface {v0}, Lmf/javax/xml/stream/events/XMLEvent;->asCharacters()Lmf/javax/xml/stream/events/Characters;

    move-result-object v5

    invoke-interface {v5}, Lmf/javax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v9}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->sendCharactersToSchemaParser(Ljava/lang/String;Z)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    :pswitch_7
    move-object v3, v0

    check-cast v3, Lmf/javax/xml/stream/events/ProcessingInstruction;

    invoke-interface {v3}, Lmf/javax/xml/stream/events/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillProcessingInstruction(Ljava/lang/String;)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-interface {v3}, Lmf/javax/xml/stream/events/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v5, v6, v7, v8}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    :pswitch_8
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public parse(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    new-instance v2, Lmf/javax/xml/stream/XMLStreamException;

    invoke-direct {v2}, Lmf/javax/xml/stream/XMLStreamException;-><init>()V

    throw v2

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v2, v3, v6, v4, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    const/4 v1, 0x1

    :cond_1
    :goto_0
    :pswitch_0
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-virtual {v2, v6}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v2, v6}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->setNamespaceContext(Lmf/javax/xml/namespace/NamespaceContext;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v2, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_2
    return-void

    :cond_3
    if-nez v1, :cond_4

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->next()I

    move-result v0

    :goto_2
    packed-switch v0, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getNamespaceContext()Lmf/javax/xml/namespace/NamespaceContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->setNamespaceContext(Lmf/javax/xml/namespace/NamespaceContext;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillXMLAttributes(Lmf/javax/xml/stream/XMLStreamReader;)V

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillDeclaredPrefixes(Lmf/javax/xml/stream/XMLStreamReader;)V

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->addNamespaceDeclarations()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->pushContext()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fAttributes:Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v2, v3, v4, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :pswitch_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fLocationWrapper:Lmf/org/apache/xerces/util/StAXLocationWrapper;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->setLocation(Lmf/javax/xml/stream/Location;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getNamespaceContext()Lmf/javax/xml/namespace/NamespaceContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->setNamespaceContext(Lmf/javax/xml/namespace/NamespaceContext;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillQName(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillDeclaredPrefixes(Lmf/javax/xml/stream/XMLStreamReader;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fElementQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v2, v3, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->popContext()V

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    if-gtz v2, :cond_1

    goto/16 :goto_1

    :pswitch_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v3

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v4

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v2, v3, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v3

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v4

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v2, v3, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v2, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v3

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v4

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v2, v3, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {v2, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fillProcessingInstruction(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    invoke-interface {p1}, Lmf/javax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v2, v3, v4, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    :pswitch_8
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fDepth:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public reset(Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 2

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSchemaDOMParser:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->setSymbolTable(Lmf/org/apache/xerces/util/SymbolTable;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/StAXSchemaParser;->fNamespaceContext:Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/JAXPNamespaceContextWrapper;->reset()V

    return-void
.end method
