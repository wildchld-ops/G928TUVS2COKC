.class final Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;
.super Ljava/lang/Object;
.source "StreamValidatorHelper.java"

# interfaces
.implements Lmf/org/apache/xerces/jaxp/validation/ValidatorHelper;


# static fields
.field private static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field private static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field private static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field private static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field private static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"


# instance fields
.field private final fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

.field private fConfiguration:Ljava/lang/ref/SoftReference;

.field private fParser:Ljava/lang/ref/SoftReference;

.field private final fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

.field private fSerializerFactory:Lmf/org/apache/xml/serialize/SerializerFactory;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fConfiguration:Ljava/lang/ref/SoftReference;

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fParser:Ljava/lang/ref/SoftReference;

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/validator/schema"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    return-void
.end method

.method private initialize()Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Lmf/org/apache/xerces/parsers/XML11Configuration;

    invoke-direct {v0}, Lmf/org/apache/xerces/parsers/XML11Configuration;-><init>()V

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/entity-resolver"

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/error-handler"

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v0, v3, v1}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v2, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v1, v3, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    const-string/jumbo v3, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {v1, v3, v2}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lmf/org/apache/xerces/util/MessageFormatter;)V

    :cond_0
    const-string/jumbo v3, "http://apache.org/xml/properties/internal/symbol-table"

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/validation-manager"

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "http://apache.org/xml/properties/security-manager"

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v5, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/parsers/XML11Configuration;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fConfiguration:Ljava/lang/ref/SoftReference;

    return-object v0
.end method


# virtual methods
.method public validate(Lmf/javax/xml/transform/Source;Lmf/javax/xml/transform/Result;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v11, v0, Lmf/javax/xml/transform/stream/StreamResult;

    if-nez v11, :cond_0

    if-nez p2, :cond_a

    :cond_0
    move-object/from16 v9, p1

    check-cast v9, Lmf/javax/xml/transform/stream/StreamSource;

    move-object/from16 v8, p2

    check-cast v8, Lmf/javax/xml/transform/stream/StreamResult;

    new-instance v3, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-virtual {v9}, Lmf/javax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Lmf/javax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v3, v11, v12, v13}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Lmf/javax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-virtual {v3, v11}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    invoke-virtual {v9}, Lmf/javax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v11

    invoke-virtual {v3, v11}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fConfiguration:Ljava/lang/ref/SoftReference;

    invoke-virtual {v11}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    if-nez v1, :cond_4

    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->initialize()Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    move-result-object v1

    const/4 v4, 0x1

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v11}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->reset()V

    if-eqz v8, :cond_9

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSerializerFactory:Lmf/org/apache/xml/serialize/SerializerFactory;

    if-nez v11, :cond_2

    const-string/jumbo v11, "xml"

    invoke-static {v11}, Lmf/org/apache/xml/serialize/SerializerFactory;->getSerializerFactory(Ljava/lang/String;)Lmf/org/apache/xml/serialize/SerializerFactory;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSerializerFactory:Lmf/org/apache/xml/serialize/SerializerFactory;

    :cond_2
    invoke-virtual {v8}, Lmf/javax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v11

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSerializerFactory:Lmf/org/apache/xml/serialize/SerializerFactory;

    invoke-virtual {v8}, Lmf/javax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v12

    new-instance v13, Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-direct {v13}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>()V

    invoke-virtual {v11, v12, v13}, Lmf/org/apache/xml/serialize/SerializerFactory;->makeSerializer(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;

    move-result-object v7

    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fParser:Ljava/lang/ref/SoftReference;

    invoke-virtual {v11}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/parsers/SAXParser;

    if-nez v4, :cond_3

    if-nez v6, :cond_8

    :cond_3
    new-instance v6, Lmf/org/apache/xerces/parsers/SAXParser;

    invoke-direct {v6, v1}, Lmf/org/apache/xerces/parsers/SAXParser;-><init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V

    new-instance v11, Ljava/lang/ref/SoftReference;

    invoke-direct {v11, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fParser:Ljava/lang/ref/SoftReference;

    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-interface {v1, v11}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v11, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    invoke-interface {v7}, Lmf/org/apache/xml/serialize/Serializer;->asContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v11

    invoke-virtual {v6, v11}, Lmf/org/apache/xerces/parsers/SAXParser;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    :goto_3
    :try_start_0
    invoke-interface {v1, v3}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v12, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {v11, v12}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string/jumbo v11, "http://apache.org/xml/properties/internal/entity-resolver"

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v13, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v12, v13}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v1, v11, v12}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v11, "http://apache.org/xml/properties/internal/error-handler"

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v13, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v12, v13}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v1, v11, v12}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v11, "http://apache.org/xml/properties/security-manager"

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v13, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v12, v13}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v1, v11, v12}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v8}, Lmf/javax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSerializerFactory:Lmf/org/apache/xml/serialize/SerializerFactory;

    invoke-virtual {v8}, Lmf/javax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    new-instance v13, Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-direct {v13}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>()V

    invoke-virtual {v11, v12, v13}, Lmf/org/apache/xml/serialize/SerializerFactory;->makeSerializer(Ljava/io/OutputStream;Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;

    move-result-object v7

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v8}, Lmf/javax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    invoke-virtual {v8}, Lmf/javax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSerializerFactory:Lmf/org/apache/xml/serialize/SerializerFactory;

    new-instance v12, Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-direct {v12}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>()V

    invoke-virtual {v11, v5, v12}, Lmf/org/apache/xml/serialize/SerializerFactory;->makeSerializer(Ljava/io/OutputStream;Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;

    move-result-object v7

    goto/16 :goto_1

    :cond_7
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v12}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v12

    const-string v13, "StreamResultNotInitialized"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_8
    invoke-virtual {v6}, Lmf/org/apache/xerces/parsers/SAXParser;->reset()V

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    goto/16 :goto_3

    :catch_0
    move-exception v2

    :try_start_1
    invoke-static {v2}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXParseException(Lmf/org/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v11

    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    throw v11

    :catch_1
    move-exception v2

    :try_start_2
    invoke-static {v2}, Lmf/org/apache/xerces/jaxp/validation/Util;->toSAXException(Lmf/org/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v11

    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v12}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v12

    const-string v13, "SourceResultMismatch"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lmf/org/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
.end method
