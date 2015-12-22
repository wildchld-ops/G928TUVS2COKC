.class public Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;
.super Lmf/org/apache/xerces/parsers/BasicParserConfiguration;
.source "SchemaParsingConfig.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLPullParserConfiguration;


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/datatype-validator-factory"

.field protected static final DOCUMENT_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/document-scanner"

.field protected static final DTD_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/dtd-scanner"

.field protected static final DTD_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/dtd"

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field protected static final LOAD_EXTERNAL_DTD:Ljava/lang/String; = "http://apache.org/xml/features/nonvalidating/load-external-dtd"

.field protected static final LOCALE:Ljava/lang/String; = "http://apache.org/xml/properties/locale"

.field protected static final NAMESPACE_BINDER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-binder"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final NOTIFY_BUILTIN_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-builtin-refs"

.field protected static final NOTIFY_CHAR_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-char-refs"

.field private static final PRINT_EXCEPTION_STACK_TRACE:Z = false

.field protected static final SCHEMA_ELEMENT_DEFAULT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/element-default"

.field protected static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WARN_ON_DUPLICATE_ATTDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

.field protected static final WARN_ON_UNDECLARED_ELEMDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

.field protected static final XML11_DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "mf.org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

.field protected static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field private f11Initialized:Z

.field protected fConfigUpdated:Z

.field protected fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

.field protected fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field protected fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

.field protected final fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

.field protected final fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field protected final fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

.field protected final fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field protected fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

.field protected fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

.field protected final fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

.field protected fParseInProgress:Z

.field protected final fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

.field protected final fVersionDetector:Lmf/org/apache/xerces/impl/XMLVersionDetector;

.field protected fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

