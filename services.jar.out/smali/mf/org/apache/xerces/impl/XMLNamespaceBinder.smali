.class public Lmf/org/apache/xerces/impl/XMLNamespaceBinder;
.super Ljava/lang/Object;
.source "XMLNamespaceBinder.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;
.implements Lmf/org/apache/xerces/xni/parser/XMLDocumentFilter;


# static fields
.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"


# instance fields
.field private final fAttributeQName:Lmf/org/apache/xerces/xni/QName;

.field protected fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

.field protected fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field private fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

.field protected fNamespaces:Z

.field protected fOnlyPassPrefixMappingEvents:Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v1, "http://xml.org/sax/features/namespaces"

    aput-object v1, v0, v3

    sput-object v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Boolean;

    sput-object v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v1, v0, v3

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v1, v0, v2

    sput-object v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/Object;

    sput-object v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    return-void
.end method


# virtual methods
.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaces:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2, p3, v1}, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;Z)V

    invoke-virtual {p0, p1, p3, v1}, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaces:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-object v0
.end method

.method public getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    return-object v0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object v1, v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getOnlyPassPrefixMappingEvents()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    return v0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v1, :cond_0

    iput-object v0, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v1, :cond_1

    if-nez p3, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    return-void

    :cond_2
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_0
.end method

.method protected handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;Z)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lmf/org/apache/xerces/xni/NamespaceContext;->pushContext()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object/from16 v17, v0

    sget-object v18, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v17, v0

    const-string/jumbo v18, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v19, "ElementXMLNSPrefix"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-virtual/range {v17 .. v21}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_0
    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v13

    const/4 v11, 0x0

    :goto_0
    if-lt v11, v13, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    move-object/from16 v0, p1

    iget-object v15, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v17, v0

    const-string/jumbo v18, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v19, "ElementPrefixUnbound"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-virtual/range {v17 .. v21}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_2
    const/4 v11, 0x0

    :goto_2
    if-lt v11, v13, :cond_f

    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v7

    const/4 v11, 0x0

    :goto_3
    add-int/lit8 v17, v7, -0x1

    move/from16 v0, v17

    if-lt v11, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    if-eqz p4, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_3
    :goto_4
    return-void

    :cond_4
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lmf/org/apache/xerces/xni/XMLAttributes;->getPrefix(I)Ljava/lang/String;

    move-result-object v15

    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v17

    if-eq v15, v0, :cond_5

    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v15, v0, :cond_9

    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v14, v0, :cond_9

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v15, v0, :cond_6

    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v14, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v17, v0

    const-string/jumbo v18, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v19, "CantBindXMLNS"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-virtual/range {v17 .. v21}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_6
    sget-object v17, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v17, v0

    const-string/jumbo v18, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v19, "CantBindXMLNS"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-virtual/range {v17 .. v21}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_7
    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v14, v0, :cond_a

    sget-object v17, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v17, v0

    const-string/jumbo v18, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v19, "CantBindXML"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-virtual/range {v17 .. v21}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_8
    :goto_5
    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v17

    if-eq v14, v0, :cond_b

    move-object v15, v14

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->prefixBoundToNullURI(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v17, v0

    const-string/jumbo v18, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v19, "EmptyPrefixedAttName"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-virtual/range {v17 .. v21}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_9
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_a
    sget-object v17, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v17, v0

    const-string/jumbo v18, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v19, "CantBindXML"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-virtual/range {v17 .. v21}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_5

    :cond_b
    sget-object v15, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_6

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    if-eqz v18, :cond_d

    :goto_8
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_7

    :cond_d
    const/16 v16, 0x0

    goto :goto_8

    :cond_e
    sget-object v15, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v11, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v5, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v6, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v6, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v18, v0

    sget-object v19, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface/range {v18 .. v19}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v11, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->setName(ILmf/org/apache/xerces/xni/QName;)V

    :cond_10
    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    :cond_11
    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_9

    :cond_12
    sget-object v17, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v17

    if-eq v5, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v17, v0

    const-string/jumbo v18, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v19, "AttributePrefixUnbound"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v6, v20, v21

    const/16 v21, 0x2

    aput-object v5, v20, v21

    const/16 v21, 0x2

    invoke-virtual/range {v17 .. v21}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v11, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->setName(ILmf/org/apache/xerces/xni/QName;)V

    goto :goto_a

    :cond_14
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lmf/org/apache/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_15

    sget-object v17, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v8, v0, :cond_16

    :cond_15
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    :cond_16
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v12, v11, 0x1

    :goto_b
    if-ge v12, v7, :cond_15

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lmf/org/apache/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v10

    if-ne v4, v9, :cond_17

    if-ne v8, v10, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v17, v0

    const-string/jumbo v18, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    const-string v19, "AttributeNSNotUnique"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object v4, v20, v21

    const/16 v21, 0x2

    aput-object v8, v20, v21

    const/16 v21, 0x2

    invoke-virtual/range {v17 .. v21}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_17
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_4
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method protected prefixBoundToNullURI(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne p1, v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    const-string/jumbo v1, "http://xml.org/sax/features/namespaces"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaces:Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaces:Z

    goto :goto_0
.end method

.method public setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-void
.end method

.method public setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    return-void
.end method

.method public setOnlyPassPrefixMappingEvents(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string/jumbo v1, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string/jumbo v2, "http://apache.org/xml/properties/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    const-string/jumbo v1, "internal/symbol-table"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string/jumbo v1, "internal/symbol-table"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p2, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "internal/error-reporter"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string/jumbo v1, "internal/error-reporter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p2, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    goto :goto_0
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iput-object p3, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fNamespaces:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fOnlyPassPrefixMappingEvents:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLNamespaceBinder;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method
