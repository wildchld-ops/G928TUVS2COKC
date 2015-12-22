.class public Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;
.super Lmf/org/apache/xerces/parsers/StandardParserConfiguration;
.source "IntegratedParserConfiguration.java"


# instance fields
.field protected fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

.field protected fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

.field protected fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/parsers/StandardParserConfiguration;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    new-instance v0, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    return-void
.end method


# virtual methods
.method protected configurePipeline()V
    .locals 4

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->configureDTDPipeline()V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v2, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/namespace-binder"

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fNamespaceBinder:Lmf/org/apache/xerces/impl/XMLNamespaceBinder;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/document-scanner"

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/validator/dtd"

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->setDTDValidator(Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v2, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    if-nez v1, :cond_1

    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/validator/schema"

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->addComponent(Lmf/org/apache/xerces/xni/parser/XMLComponent;)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v2, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v2, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v1, v2, v0}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;->setDTDValidator(Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/document-scanner"

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/validator/dtd"

    iget-object v3, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fNonNSScanner:Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fNonNSDTDValidator:Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_9
    iget-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fScanner:Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;

    iput-object v1, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fLastComponent:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    goto/16 :goto_0
.end method

.method protected createDTDValidator()Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dtd/XMLNSDTDValidator;-><init>()V

    return-object v0
.end method

.method protected createDocumentScanner()Lmf/org/apache/xerces/xni/parser/XMLDocumentScanner;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iget-object v0, p0, Lmf/org/apache/xerces/parsers/IntegratedParserConfiguration;->fNamespaceScanner:Lmf/org/apache/xerces/impl/XMLNSDocumentScannerImpl;

    return-object v0
.end method