.field protected fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field protected fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fParseInProgress:Z

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fConfigUpdated:Z

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->f11Initialized:Z

    const/16 v3, 0x9

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v3, "http://apache.org/xml/features/internal/parser-settings"

    aput-object v3, v0, v6

    const-string/jumbo v3, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    aput-object v3, v0, v7

    const-string/jumbo v3, "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

    aput-object v3, v0, v8

    const-string/jumbo v3, "http://apache.org/xml/features/allow-java-encodings"

    aput-object v3, v0, v9

    const/4 v3, 0x4

    const-string/jumbo v4, "http://apache.org/xml/features/continue-after-fatal-error"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "http://apache.org/xml/features/scanner/notify-builtin-refs"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "http://apache.org/xml/features/scanner/notify-char-refs"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "http://apache.org/xml/features/generate-synthetic-annotations"

    aput-object v4, v0, v3

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->addRecognizedFeatures([Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v4, "http://apache.org/xml/features/internal/parser-settings"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v4, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v4, "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v4, "http://apache.org/xml/features/allow-java-encodings"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v4, "http://apache.org/xml/features/continue-after-fatal-error"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v4, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v4, "http://apache.org/xml/features/scanner/notify-builtin-refs"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v4, "http://apache.org/xml/features/scanner/notify-char-refs"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v4, "http://apache.org/xml/features/generate-synthetic-annotations"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xb

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v3, v1, v6

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/entity-manager"

    aput-object v3, v1, v7

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/document-scanner"

    aput-object v3, v1, v8

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/dtd-scanner"

    aput-object v3, v1, v9

    const/4 v3, 0x4

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/validator/dtd"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/namespace-binder"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/grammar-pool"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/validation-manager"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "http://apache.org/xml/features/generate-synthetic-annotations"

    aput-object v4, v1, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "http://apache.org/xml/properties/locale"

    aput-object v4, v1, v3

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->addRecognizedProperties([Ljava/lang/String;)V

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/grammar-pool"

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    new-instance v3, Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLEntityManager;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/entity-manager"

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v3, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lmf/org/apache/xerces/impl/XMLEntityScanner;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/error-reporter"

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v3, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/document-scanner"

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->addRecognizedParamsAndSetDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v3, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/dtd-scanner"

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->addRecognizedParamsAndSetDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    invoke-static {}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getInstance()Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/validation/ValidationManager;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/validation-manager"

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lmf/org/apache/xerces/impl/XMLVersionDetector;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/XMLVersionDetector;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fVersionDetector:Lmf/org/apache/xerces/impl/XMLVersionDetector;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v2, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v3, v4, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {v3, v4, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v3, v4, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    :cond_2
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->setLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private addRecognizedParamsAndSetDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V
    .locals 9

    const/4 v8, 0x1

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->addRecognizedFeatures([Ljava/lang/String;)V

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->addRecognizedProperties([Ljava/lang/String;)V

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    array-length v7, v3

    if-lt v1, v7, :cond_2

    :cond_0
    if-eqz v4, :cond_1

    const/4 v1, 0x0

    :goto_1
    array-length v7, v4

    if-lt v1, v7, :cond_4

    :cond_1
    return-void

    :cond_2
    aget-object v0, v3, v1

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fFeatures:Ljava/util/HashMap;

    invoke-virtual {v7, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fConfigUpdated:Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    aget-object v2, v4, v1

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fProperties:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fProperties:Ljava/util/HashMap;

    invoke-virtual {v7, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fConfigUpdated:Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initXML11Components()V
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->f11Initialized:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "mf.org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getInstance(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    new-instance v0, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->addRecognizedParamsAndSetDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    new-instance v0, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->addRecognizedParamsAndSetDefaults(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->f11Initialized:Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected checkFeature(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string/jumbo v2, "http://apache.org/xml/features/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, "http://apache.org/xml/features/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v0, v2, v3

    const-string/jumbo v2, "validation/dynamic"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_1

    const-string/jumbo v2, "validation/dynamic"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "validation/default-attribute-values"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_2

    const-string/jumbo v2, "validation/default-attribute-values"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_2
    const-string/jumbo v2, "validation/validate-content-models"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_3

    const-string/jumbo v2, "validation/validate-content-models"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_3
    const-string/jumbo v2, "nonvalidating/load-dtd-grammar"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_4

    const-string/jumbo v2, "nonvalidating/load-dtd-grammar"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    const-string/jumbo v2, "nonvalidating/load-external-dtd"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_5

    const-string/jumbo v2, "nonvalidating/load-external-dtd"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    const-string/jumbo v2, "validation/validate-datatypes"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_6

    const-string/jumbo v2, "validation/validate-datatypes"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x1

    new-instance v2, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;

    invoke-direct {v2, v1, p1}, Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_6
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->checkFeature(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected checkProperty(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string/jumbo v1, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string/jumbo v2, "http://apache.org/xml/properties/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    const-string/jumbo v1, "internal/dtd-scanner"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string/jumbo v1, "internal/dtd-scanner"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "http://java.sun.com/xml/jaxp/properties/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string/jumbo v2, "http://java.sun.com/xml/jaxp/properties/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, v1, v2

    const-string/jumbo v1, "schemaSource"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_2

    const-string/jumbo v1, "schemaSource"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->checkProperty(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cleanup()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->closeReaders()V

    return-void
.end method

.method protected configurePipeline()V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/document-scanner"

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/dtd-scanner"

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->setDTDContentModelSource(Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    :cond_5
    return-void
.end method

.method protected configureXML11Pipeline()V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DatatypeFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDVFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/document-scanner"

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/dtd-scanner"

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentDTDScanner:Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lmf/org/apache/xerces/xni/parser/XMLDTDSource;)V

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->setDTDContentModelSource(Lmf/org/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    :cond_5
    return-void
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string/jumbo v0, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fConfigUpdated:Z

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string/jumbo v0, "http://apache.org/xml/properties/locale"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->getLocale()Ljava/util/Locale;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fParseInProgress:Z

    if-eqz v1, :cond_0

    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    const-string v2, "FWK005 parse may not be called while parsing."

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fParseInProgress:Z

    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->parse(Z)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fParseInProgress:Z

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->cleanup()V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fParseInProgress:Z

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->cleanup()V

    throw v1

    :catch_1
    move-exception v0

    :try_start_2
    throw v0

    :catch_2
    move-exception v0

    throw v0

    :catch_3
    move-exception v0

    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public parse(Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->reset()V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fVersionDetector:Lmf/org/apache/xerces/impl/XMLVersionDetector;

    invoke-virtual {v3, p0}, Lmf/org/apache/xerces/impl/XMLVersionDetector;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->reset()V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fVersionDetector:Lmf/org/apache/xerces/impl/XMLVersionDetector;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLVersionDetector;->determineDocVersion(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)S

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->configurePipeline()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->resetXML10()V

    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fConfigUpdated:Z

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fVersionDetector:Lmf/org/apache/xerces/impl/XMLVersionDetector;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    check-cast v2, Lmf/org/apache/xerces/impl/XMLEntityHandler;

    invoke-virtual {v3, v2, v1}, Lmf/org/apache/xerces/impl/XMLVersionDetector;->startDocumentParsing(Lmf/org/apache/xerces/impl/XMLEntityHandler;S)V

    const/4 v2, 0x0

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    :try_start_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fCurrentScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-interface {v2, p1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;->scanDocument(Z)Z
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move-result v2

    :cond_1
    return v2

    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    :try_start_2
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->initXML11Components()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->configureXML11Pipeline()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->resetXML11()V
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    throw v0

    :catch_3
    move-exception v0

    new-instance v2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v2, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v2

    :catch_4
    move-exception v0

    throw v0

    :catch_5
    move-exception v0

    throw v0

    :catch_6
    move-exception v0

    throw v0

    :catch_7
    move-exception v0

    new-instance v2, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v2, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public reset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-super {p0}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->reset()V

    return-void
.end method

.method public resetNodePool()V
    .locals 0

    return-void
.end method

.method protected final resetXML10()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method protected final resetXML11()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fConfigUpdated:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setFeature(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->f11Initialized:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;,
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fInputSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-super {p0, p1}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->setLocale(Ljava/util/Locale;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fConfigUpdated:Z

    const-string/jumbo v0, "http://apache.org/xml/properties/locale"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->setLocale(Ljava/util/Locale;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fDTDScanner:Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->f11Initialized:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11DTDScanner:Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/XML11DTDScannerImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->fXML11NSDocScanner:Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/XML11NSDocumentScannerImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/parsers/BasicParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
