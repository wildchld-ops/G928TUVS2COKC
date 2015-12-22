.class public Lmf/org/apache/xerces/parsers/DOMParserImpl;
.super Lmf/org/apache/xerces/parsers/AbstractDOMParser;
.source "DOMParserImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/ls/LSParser;
.implements Lmf/org/w3c/dom/DOMConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;,
        Lmf/org/apache/xerces/parsers/DOMParserImpl$NullLSParserFilter;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field protected static final DISALLOW_DOCTYPE_DECL_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field protected static final DYNAMIC_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final PSVI_AUGMENT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field protected static final VALIDATION_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final XMLSCHEMA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field protected static final XMLSCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"


# instance fields
.field private abortHandler:Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

.field private abortNow:Z

.field private currentThread:Ljava/lang/Thread;

.field protected fBusy:Z

.field protected fNamespaceDeclarations:Z

.field private fNullFilterInUse:Z

.field private fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

.field private fSchemaLocation:Ljava/lang/String;

.field protected fSchemaType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "mf.org.apache.xerces.xni.parser.XMLParserConfiguration"

    invoke-static {v0, p1}, Lmf/org/apache/xerces/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    if-eqz p2, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    sget-object v2, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    sget-object v2, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 2

    const-string/jumbo v0, "mf.org.apache.xerces.xni.parser.XMLParserConfiguration"

    const-string/jumbo v1, "mf.org.apache.xerces.parsers.XIncludeAwareParserConfiguration"

    invoke-static {v0, v1}, Lmf/org/apache/xerces/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v0, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 2

    const-string/jumbo v0, "mf.org.apache.xerces.xni.parser.XMLParserConfiguration"

    const-string/jumbo v1, "mf.org.apache.xerces.parsers.XIncludeAwareParserConfiguration"

    invoke-static {v0, v1}, Lmf/org/apache/xerces/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v0, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    iput-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNamespaceDeclarations:Z

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaLocation:Ljava/lang/String;

    iput-boolean v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNullFilterInUse:Z

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortHandler:Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    const/16 v1, 0xa

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "canonical-form"

    aput-object v1, v0, v3

    const-string v1, "cdata-sections"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "charset-overrides-xml-encoding"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "infoset"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "namespace-declarations"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "split-cdata-sections"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "supported-media-types-only"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "certified"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "well-formed"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "ignore-unknown-character-denormalizations"

    aput-object v2, v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/features/dom/defer-node-expansion"

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "namespace-declarations"

    invoke-interface {v1, v2, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "well-formed"

    invoke-interface {v1, v2, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/features/include-comments"

    invoke-interface {v1, v2, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {v1, v2, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://xml.org/sax/features/namespaces"

    invoke-interface {v1, v2, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "canonical-form"

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "charset-overrides-xml-encoding"

    invoke-interface {v1, v2, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "split-cdata-sections"

    invoke-interface {v1, v2, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "supported-media-types-only"

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "ignore-unknown-character-denormalizations"

    invoke-interface {v1, v2, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string v2, "certified"

    invoke-interface {v1, v2, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v2, "http://apache.org/xml/features/validation/schema/normalized-value"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static newFeatureNotFoundError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;
    .locals 5

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "FEATURE_NOT_FOUND"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-object v1
.end method

.method private static newFeatureNotSupportedError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;
    .locals 5

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "FEATURE_NOT_SUPPORTED"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-object v1
.end method

.method private static newInvalidStateError()Lmf/org/w3c/dom/DOMException;
    .locals 4

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "INVALID_STATE_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0xb

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method private static newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;
    .locals 5

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "TYPE_MISMATCH_ERR"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x11

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-object v1
.end method

.method private restoreHandlers()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortHandler:Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    if-nez v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;-><init>(Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;)V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortHandler:Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortHandler:Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortHandler:Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortHandler:Lmf/org/apache/xerces/parsers/DOMParserImpl$AbortHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    sget-object v0, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    return-void
.end method

.method public canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    instance-of v5, p2, Ljava/lang/Boolean;

    if-eqz v5, :cond_a

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string/jumbo v5, "supported-media-types-only"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "normalize-characters"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "check-character-normalization"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "canonical-form"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    if-eqz v2, :cond_3

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    :cond_4
    const-string/jumbo v5, "well-formed"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "ignore-unknown-character-denormalizations"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    if-nez v2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_6
    const-string v5, "cdata-sections"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "charset-overrides-xml-encoding"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "comments"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "datatype-normalization"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "disallow-doctype"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "entities"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "infoset"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "namespaces"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "namespace-declarations"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "validate"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "validate-if-schema"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "element-content-whitespace"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "xml-declaration"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    :try_start_0
    const-string/jumbo v5, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v1, "http://apache.org/xml/features/honour-all-schemaLocations"

    :goto_2
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v5, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v4, v3

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v5, "http://apache.org/xml/features/namespace-growth"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string/jumbo v1, "http://apache.org/xml/features/namespace-growth"

    goto :goto_2

    :cond_8
    const-string/jumbo v5, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string/jumbo v1, "http://apache.org/xml/features/internal/tolerate-duplicates"

    goto :goto_2

    :cond_9
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_2

    :cond_a
    const-string v5, "error-handler"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    instance-of v5, p2, Lmf/org/w3c/dom/DOMErrorHandler;

    if-nez v5, :cond_0

    if-eqz p2, :cond_0

    move v4, v3

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v5, "resource-resolver"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    instance-of v5, p2, Lmf/org/w3c/dom/ls/LSResourceResolver;

    if-nez v5, :cond_0

    if-eqz p2, :cond_0

    move v4, v3

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v5, "schema-type"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    instance-of v5, p2, Ljava/lang/String;

    if-eqz v5, :cond_d

    sget-object v5, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_d
    if-eqz p2, :cond_0

    move v4, v3

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v5, "schema-location"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    instance-of v5, p2, Ljava/lang/String;

    if-nez v5, :cond_0

    if-eqz p2, :cond_0

    move v4, v3

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v5, "http://apache.org/xml/properties/dom/document-class-name"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    :try_start_1
    iget-object v5, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move v4, v3

    goto/16 :goto_0
.end method

.method dom2xmlInputSource(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 7

    const/4 v0, 0x0

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getCharacterStream()Ljava/io/Reader;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getCharacterStream()Ljava/io/Reader;

    move-result-object v4

    const-string v5, "UTF-16"

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getByteStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/StringReader;

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-string v5, "UTF-16"

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_4

    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    :cond_4
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lmf/org/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz v1, :cond_6

    new-instance v6, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v6}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    const-string/jumbo v1, "no-input-specified"

    iput-object v1, v6, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    const-string/jumbo v1, "no-input-specified"

    iput-object v1, v6, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    const/4 v1, 0x3

    iput-short v1, v6, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object v1

    invoke-interface {v1, v6}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    :cond_6
    new-instance v1, Lmf/org/w3c/dom/ls/LSException;

    const/16 v2, 0x51

    const-string/jumbo v3, "no-input-specified"

    invoke-direct {v1, v2, v3}, Lmf/org/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public getAsync()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBusy()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    return v0
.end method

.method public getDomConfig()Lmf/org/w3c/dom/DOMConfiguration;
    .locals 0

    return-object p0
.end method

.method public getFilter()Lmf/org/w3c/dom/ls/LSParserFilter;
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNullFilterInUse:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v3, 0x0

    const-string v4, "comments"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://apache.org/xml/features/include-comments"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    const-string v4, "datatype-normalization"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_4
    const-string v4, "entities"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_5
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_6
    const-string/jumbo v4, "namespaces"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://xml.org/sax/features/namespaces"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_7
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_8
    const-string/jumbo v4, "validate"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://xml.org/sax/features/validation"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_9
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_a
    const-string/jumbo v4, "validate-if-schema"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_b
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_c
    const-string v4, "element-content-whitespace"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_d
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_e
    const-string v4, "disallow-doctype"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://apache.org/xml/features/disallow-doctype-decl"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_f
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v4, "infoset"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://xml.org/sax/features/namespaces"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "namespace-declarations"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://apache.org/xml/features/include-comments"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_12

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x0

    goto :goto_1

    :cond_12
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_13
    const-string v4, "cdata-sections"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_14
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_15
    const-string v4, "check-character-normalization"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    const-string/jumbo v4, "normalize-characters"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    :cond_16
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v4, "namespace-declarations"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    const-string/jumbo v4, "well-formed"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    const-string/jumbo v4, "ignore-unknown-character-denormalizations"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    const-string v4, "canonical-form"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    const-string/jumbo v4, "supported-media-types-only"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    const-string/jumbo v4, "split-cdata-sections"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    const-string v4, "charset-overrides-xml-encoding"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    :cond_18
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_19
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_1a
    const-string v4, "error-handler"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz v4, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v3}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object v3

    goto/16 :goto_0

    :cond_1b
    const-string/jumbo v4, "resource-resolver"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    :try_start_0
    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {v4, v5}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    if-eqz v0, :cond_0

    instance-of v4, v0, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    if-eqz v4, :cond_0

    check-cast v0, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;->getEntityResolver()Lmf/org/w3c/dom/ls/LSResourceResolver;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    goto/16 :goto_0

    :cond_1c
    const-string/jumbo v3, "schema-type"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    :cond_1d
    const-string/jumbo v3, "schema-location"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaLocation:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1e
    const-string/jumbo v3, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    :cond_1f
    const-string/jumbo v3, "http://apache.org/xml/properties/dom/document-class-name"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://apache.org/xml/properties/dom/document-class-name"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_0

    :cond_20
    const-string/jumbo v3, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    const-string/jumbo v2, "http://apache.org/xml/features/honour-all-schemaLocations"

    :goto_2
    :try_start_1
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_21
    const-string/jumbo v3, "http://apache.org/xml/features/namespace-growth"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    const-string/jumbo v2, "http://apache.org/xml/features/namespace-growth"

    goto :goto_2

    :cond_22
    const-string/jumbo v3, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    const-string/jumbo v2, "http://apache.org/xml/features/internal/tolerate-duplicates"

    goto :goto_2

    :cond_23
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_24
    :try_start_2
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    :try_start_3
    iget-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v3, v2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v3

    goto/16 :goto_0

    :catch_1
    move-exception v3

    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newFeatureNotFoundError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v3

    throw v3

    :catch_2
    move-exception v4

    goto/16 :goto_0
.end method

.method public getParameterNames()Lmf/org/w3c/dom/DOMStringList;
    .locals 2

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    if-nez v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "namespaces"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "cdata-sections"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "canonical-form"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "namespace-declarations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "split-cdata-sections"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "entities"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "validate-if-schema"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "validate"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "datatype-normalization"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "charset-overrides-xml-encoding"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "check-character-normalization"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "supported-media-types-only"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "ignore-unknown-character-denormalizations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "normalize-characters"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "well-formed"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "infoset"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "disallow-doctype"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "element-content-whitespace"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "comments"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "error-handler"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "resource-resolver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "schema-location"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "schema-type"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lmf/org/apache/xerces/dom/DOMStringListImpl;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/dom/DOMStringListImpl;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    return-object v1
.end method

.method public parse(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/w3c/dom/Document;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ls/LSException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->dom2xmlInputSource(Lmf/org/w3c/dom/ls/LSInput;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v3

    iget-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    if-eqz v4, :cond_0

    invoke-static {}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newInvalidStateError()Lmf/org/w3c/dom/DOMException;

    move-result-object v4

    throw v4

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    iget-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    iput-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->getDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->dropDocumentReferences()V

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iput-boolean v5, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    iget-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    :cond_2
    iget-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    if-eqz v4, :cond_3

    iput-boolean v5, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    invoke-direct {p0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->restoreHandlers()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    sget-object v4, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    if-eq v1, v4, :cond_1

    instance-of v4, v1, Lmf/org/apache/xerces/xni/parser/XMLParseException;

    if-nez v4, :cond_4

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz v4, :cond_4

    new-instance v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v2}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object v1, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    const/4 v4, 0x3

    iput-short v4, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object v4

    invoke-interface {v4, v2}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    :cond_4
    const/16 v4, 0x51

    invoke-static {v4, v1}, Lmf/org/apache/xerces/util/DOMUtil;->createLSException(SLjava/lang/Throwable;)Lmf/org/w3c/dom/ls/LSException;

    move-result-object v4

    invoke-virtual {v4}, Lmf/org/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Lmf/org/w3c/dom/ls/LSException;

    throw v4
.end method

.method public parseURI(Ljava/lang/String;)Lmf/org/w3c/dom/Document;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ls/LSException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v5, 0x0

    iget-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    if-eqz v4, :cond_0

    invoke-static {}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newInvalidStateError()Lmf/org/w3c/dom/DOMException;

    move-result-object v4

    throw v4

    :cond_0
    new-instance v3, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-direct {v3, v0, p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    iget-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    iput-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->getDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->dropDocumentReferences()V

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    iput-boolean v5, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    iget-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    :cond_2
    iget-boolean v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    if-eqz v4, :cond_3

    iput-boolean v5, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->abortNow:Z

    invoke-direct {p0}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->restoreHandlers()V

    goto :goto_0

    :cond_3
    sget-object v4, Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lmf/org/apache/xerces/parsers/AbstractDOMParser$Abort;

    if-eq v1, v4, :cond_1

    instance-of v4, v1, Lmf/org/apache/xerces/xni/parser/XMLParseException;

    if-nez v4, :cond_4

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz v4, :cond_4

    new-instance v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v2}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object v1, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    const/4 v4, 0x3

    iput-short v4, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    iget-object v4, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lmf/org/w3c/dom/DOMErrorHandler;

    move-result-object v4

    invoke-interface {v4, v2}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    :cond_4
    const/16 v4, 0x51

    invoke-static {v4, v1}, Lmf/org/apache/xerces/util/DOMUtil;->createLSException(SLjava/lang/Throwable;)Lmf/org/w3c/dom/ls/LSException;

    move-result-object v4

    invoke-virtual {v4}, Lmf/org/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Lmf/org/w3c/dom/ls/LSException;

    throw v4
.end method

.method public parseWithContext(Lmf/org/w3c/dom/ls/LSInput;Lmf/org/w3c/dom/Node;S)Lmf/org/w3c/dom/Node;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;,
            Lmf/org/w3c/dom/ls/LSException;
        }
    .end annotation

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "Not supported"

    invoke-direct {v0, v1, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->reset()V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "namespace-declarations"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNamespaceDeclarations:Z

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNullFilterInUse:Z

    if-eqz v0, :cond_0

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNullFilterInUse:Z

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSkippedElemStack:Ljava/util/Stack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSkippedElemStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    :cond_1
    iput v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fRejectedElementDepth:I

    iput-boolean v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fFilterReject:Z

    iput-object v3, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    return-void
.end method

.method public setFilter(Lmf/org/w3c/dom/ls/LSParserFilter;)V
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fBusy:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNullFilterInUse:Z

    sget-object v0, Lmf/org/apache/xerces/parsers/DOMParserImpl$NullLSParserFilter;->INSTANCE:Lmf/org/apache/xerces/parsers/DOMParserImpl$NullLSParserFilter;

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSkippedElemStack:Ljava/util/Stack;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSkippedElemStack:Ljava/util/Stack;

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fDOMFilter:Lmf/org/w3c/dom/ls/LSParserFilter;

    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    instance-of v6, p2, Ljava/lang/Boolean;

    if-eqz v6, :cond_15

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :try_start_0
    const-string v6, "comments"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/features/include-comments"

    invoke-interface {v6, v7, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "datatype-normalization"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-interface {v6, v7, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newFeatureNotFoundError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v6

    throw v6

    :cond_2
    :try_start_1
    const-string v6, "entities"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-interface {v6, v7, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const-string v6, "disallow-doctype"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/features/disallow-doctype-decl"

    invoke-interface {v6, v7, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    const-string/jumbo v6, "supported-media-types-only"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string/jumbo v6, "normalize-characters"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "check-character-normalization"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "canonical-form"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    if-eqz v4, :cond_0

    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newFeatureNotSupportedError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v6

    throw v6

    :cond_6
    const-string/jumbo v6, "namespaces"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://xml.org/sax/features/namespaces"

    invoke-interface {v6, v7, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_7
    const-string/jumbo v6, "infoset"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v4, :cond_0

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://xml.org/sax/features/namespaces"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "namespace-declarations"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/features/include-comments"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/features/validation/dynamic"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/features/validation/schema/normalized-value"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/features/create-cdata-nodes"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_8
    const-string v6, "cdata-sections"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-interface {v6, v7, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v6, "namespace-declarations"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "namespace-declarations"

    invoke-interface {v6, v7, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v6, "well-formed"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string/jumbo v6, "ignore-unknown-character-denormalizations"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_b
    if-nez v4, :cond_0

    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newFeatureNotSupportedError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v6

    throw v6

    :cond_c
    const-string/jumbo v6, "validate"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://xml.org/sax/features/validation"

    invoke-interface {v6, v7, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    sget-object v7, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    if-eq v6, v7, :cond_d

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/features/validation/schema"

    invoke-interface {v6, v7, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-interface {v6, v7, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    :cond_d
    if-eqz v4, :cond_0

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/features/validation/dynamic"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v6, "validate-if-schema"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {v6, v7, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    if-eqz v4, :cond_0

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://xml.org/sax/features/validation"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_f
    const-string v6, "element-content-whitespace"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {v6, v7, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v6, "psvi"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/features/validation/schema/augment-psvi"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/properties/dom/document-class-name"

    const-string/jumbo v8, "mf.org.apache.xerces.dom.PSVIDocumentImpl"

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v6, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    const-string/jumbo v3, "http://apache.org/xml/features/honour-all-schemaLocations"

    :goto_1
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v6, v3, v4}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v6, "http://apache.org/xml/features/namespace-growth"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    const-string/jumbo v3, "http://apache.org/xml/features/namespace-growth"

    goto :goto_1

    :cond_13
    const-string/jumbo v6, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    const-string/jumbo v3, "http://apache.org/xml/features/internal/tolerate-duplicates"

    goto :goto_1

    :cond_14
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1

    :cond_15
    const-string v6, "error-handler"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    instance-of v6, p2, Lmf/org/w3c/dom/DOMErrorHandler;

    if-nez v6, :cond_16

    if-nez p2, :cond_17

    :cond_16
    :try_start_2
    new-instance v6, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    check-cast p2, Lmf/org/w3c/dom/DOMErrorHandler;

    invoke-direct {v6, p2}, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;-><init>(Lmf/org/w3c/dom/DOMErrorHandler;)V

    iput-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/properties/internal/error-handler"

    iget-object v8, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fErrorHandler:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v6

    goto/16 :goto_0

    :cond_17
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v6

    throw v6

    :cond_18
    const-string/jumbo v6, "resource-resolver"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    instance-of v6, p2, Lmf/org/w3c/dom/ls/LSResourceResolver;

    if-nez v6, :cond_19

    if-nez p2, :cond_1a

    :cond_19
    :try_start_3
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/properties/internal/entity-resolver"

    new-instance v8, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;

    check-cast p2, Lmf/org/w3c/dom/ls/LSResourceResolver;

    invoke-direct {v8, p2}, Lmf/org/apache/xerces/util/DOMEntityResolverWrapper;-><init>(Lmf/org/w3c/dom/ls/LSResourceResolver;)V

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v6

    goto/16 :goto_0

    :cond_1a
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v6

    throw v6

    :cond_1b
    const-string/jumbo v6, "schema-location"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    instance-of v6, p2, Ljava/lang/String;

    if-nez v6, :cond_1c

    if-nez p2, :cond_20

    :cond_1c
    if-nez p2, :cond_1d

    const/4 v6, 0x0

    :try_start_4
    iput-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaLocation:Ljava/lang/String;

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_3
    move-exception v6

    goto/16 :goto_0

    :cond_1d
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    iput-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaLocation:Ljava/lang/String;

    new-instance v5, Ljava/util/StringTokenizer;

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaLocation:Ljava/lang/String;

    const-string v7, " \n\t\r"

    invoke-direct {v5, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_1f

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-nez v6, :cond_1e

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1e
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1f
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-interface {v6, v7, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    :cond_20
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v6

    throw v6

    :cond_21
    const-string/jumbo v6, "schema-type"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    instance-of v6, p2, Ljava/lang/String;

    if-nez v6, :cond_22

    if-nez p2, :cond_25

    :cond_22
    if-nez p2, :cond_23

    :try_start_5
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/features/validation/schema"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/features/validation/schema-full-checking"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v6, 0x0

    iput-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    goto/16 :goto_0

    :catch_4
    move-exception v6

    goto/16 :goto_0

    :cond_23
    sget-object v6, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/features/validation/schema"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/features/validation/schema-full-checking"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    sget-object v8, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v6, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    iput-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;

    goto/16 :goto_0

    :cond_24
    sget-object v6, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/features/validation/schema"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/features/validation/schema-full-checking"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    sget-object v8, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v6, Lmf/org/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    iput-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fSchemaType:Ljava/lang/String;
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    :cond_25
    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v6

    throw v6

    :cond_26
    const-string/jumbo v6, "http://apache.org/xml/properties/dom/document-class-name"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_27

    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v7, "http://apache.org/xml/properties/dom/document-class-name"

    invoke-interface {v6, v7, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_27
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    :try_start_6
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v6, v3, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v6

    :try_start_7
    const-string/jumbo v6, "http://apache.org/xml/features/honour-all-schemaLocations"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    const-string/jumbo v3, "http://apache.org/xml/features/honour-all-schemaLocations"

    :cond_28
    :goto_3
    iget-object v6, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fConfiguration:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v6, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newTypeMismatchError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v6

    throw v6
    :try_end_7
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    move-exception v6

    invoke-static {p1}, Lmf/org/apache/xerces/parsers/DOMParserImpl;->newFeatureNotFoundError(Ljava/lang/String;)Lmf/org/w3c/dom/DOMException;

    move-result-object v6

    throw v6

    :cond_29
    :try_start_8
    const-string/jumbo v6, "http://apache.org/xml/features/namespace-growth"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    const-string/jumbo v3, "http://apache.org/xml/features/namespace-growth"

    goto :goto_3

    :cond_2a
    const-string/jumbo v6, "http://apache.org/xml/features/internal/tolerate-duplicates"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    const-string/jumbo v3, "http://apache.org/xml/features/internal/tolerate-duplicates"
    :try_end_8
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_3
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4

    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNamespaceDeclarations:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lmf/org/apache/xerces/parsers/DOMParserImpl;->fNamespaceAware:Z

    if-eqz v2, :cond_0

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-gez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lmf/org/apache/xerces/parsers/AbstractDOMParser;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void

    :cond_1
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getPrefix(I)Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_2

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_3

    :cond_2
    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->removeAttributeAt(I)V

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
