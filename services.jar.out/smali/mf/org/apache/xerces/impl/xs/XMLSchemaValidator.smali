.class public Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
.super Ljava/lang/Object;
.source "XMLSchemaValidator.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;
.implements Lmf/org/apache/xerces/xni/parser/XMLDocumentFilter;
.implements Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;
.implements Lmf/org/apache/xerces/impl/RevalidationHandler;
.implements Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$UniqueValueStore;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;
    }
.end annotation


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field private static final BUFFER_SIZE:I = 0x14

.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field private static final DEBUG:Z = false

.field private static final DEBUG_NORMALIZATION:Z = false

.field protected static final DYNAMIC_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field private static final EMPTY_TABLE:Ljava/util/Hashtable;

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field public static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field public static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field protected static final IDENTITY_CONSTRAINT_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/identity-constraint-checking"

.field protected static final ID_CONSTRAINT_NUM:I = 0x1

.field protected static final ID_IDREF_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/id-idref-checking"

.field protected static final IGNORE_XSI_TYPE:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

.field static final INC_STACK_SIZE:I = 0x8

.field static final INITIAL_STACK_SIZE:I = 0x8

.field protected static final JAXP_SCHEMA_LANGUAGE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final ROOT_ELEMENT_DECL:Ljava/lang/String; = "http://apache.org/xml/properties/validation/schema/root-element-declaration"

.field protected static final ROOT_TYPE_DEF:Ljava/lang/String; = "http://apache.org/xml/properties/validation/schema/root-type-definition"

.field protected static final SCHEMA_AUGMENT_PSVI:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final SCHEMA_DV_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

.field protected static final SCHEMA_ELEMENT_DEFAULT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/element-default"

.field protected static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final SCHEMA_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-schemaLocation"

.field protected static final SCHEMA_NONS_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

.field protected static final SCHEMA_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field protected static final STANDARD_URI_CONFORMANT_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/standard-uri-conformant"

.field public static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field protected static final UNPARSED_ENTITY_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/unparsed-entity-checking"

.field protected static final USE_GRAMMAR_POOL_ONLY:Ljava/lang/String; = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

.field protected static final VALIDATE_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/validate-annotations"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field public static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field static final XSI_NIL:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

.field static final XSI_NONAMESPACESCHEMALOCATION:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

.field static final XSI_SCHEMALOCATION:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

.field static final XSI_TYPE:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;


# instance fields
.field private fAppendBuffer:Z

.field protected fAugPSVI:Z

.field protected final fAugmentations:Lmf/org/apache/xerces/util/AugmentationsImpl;

.field private final fBuffer:Ljava/lang/StringBuffer;

.field private final fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

.field private fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

.field private fCMStateStack:[[I

.field private fCurrCMState:[I

.field private fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

.field private fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

.field protected fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

.field private fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

.field protected fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

.field protected fDoValidation:Z

.field protected fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

.field protected fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

.field protected fDynamicValidation:Z

.field private fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

.field private fElementDepth:I

.field private final fEmptyXMLStr:Lmf/org/apache/xerces/xni/XMLString;

.field protected fEntityRef:Z

.field protected fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

.field protected final fExpandedLocationPairs:Ljava/util/Hashtable;

.field protected fExternalNoNamespaceSchema:Ljava/lang/String;

.field protected fExternalSchemas:Ljava/lang/String;

.field private fFirstChunk:Z

.field protected fFullChecking:Z

.field private final fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

.field protected fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field private fIDCChecking:Z

.field protected fIdConstraint:Z

.field private fIgnoreXSITypeDepth:I

.field protected fInCDATA:Z

.field protected fJaxpSchemaSource:Ljava/lang/Object;

.field protected final fLocationPairs:Ljava/util/Hashtable;

.field private fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

.field protected fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

.field private fNFullValidationDepth:I

.field private fNNoneValidationDepth:I

.field protected fNamespaceGrowth:Z

.field private fNil:Z

.field private fNilStack:[Z

.field protected fNormalizeData:Z

.field private final fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

.field private fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

.field private fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

.field private final fQNameDV:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

.field private fRootElementDeclQName:Ljavax/xml/namespace/QName;

.field private fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

.field private fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

.field private fRootTypeQName:Ljavax/xml/namespace/QName;

.field private fSawCharacters:Z

.field private fSawText:Z

.field private fSawTextStack:[Z

.field protected fSchemaDynamicValidation:Z

.field protected fSchemaElementDefault:Z

.field private final fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

.field private fSchemaType:Ljava/lang/String;

.field private fSkipValidationDepth:I

.field private fState4ApplyDefault:Lmf/org/apache/xerces/impl/validation/ValidationState;

.field private fState4XsiType:Lmf/org/apache/xerces/impl/validation/ValidationState;

.field private fStrictAssess:Z

.field private fStrictAssessStack:[Z

.field private fStringContent:[Z

.field private fSubElement:Z

.field private fSubElementStack:[Z

.field private final fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private final fTempQName:Lmf/org/apache/xerces/xni/QName;

.field private fTrailing:Z

.field private fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

.field private fUnionType:Z

.field protected final fUnparsedLocations:Ljava/util/ArrayList;

.field protected fUseGrammarPoolOnly:Z

.field private fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

.field protected fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

.field private fValidationRoot:Ljava/lang/String;

.field protected fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

.field protected fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

.field private fWhiteSpace:S

.field protected final fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

.field protected final fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

.field private final nodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xb

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "http://xml.org/sax/features/validation"

    aput-object v1, v0, v4

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema"

    aput-object v1, v0, v5

    const-string/jumbo v1, "http://apache.org/xml/features/validation/dynamic"

    aput-object v1, v0, v6

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema-full-checking"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "http://apache.org/xml/features/allow-java-encodings"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "http://apache.org/xml/features/continue-after-fatal-error"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "http://apache.org/xml/features/standard-uri-conformant"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "http://apache.org/xml/features/generate-synthetic-annotations"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "http://apache.org/xml/features/validate-annotations"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "http://apache.org/xml/features/honour-all-schemaLocations"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    aput-object v2, v0, v1

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

    aput-object v1, v0, v3

    const/16 v1, 0xc

    const-string/jumbo v2, "http://apache.org/xml/features/validation/id-idref-checking"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "http://apache.org/xml/features/validation/identity-constraint-checking"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "http://apache.org/xml/features/validation/unparsed-entity-checking"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "http://apache.org/xml/features/namespace-growth"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "http://apache.org/xml/features/internal/tolerate-duplicates"

    aput-object v2, v0, v1

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Boolean;

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v1, v0, v4

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v1, v0, v5

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-resolver"

    aput-object v1, v0, v6

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/validation-manager"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "http://apache.org/xml/properties/schema/external-schemaLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "http://apache.org/xml/properties/validation/schema/root-type-definition"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "http://apache.org/xml/properties/validation/schema/root-element-declaration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

    aput-object v2, v0, v1

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_TYPE:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_NIL:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_SCHEMALOCATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_SCHEMALOCATION:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NONAMESPACESCHEMALOCATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_NONAMESPACESCHEMALOCATION:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->EMPTY_TABLE:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/4 v1, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    new-instance v0, Lmf/org/apache/xerces/util/AugmentationsImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/AugmentationsImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugmentations:Lmf/org/apache/xerces/util/AugmentationsImpl;

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaDynamicValidation:Z

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFullChecking:Z

    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z

    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z

    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaType:Ljava/lang/String;

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityRef:Z

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fInCDATA:Z

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;-><init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    new-instance v0, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;

    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fJaxpSchemaSource:Ljava/lang/Object;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExpandedLocationPairs:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnparsedLocations:Ljava/util/ArrayList;

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0, v7, v5, v1}, Lmf/org/apache/xerces/xni/XMLString;-><init>([CII)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEmptyXMLStr:Lmf/org/apache/xerces/xni/XMLString;

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFirstChunk:Z

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTrailing:Z

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;-><init>(Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const-string v1, "QName"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fQNameDV:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->nodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->nodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;-><init>(Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    invoke-direct {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;-><init>(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    new-array v0, v6, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    new-array v0, v6, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    new-array v0, v6, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    new-array v0, v6, [Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    new-array v0, v6, [Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

    new-array v0, v6, [Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    new-array v0, v6, [[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    new-array v0, v6, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    new-array v0, v6, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    new-array v0, v6, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    new-instance v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    new-instance v0, Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/validation/ValidationState;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4XsiType:Lmf/org/apache/xerces/impl/validation/ValidationState;

    new-instance v0, Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/validation/ValidationState;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4ApplyDefault:Lmf/org/apache/xerces/impl/validation/ValidationState;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;-><init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4XsiType:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setExtraChecking(Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4ApplyDefault:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setFacetChecking(Z)V

    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;)I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    return v0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->activateSelectorFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    return-void
.end method

.method private activateSelectorFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 4

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getSelector()Lmf/org/apache/xerces/impl/xs/identity/Selector;

    move-result-object v2

    move-object v0, p0

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-virtual {v2, v0, v3}, Lmf/org/apache/xerces/impl/xs/identity/Selector;->createMatcher(Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->addMatcher(Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;)V

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->startDocumentFragment()V

    goto :goto_0
.end method

.method private expectedStr(Ljava/util/Vector;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "{"

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    const/16 v3, 0x7d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    if-lez v0, :cond_1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private hasSchemaComponent(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;SLmf/org/apache/xerces/xni/QName;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p3, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :pswitch_0
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getElementDeclaration(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSElementDeclaration;

    move-result-object v3

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getAttributeDeclaration(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    move-result-object v3

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTypeDefinition(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v3

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private normalizeWhitespace(Ljava/lang/String;Z)V
    .locals 8

    const/4 v6, 0x0

    move v3, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v4, v4

    if-ge v4, v2, :cond_1

    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    new-array v5, v2, [C

    iput-object v5, v4, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v6, v4, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v6, v4, Lmf/org/apache/xerces/xni/XMLString;->length:I

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_3

    if-eqz v3, :cond_2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v4, v4, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-eqz v4, :cond_2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v5, v4, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lmf/org/apache/xerces/xni/XMLString;->length:I

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v3, :cond_4

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v6, v5, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v5, Lmf/org/apache/xerces/xni/XMLString;->length:I

    const/16 v5, 0x20

    aput-char v5, v4, v6

    move v3, p2

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v6, v5, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v5, Lmf/org/apache/xerces/xni/XMLString;->length:I

    aput-char v0, v4, v6

    const/4 v3, 0x0

    goto :goto_1
.end method

.method private normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;Z)V
    .locals 11

    move v5, p2

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    iget v7, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v8, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int v4, v7, v8

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    if-eqz v7, :cond_0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v7, v7

    iget v8, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v8, v8, 0x1

    if-ge v7, v8, :cond_1

    :cond_0
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v8, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v8, v8, 0x1

    new-array v8, v8, [C

    iput-object v8, v7, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    :cond_1
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v8, 0x1

    iput v8, v7, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v8, 0x1

    iput v8, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    :goto_0
    if-lt v1, v4, :cond_6

    if-eqz v5, :cond_2

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v7, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_a

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v8, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    const/4 v6, 0x1

    :cond_2
    :goto_1
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v7, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    iget-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFirstChunk:Z

    if-nez v7, :cond_3

    iget-short v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    iget-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTrailing:Z

    if-eqz v7, :cond_b

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v8, 0x0

    iput v8, v7, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    const/4 v8, 0x0

    const/16 v9, 0x20

    aput-char v9, v7, v8

    :cond_3
    :goto_2
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v8, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v9, v9, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    sub-int/2addr v8, v9

    iput v8, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTrailing:Z

    if-nez v6, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    const/4 v7, 0x0

    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFirstChunk:Z

    :cond_5
    return-void

    :cond_6
    iget-object v7, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v0, v7, v1

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v7

    if-eqz v7, :cond_9

    if-nez v5, :cond_7

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v9, v8, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Lmf/org/apache/xerces/xni/XMLString;->length:I

    const/16 v8, 0x20

    aput-char v8, v7, v9

    move v5, p2

    :cond_7
    if-nez v3, :cond_8

    const/4 v2, 0x1

    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v9, v8, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Lmf/org/apache/xerces/xni/XMLString;->length:I

    aput-char v0, v7, v9

    const/4 v5, 0x0

    const/4 v3, 0x1

    goto :goto_3

    :cond_a
    if-eqz v2, :cond_2

    iget-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFirstChunk:Z

    if-nez v7, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_b
    if-eqz v2, :cond_3

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v8, 0x0

    iput v8, v7, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    const/4 v8, 0x0

    const/16 v9, 0x20

    aput-char v9, v7, v8

    goto :goto_2
.end method

.method private setLocationHints(Lmf/org/apache/xerces/impl/xs/XSDDescription;[Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 4

    const/4 v3, 0x0

    array-length v0, p2

    if-nez p3, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, v1, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    invoke-static {p2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setLocationHints(Lmf/org/apache/xerces/impl/xs/XSDDescription;[Ljava/lang/String;Lmf/org/apache/xerces/xs/StringList;)V

    goto :goto_0
.end method

.method private setLocationHints(Lmf/org/apache/xerces/impl/xs/XSDDescription;[Ljava/lang/String;Lmf/org/apache/xerces/xs/StringList;)V
    .locals 8

    const/4 v7, 0x0

    array-length v4, p2

    new-array v2, v4, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v3, 0x0

    move v1, v0

    :goto_0
    if-lt v3, v4, :cond_1

    if-lez v1, :cond_0

    if-ne v1, v4, :cond_2

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iput-object v2, v5, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    :cond_0
    :goto_1
    return-void

    :cond_1
    aget-object v5, p2, v3

    invoke-interface {p3, v5}, Lmf/org/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    add-int/lit8 v0, v1, 0x1

    aget-object v5, p2, v3

    aput-object v5, v2, v1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    new-array v6, v1, [Ljava/lang/String;

    iput-object v6, v5, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    invoke-static {v2, v7, v5, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public activateField(Lmf/org/apache/xerces/impl/xs/identity/Field;I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;
    .locals 4

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/Field;->getIdentityConstraint()Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->getValueStoreFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/impl/xs/identity/Field;->createMatcher(Lmf/org/apache/xerces/impl/xs/identity/ValueStore;)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->addMatcher(Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->startDocumentFragment()V

    return-object v0
.end method

.method addDefaultAttributes(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V
    .locals 22

    invoke-virtual/range {p3 .. p3}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v7

    invoke-interface {v7}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v17

    const/4 v14, 0x0

    :goto_0
    move/from16 v0, v17

    if-lt v14, v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v7, v14}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v12

    check-cast v12, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    iget-object v11, v12, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-short v10, v12, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    iget-object v13, v12, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-nez v10, :cond_1

    invoke-virtual {v11}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v10

    iget-object v13, v11, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    :cond_1
    iget-object v0, v11, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v11, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_4

    const/4 v15, 0x1

    :goto_1
    iget-short v0, v12, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    if-nez v15, :cond_2

    const-string v18, "cvc-complex-type.4"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    const/16 v20, 0x1

    iget-object v0, v11, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    if-nez v15, :cond_3

    if-eqz v10, :cond_3

    new-instance v4, Lmf/org/apache/xerces/xni/QName;

    const/16 v18, 0x0

    iget-object v0, v11, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v11, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v11, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v4, v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v13, :cond_5

    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v16

    :goto_2
    move-object/from16 v0, p2

    instance-of v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v8, p2

    check-cast v8, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v8}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v5

    const-string v18, "CDATA"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v8, v4, v0, v1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v9

    new-instance v6, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;

    invoke-direct {v6}, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;-><init>()V

    const-string v18, "ATTRIBUTE_PSVI"

    move-object/from16 v0, v18

    invoke-interface {v9, v0, v6}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v11, v6, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    iget-object v0, v11, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v6, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v0, v6, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lmf/org/apache/xerces/xs/XSValue;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationRoot:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v6, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidationContext:Ljava/lang/String;

    const/16 v18, 0x2

    move/from16 v0, v18

    iput-short v0, v6, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidity:S

    const/16 v18, 0x2

    move/from16 v0, v18

    iput-short v0, v6, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidationAttempted:S

    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v6, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fSpecified:Z

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_5
    const-string v16, ""

    goto :goto_2

    :cond_6
    const-string v18, "CDATA"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-interface {v0, v4, v1, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_3
.end method

.method public characterData(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)Z
    .locals 9

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-nez v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v3, :cond_4

    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    const/4 v6, -0x1

    if-eq v3, v6, :cond_4

    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    if-eqz v3, :cond_4

    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    if-ne v3, v8, :cond_0

    move v4, v5

    :cond_0
    invoke-direct {p0, p1, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->normalizeWhitespace(Ljava/lang/String;Z)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v4, v4, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v6, v6, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v7, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v3, v4, v6, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_1
    :goto_1
    const/4 v0, 0x1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v3, v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne v3, v8, :cond_2

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_5

    :cond_2
    :goto_3
    return v0

    :cond_3
    move v3, v5

    goto :goto_0

    :cond_4
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v0, 0x0

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleCharacters(Lmf/org/apache/xerces/xni/XMLString;)Lmf/org/apache/xerces/xni/XMLString;

    move-result-object p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEmptyXMLStr:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method checkElementMatchesRootElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/xni/QName;)V
    .locals 4

    iget-object v0, p2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-object v0, p2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    if-eq v0, v1, :cond_1

    :cond_0
    const-string v0, "cvc-elt.1.b"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

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

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public elementDefault(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method elementLocallyValidComplexType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    const/4 v1, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-boolean v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    if-nez v10, :cond_3

    iget-short v10, v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-nez v10, :cond_4

    iget-boolean v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-nez v10, :cond_0

    iget-boolean v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-eqz v10, :cond_4

    :cond_0
    const-string v10, "cvc-complex-type.2.1"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-short v10, v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    const/4 v11, 0x2

    if-eq v10, v11, :cond_2

    iget-short v10, v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    const/4 v11, 0x3

    if-ne v10, v11, :cond_3

    :cond_2
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    if-ltz v10, :cond_3

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v11, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    invoke-interface {v10, v11}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->endContentModel([I)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v11, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    invoke-interface {v10, v11}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->whatCanGoHere([I)Ljava/util/Vector;

    move-result-object v10

    invoke-direct {p0, v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->expectedStr(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v11, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    invoke-interface {v10, v11}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->occurenceInfo([I)[I

    move-result-object v8

    if-eqz v8, :cond_b

    const/4 v10, 0x0

    aget v7, v8, v10

    const/4 v10, 0x2

    aget v2, v8, v10

    if-ge v2, v7, :cond_a

    sub-int v9, v7, v2

    const/4 v10, 0x1

    if-le v9, v10, :cond_9

    const-string v10, "cvc-complex-type.2.4.j"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    const/4 v14, 0x3

    aget v14, v8, v14

    invoke-interface {v13, v14}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->getTermName(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-object v1

    :cond_4
    iget-short v10, v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    iget-boolean v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-eqz v10, :cond_5

    const-string v10, "cvc-complex-type.2.2"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget-object v4, v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :try_start_0
    iget-boolean v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v10, :cond_6

    iget-boolean v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    if-eqz v10, :cond_7

    :cond_6
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setNormalizationRequired(Z)V

    :cond_7
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    iget-object v11, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v0, p2

    invoke-interface {v4, v0, v10, v11}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v10, "cvc-complex-type.2.2"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    iget-short v10, v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    iget-boolean v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    if-eqz v10, :cond_1

    const-string v10, "cvc-complex-type.2.3"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    const-string v10, "cvc-complex-type.2.4.i"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    const/4 v14, 0x3

    aget v14, v8, v14

    invoke-interface {v13, v14}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->getTermName(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_a
    const-string v10, "cvc-complex-type.2.4.b"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v6, v11, v12

    invoke-virtual {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_b
    const-string v10, "cvc-complex-type.2.4.b"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v6, v11, v12

    invoke-virtual {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method elementLocallyValidType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-eqz v3, :cond_2

    const-string v3, "cvc-type.3.1.2"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    if-nez v3, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :try_start_0
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setNormalizationRequired(Z)V

    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-interface {v0, p2, v3, v4}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "cvc-type.3.1.3"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v4, v7

    aput-object p2, v4, v6

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->elementLocallyValidComplexType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-nez v1, :cond_3

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, p2, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, p2, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fInCDATA:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

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

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleEndDocument()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    return-void
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v3, 0x0

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method final endElementPSVI(Z[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 6

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x1

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v4, v3, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSElementDeclaration;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v4, v3, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iput-object v4, v3, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fNotation:Lmf/org/apache/xerces/xs/XSNotationDeclaration;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationRoot:Ljava/lang/String;

    iput-object v4, v3, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationContext:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    iput-boolean v4, v3, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fNil:Z

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    if-le v3, v4, :cond_4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-short v1, v3, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    :cond_0
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-boolean v2, v3, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fSpecified:Z

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lmf/org/apache/xerces/xs/XSValue;)V

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->mergeContext()[Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-object v0, v3, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fErrors:[Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    if-nez v0, :cond_6

    :goto_1
    iput-short v1, v3, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidity:S

    :goto_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-object p2, v1, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fGrammars:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    const/4 v2, 0x0

    iput-object v2, v1, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fSchemaInformation:Lmf/org/apache/xerces/xs/XSModel;

    :cond_3
    return-object p3

    :cond_4
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    if-le v3, v4, :cond_5

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-short v5, v3, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-short v2, v3, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-short v5, v1, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidity:S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->popContext()[Ljava/lang/String;

    goto :goto_2
.end method

.method public endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityRef:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public endValueScopeFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)V
    .locals 2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v1, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->getValueStoreFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->endValueScope()V

    return-void
.end method

.method ensureStackCapacity()V
    .locals 10

    const/4 v9, 0x0

    iget v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    array-length v8, v8

    if-ne v7, v8, :cond_0

    iget v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v6, v7, 0x8

    new-array v0, v6, [Z

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    iget v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    new-array v2, v6, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v7, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    new-array v0, v6, [Z

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    iget v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    new-array v4, v6, [Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iget v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    new-array v5, v6, [Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v7, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

    new-array v1, v6, [Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    new-array v0, v6, [Z

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    iget v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    new-array v0, v6, [Z

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    iget v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    new-array v0, v6, [Z

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    iget v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    new-array v3, v6, [[I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    iget v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v7, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    :cond_0
    return-void
.end method

.method findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 17

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v9

    if-nez v9, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setNamespace(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z

    invoke-virtual {v3, v9, v4, v5}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ZZ)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/xml-schema-1"

    const-string v5, "GrammarConflict"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    const/4 v9, 0x0

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    if-nez v3, :cond_8

    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v9, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->hasSchemaComponent(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;SLmf/org/apache/xerces/xni/QName;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->reset()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move/from16 v0, p1

    iput-short v0, v3, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setNamespace(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, p3

    iput-object v0, v3, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fEnclosedElementName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, p4

    iput-object v0, v3, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fTriggeringComponent:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, p5

    iput-object v0, v3, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setBaseSystemId(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    if-nez p2, :cond_3

    sget-object p2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    check-cast v10, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    invoke-virtual {v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->getLocationArray()[Ljava/lang/String;

    move-result-object v13

    array-length v3, v13

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setLocationHints(Lmf/org/apache/xerces/impl/xs/XSDDescription;[Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    :cond_4
    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    if-eqz v3, :cond_8

    :cond_5
    const/4 v14, 0x1

    if-eqz v9, :cond_6

    sget-object v12, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->EMPTY_TABLE:Ljava/util/Hashtable;

    :cond_6
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    invoke-static {v3, v12, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->resolveDocument(Lmf/org/apache/xerces/impl/xs/XSDDescription;Ljava/util/Hashtable;Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v15

    if-eqz v9, :cond_7

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_7

    :try_start_1
    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v3

    invoke-virtual {v15}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z
    :try_end_1
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_7

    const/4 v14, 0x0

    :cond_7
    :goto_0
    if-eqz v14, :cond_8

    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    invoke-virtual {v3, v4, v15, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadSchema(Lmf/org/apache/xerces/impl/xs/XSDDescription;Lmf/org/apache/xerces/xni/parser/XMLInputSource;Ljava/util/Hashtable;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v9

    :cond_8
    :goto_1
    return-object v9

    :catch_0
    move-exception v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getLocationHints()[Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/xml-schema-1"

    const-string/jumbo v5, "schema_reference.4"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v16, 0x0

    if-eqz v11, :cond_9

    const/4 v7, 0x0

    aget-object v7, v11, v7

    :goto_2
    aput-object v7, v6, v16

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    goto :goto_1

    :cond_9
    sget-object v7, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method getAndCheckXsiType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 11

    const/4 v5, 0x0

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fQNameDV:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    const/4 v3, 0x0

    invoke-interface {v1, p2, v2, v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/xni/QName;

    move-object v5, v0
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x0

    iget-object v1, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    iget-object v2, v5, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v10

    :cond_0
    if-nez v10, :cond_1

    const/4 v2, 0x7

    iget-object v3, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v1, p0

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v1, v5, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v9, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v10

    :cond_1
    if-nez v10, :cond_3

    const-string v1, "cvc-elt.4.2"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v10, 0x0

    :cond_2
    :goto_0
    return-object v10

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "cvc-elt.4.1"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v10, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v1, :cond_2

    const/4 v7, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-short v7, v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBlock:S

    or-int/2addr v1, v7

    int-to-short v7, v1

    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-static {v10, v1, v7}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkTypeDerivationOk(Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "cvc-elt.4.3"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v4}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-object v0
.end method

.method public getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    return-object v0
.end method

.method getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugmentations:Lmf/org/apache/xerces/util/AugmentationsImpl;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    :cond_0
    const-string v0, "ELEMENT_PSVI"

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    invoke-interface {p1, v0, v1}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->reset()V

    return-object p1
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object v1, v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getGlobalElementDecl(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x5

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v0, p0

    move-object v4, p1

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v3

    :cond_0
    return-object v3
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method getXsiNil(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;)Z
    .locals 7

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getNillable()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "cvc-elt.3.1"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v4, v2

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-static {p2}, Lmf/org/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v3

    if-ne v3, v4, :cond_1

    const-string v3, "cvc-elt.3.2.2"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method handleCharacters(Lmf/org/apache/xerces/xni/XMLString;)Lmf/org/apache/xerces/xni/XMLString;
    .locals 9

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    if-ltz v3, :cond_0

    move-object v2, p1

    :goto_0
    return-object v2

    :cond_0
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-nez v3, :cond_5

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-gtz v3, :cond_5

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v3, :cond_2

    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    const/4 v6, -0x1

    if-eq v3, v6, :cond_2

    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    if-eqz v3, :cond_2

    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    if-ne v3, v8, :cond_1

    move v4, v5

    :cond_1
    invoke-direct {p0, p1, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;Z)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    :cond_2
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v6, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v7, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v3, v4, v6, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne v3, v8, :cond_4

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    :goto_2
    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v3, v4

    if-lt v1, v3, :cond_6

    :cond_4
    :goto_3
    move-object v2, p1

    goto :goto_0

    :cond_5
    move v3, v5

    goto :goto_1

    :cond_6
    iget-object v3, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v3, v3, v1

    invoke-static {v3}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v3

    if-nez v3, :cond_7

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    goto :goto_3

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method handleEndDocument()V
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIDCChecking:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->endDocument()V

    :cond_0
    return-void
.end method

.method handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 19

    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    if-ltz v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-ne v3, v4, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    if-lez v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v3, v3, v4

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v3, v3, v4

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v3, v3, v4

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v3, v3, v4

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v3, v3, v4

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFullChecking:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {v3, v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fullSchemaChecking(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p2

    :cond_1
    move-object/from16 v9, p2

    :goto_1
    return-object v9

    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->processElementContent(Lmf/org/apache/xerces/xni/QName;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIDCChecking:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherCount()I

    move-result v16

    add-int/lit8 v11, v16, -0x1

    :goto_2
    if-gez v11, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->size()I

    move-result v3

    if-lez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->popContext()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherCount()I

    move-result v15

    add-int/lit8 v11, v16, -0x1

    :goto_3
    if-ge v11, v15, :cond_f

    add-int/lit8 v11, v16, -0x1

    :goto_4
    if-ge v11, v15, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->endElement()V

    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    if-ge v3, v4, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    :cond_6
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-nez v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->checkIDRefID()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->resetIDTables()V

    if-eqz v13, :cond_7

    const-string v3, "cvc-id.1"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v13, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFullChecking:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {v3, v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fullSchemaChecking(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammars()[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v3, :cond_9

    const/4 v14, 0x0

    :goto_5
    array-length v3, v10

    if-lt v14, v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    const-string/jumbo v4, "http://www.w3.org/2001/XMLSchema"

    invoke-interface {v3, v4, v10}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    :cond_9
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v10, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endElementPSVI(Z[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p2

    :goto_6
    move-object/from16 v9, p2

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v3, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherAt(I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v6, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-short v7, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v8, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xs/XSTypeDefinition;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V

    :goto_7
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getNillable()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v6, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-short v7, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v8, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    :goto_a
    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xs/XSTypeDefinition;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V

    goto :goto_7

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v6, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    goto :goto_8

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-short v7, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    goto :goto_9

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v8, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    goto :goto_a

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v3, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherAt(I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v2

    instance-of v3, v2, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;

    if-eqz v3, :cond_10

    move-object/from16 v17, v2

    check-cast v17, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;

    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->getIdentityConstraint()Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v12

    if-eqz v12, :cond_10

    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->getInitialDepth()I

    move-result v4

    invoke-virtual {v3, v12, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->transplant(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)V

    :cond_10
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v3, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherAt(I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v2

    instance-of v3, v2, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;

    if-eqz v3, :cond_12

    move-object/from16 v17, v2

    check-cast v17, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;

    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->getIdentityConstraint()Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v12

    if-eqz v12, :cond_12

    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->getInitialDepth()I

    move-result v4

    invoke-virtual {v3, v12, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->getValueStoreFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    move-result-object v18

    if-eqz v18, :cond_12

    invoke-virtual/range {v18 .. v18}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->endDocumentFragment()V

    :cond_12
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_4

    :cond_13
    aget-object v3, v10, v14

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->setImmutable(Z)V

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_5

    :cond_14
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v10, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endElementPSVI(Z[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p2

    move-object/from16 v0, p0

    iget v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v3, v3, v4

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v3, v3, v4

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v3, v3, v4

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v3, v3, v4

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v3, v3, v4

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    goto/16 :goto_6
.end method

.method handleIgnorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    if-ltz v0, :cond_0

    :cond_0
    return-void
.end method

.method handleStartDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIDCChecking:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->startDocument()V

    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fGrammars:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fSchemaInformation:Lmf/org/apache/xerces/xs/XSModel;

    :cond_1
    return-void
.end method

.method handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 31

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->isGrammarFound()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaType:Ljava/lang/String;

    if-nez v4, :cond_0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaDynamicValidation:Z

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    if-nez v4, :cond_1

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_SCHEMALOCATION:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NONAMESPACESCHEMALOCATION:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->storeLocations(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    if-ltz v4, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    :cond_2
    move-object/from16 v11, p3

    :goto_0
    return-object v11

    :cond_3
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v5, v6}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->oneTransition(Lmf/org/apache/xerces/xni/QName;[ILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v13, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-object v4, v13, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    invoke-interface {v4, v5}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->whatCanGoHere([I)Ljava/util/Vector;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->expectedStr(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    invoke-interface {v4, v5}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->occurenceInfo([I)[I

    move-result-object v23

    if-eqz v23, :cond_b

    const/4 v4, 0x0

    aget v20, v23, v4

    const/4 v4, 0x1

    aget v19, v23, v4

    const/4 v4, 0x2

    aget v12, v23, v4

    move/from16 v0, v20

    if-ge v12, v0, :cond_9

    sub-int v25, v20, v12

    const/4 v4, 0x1

    move/from16 v0, v25

    if-le v0, v4, :cond_8

    const-string v4, "cvc-complex-type.2.4.h"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    const/4 v8, 0x3

    aget v8, v23, v8

    invoke-interface {v7, v8}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->getTermName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->ensureStackCapacity()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    aput-boolean v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    aput-boolean v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    aput-boolean v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    aput-boolean v6, v4, v5

    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    const/16 v28, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    if-eqz v14, :cond_6

    instance-of v4, v14, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v4, :cond_f

    check-cast v14, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-object/from16 v0, p0

    iput-object v14, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    :cond_6
    :goto_2
    if-eqz v28, :cond_10

    move-object/from16 v0, v28

    iget-short v4, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    const/4 v5, 0x2

    if-ne v4, v5, :cond_10

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iput v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    :cond_7
    move-object/from16 v11, p3

    goto/16 :goto_0

    :cond_8
    const-string v4, "cvc-complex-type.2.4.g"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    const/4 v8, 0x3

    aget v8, v23, v8

    invoke-interface {v7, v8}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->getTermName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_9
    move/from16 v0, v19

    if-lt v12, v0, :cond_a

    const/4 v4, -0x1

    move/from16 v0, v19

    if-eq v0, v4, :cond_a

    const-string v4, "cvc-complex-type.2.4.e"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v16, v5, v6

    const/4 v6, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_a
    const-string v4, "cvc-complex-type.2.4.a"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v16, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_b
    const-string v4, "cvc-complex-type.2.4.a"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v16, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    invoke-interface {v4, v5}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->occurenceInfo([I)[I

    move-result-object v23

    if-eqz v23, :cond_e

    const/4 v4, 0x1

    aget v19, v23, v4

    const/4 v4, 0x2

    aget v12, v23, v4

    move/from16 v0, v19

    if-lt v12, v0, :cond_d

    const/4 v4, -0x1

    move/from16 v0, v19

    if-eq v0, v4, :cond_d

    const-string v4, "cvc-complex-type.2.4.f"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_d
    const-string v4, "cvc-complex-type.2.4.d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_e
    const-string v4, "cvc-complex-type.2.4.d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_f
    move-object/from16 v28, v14

    check-cast v28, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-nez v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->checkElementMatchesRootElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/xni/QName;)V

    :cond_11
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v4, :cond_12

    const/4 v5, 0x5

    move-object/from16 v0, p1

    iget-object v6, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v4 .. v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v26

    if-eqz v26, :cond_12

    move-object/from16 v0, p1

    iget-object v4, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    :cond_13
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    if-ne v4, v5, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v4, :cond_14

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    :cond_14
    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iget v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    if-lt v4, v5, :cond_15

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v4, :cond_2c

    if-nez v30, :cond_2c

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-nez v4, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z

    if-nez v4, :cond_16

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaDynamicValidation:Z

    if-eqz v4, :cond_1d

    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v4, v5}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-interface {v4, v5}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_17
    const/4 v4, -0x2

    move-object/from16 v0, p0

    iput v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v11, p3

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->processRootElementDeclQName(Ljavax/xml/namespace/QName;Lmf/org/apache/xerces/xni/QName;)V

    goto/16 :goto_3

    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto/16 :goto_3

    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->processRootTypeQName(Ljavax/xml/namespace/QName;)V

    goto/16 :goto_3

    :cond_1b
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iput v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    :cond_1c
    move-object/from16 v11, p3

    goto/16 :goto_0

    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v5, "http://www.w3.org/TR/xml-schema-1"

    const-string v6, "cvc-elt.1.a"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-object v9, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_1e
    :goto_4
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iput v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->pushContext()V

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getAbstract()Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, "cvc-elt.2"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1f
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-nez v4, :cond_20

    move-object/from16 v0, p1

    iget-object v4, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationRoot:Ljava/lang/String;

    :cond_20
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v4, :cond_21

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFirstChunk:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTrailing:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v4}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v4

    const/16 v5, 0xf

    if-ne v4, v5, :cond_33

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v13, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAbstract()Z

    move-result v4

    if-eqz v4, :cond_22

    const-string v4, "cvc-type.2"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v4, :cond_23

    iget-short v4, v13, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    const/4 v5, 0x1

    if-ne v4, v5, :cond_23

    iget-object v4, v13, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v4}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_32

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    :cond_23
    :goto_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v4}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v4

    const/16 v5, 0xf

    if-ne v4, v5, :cond_24

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v4, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentModel(Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    :cond_24
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    if-eqz v4, :cond_25

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    invoke-interface {v4}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->startContentModel()[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    :cond_25
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    if-eqz v29, :cond_26

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v4, :cond_26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getXsiNil(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    :cond_26
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v4}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v4

    const/16 v5, 0xf

    if-ne v4, v5, :cond_27

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v13, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v10

    :cond_27
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIDCChecking:Z

    if-eqz v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->startElement()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->pushContext()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDCPos:I

    if-lez v4, :cond_28

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-object/from16 v0, p0

    invoke-virtual {v4, v5, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->initValueStoresFor(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;)V

    :cond_28
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->processAttributes(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V

    if-eqz v10, :cond_29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->addDefaultAttributes(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V

    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherCount()I

    move-result v12

    const/16 v17, 0x0

    :goto_7
    move/from16 v0, v17

    if-lt v0, v12, :cond_35

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v4, :cond_2a

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationRoot:Ljava/lang/String;

    iput-object v5, v4, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationContext:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v5, v4, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSElementDeclaration;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v5, v4, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iput-object v5, v4, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fNotation:Lmf/org/apache/xerces/xs/XSNotationDeclaration;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    iput-boolean v5, v4, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fNil:Z

    :cond_2a
    move-object/from16 v11, p3

    goto/16 :goto_0

    :cond_2b
    if-eqz v28, :cond_1e

    move-object/from16 v0, v28

    iget-short v4, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1e

    const-string v4, "cvc-complex-type.2.4.c"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->pushContext()V

    if-eqz v30, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getAndCheckXsiType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v4, :cond_2d

    if-nez v24, :cond_2e

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object/from16 v0, p0

    iput-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    :cond_2d
    :goto_8
    move-object/from16 v0, p0

    iget v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iput v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v4, :cond_2f

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2f

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    goto/16 :goto_5

    :cond_2e
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto :goto_8

    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v4}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_30

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    goto/16 :goto_5

    :cond_30
    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v13, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v4, v13, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    const/4 v5, 0x1

    if-ne v4, v5, :cond_31

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    goto/16 :goto_5

    :cond_31
    const/4 v4, 0x0

    goto :goto_9

    :cond_32
    :try_start_0
    iget-object v4, v13, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v4}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getWhitespace()S

    move-result v4

    move-object/from16 v0, p0

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/DatatypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception v4

    goto/16 :goto_6

    :cond_33
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v4, :cond_23

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v15, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v15}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_34

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    goto/16 :goto_6

    :cond_34
    :try_start_1
    invoke-interface {v15}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getWhitespace()S

    move-result v4

    move-object/from16 v0, p0

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/DatatypeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception v4

    goto/16 :goto_6

    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherAt(I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)V

    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_7
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleIgnorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method processAttributes(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V
    .locals 28

    const/16 v27, 0x0

    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v16

    const/16 v19, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v2

    const/16 v3, 0x10

    if-eq v2, v3, :cond_2

    const/16 v24, 0x0

    :goto_0
    const/16 v17, 0x0

    const/16 v26, 0x0

    const/16 v18, 0x0

    if-nez v24, :cond_0

    invoke-virtual/range {p3 .. p3}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v26

    move-object/from16 v0, p3

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object/from16 v18, v0

    :cond_0
    const/4 v5, 0x0

    :goto_1
    move/from16 v0, v16

    if-lt v5, v0, :cond_3

    if-nez v24, :cond_1

    move-object/from16 v0, p3

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    if-eqz v2, :cond_1

    if-eqz v27, :cond_1

    const-string v2, "cvc-complex-type.5.2"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v3, v4

    const/4 v4, 0x1

    aput-object v27, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p3

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    aput-object v7, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    const/16 v24, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    if-eqz v2, :cond_5

    :cond_4
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v19

    const-string v2, "ATTRIBUTE_PSVI"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->reset()V

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationRoot:Ljava/lang/String;

    iput-object v2, v8, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidationContext:Ljava/lang/String;

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    if-ne v2, v3, :cond_c

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    if-ne v2, v3, :cond_9

    sget-object v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_TYPE:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    :cond_6
    :goto_3
    if-eqz v6, :cond_c

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->processOneAttribute(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;ILmf/org/apache/xerces/impl/xs/XSAttributeDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;)V

    :cond_7
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_8
    new-instance v8, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;

    invoke-direct {v8}, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;-><init>()V

    const-string v2, "ATTRIBUTE_PSVI"

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v8}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    if-ne v2, v3, :cond_a

    sget-object v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_NIL:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_SCHEMALOCATION:Ljava/lang/String;

    if-ne v2, v3, :cond_b

    sget-object v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_SCHEMALOCATION:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NONAMESPACESCHEMALOCATION:Ljava/lang/String;

    if-ne v2, v3, :cond_6

    sget-object v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_NONAMESPACESCHEMALOCATION:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    goto :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    const-string/jumbo v3, "xmlns:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz v24, :cond_d

    const-string v2, "cvc-type.3.1.1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_d
    const/16 v21, 0x0

    const/16 v23, 0x0

    :goto_5
    move/from16 v0, v23

    move/from16 v1, v26

    if-lt v0, v1, :cond_f

    :goto_6
    if-nez v21, :cond_11

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_e
    const-string v2, "cvc-complex-type.3.2.2"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iput v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v25

    check-cast v25, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    move-object/from16 v0, v25

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v2, v3, :cond_10

    move-object/from16 v0, v25

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v2, v3, :cond_10

    move-object/from16 v21, v25

    goto :goto_6

    :cond_10
    add-int/lit8 v23, v23, 0x1

    goto :goto_5

    :cond_11
    const/16 v20, 0x0

    if-eqz v21, :cond_13

    move-object/from16 v0, v21

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    :cond_12
    :goto_7
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move v12, v5

    move-object/from16 v14, v21

    move-object v15, v8

    invoke-virtual/range {v9 .. v15}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->processOneAttribute(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;ILmf/org/apache/xerces/impl/xs/XSAttributeDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;)V

    goto/16 :goto_4

    :cond_13
    move-object/from16 v0, v18

    iget-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    const/4 v10, 0x6

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v9, p0

    move-object/from16 v12, p1

    move-object/from16 v14, p2

    invoke-virtual/range {v9 .. v14}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v22

    if-eqz v22, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v13

    :goto_8
    if-nez v13, :cond_14

    move-object/from16 v0, v18

    iget-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    const-string v2, "cvc-complex-type.3.2.2"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_14
    iget-object v2, v13, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getTypeCategory()S

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_12

    iget-object v2, v13, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v2

    if-eqz v2, :cond_12

    if-eqz v27, :cond_15

    const-string v2, "cvc-complex-type.5.1"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v3, v4

    const/4 v4, 0x1

    iget-object v7, v13, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    aput-object v7, v3, v4

    const/4 v4, 0x2

    aput-object v27, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_15
    iget-object v0, v13, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    move-object/from16 v27, v0

    goto/16 :goto_7

    :cond_16
    move-object/from16 v13, v20

    goto :goto_8
.end method

.method processElementContent(Lmf/org/apache/xerces/xni/QName;)V
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    if-eqz v5, :cond_0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v5, v5

    if-ge v5, v1, :cond_1

    :cond_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    new-array v6, v1, [C

    iput-object v6, v5, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    invoke-virtual {v4, v9, v1, v5, v9}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v9, v5, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v1, v5, Lmf/org/apache/xerces/xni/XMLString;->length:I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v13, v5, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-eqz v5, :cond_4

    :cond_3
    const-string v5, "cvc-elt.3.2.1"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->reset()V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v5

    if-eqz v5, :cond_b

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-nez v5, :cond_b

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-nez v5, :cond_b

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    if-nez v5, :cond_b

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eq v5, v6, :cond_5

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4XsiType:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-static {v5, v6, v7, v13}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->ElementDefaultValidImmediate(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    const-string v5, "cvc-elt.5.1.1"

    new-array v6, v12, [Ljava/lang/Object;

    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v9

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v7}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->elementLocallyValidType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-nez v5, :cond_a

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v2, v5, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    if-eqz v5, :cond_8

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v5, v5

    if-ge v5, v1, :cond_9

    :cond_8
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    new-array v6, v1, [C

    iput-object v6, v5, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    :cond_9
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    invoke-virtual {v2, v9, v1, v5, v9}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v9, v5, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v1, v5, Lmf/org/apache/xerces/xni/XMLString;->length:I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {v5, v6, v13}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_a
    return-void

    :cond_b
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->elementLocallyValidType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v5

    if-ne v5, v11, :cond_6

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-eqz v5, :cond_c

    const-string v5, "cvc-elt.5.2.2.1"

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v5}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v5

    const/16 v6, 0xf

    if-ne v5, v6, :cond_f

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v5, v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne v5, v12, :cond_d

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "cvc-elt.5.2.2.2.1"

    new-array v6, v12, [Ljava/lang/Object;

    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v9

    aput-object v2, v6, v10

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    aput-object v7, v6, v11

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_d
    iget-short v5, v3, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne v5, v10, :cond_6

    if-eqz v0, :cond_6

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-static {v5, v6}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->isComparable(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_e
    const-string v5, "cvc-elt.5.2.2.2.2"

    new-array v6, v12, [Ljava/lang/Object;

    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v9

    aput-object v2, v6, v10

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v5}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v5

    const/16 v6, 0x10

    if-ne v5, v6, :cond_6

    if-eqz v0, :cond_6

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-static {v5, v6}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->isComparable(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_10
    const-string v5, "cvc-elt.5.2.2.2.2"

    new-array v6, v12, [Ljava/lang/Object;

    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v9

    aput-object v2, v6, v10

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method processOneAttribute(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;ILmf/org/apache/xerces/impl/xs/XSAttributeDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;)V
    .locals 13

    invoke-interface/range {p2 .. p3}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->pushContext()V

    move-object/from16 v0, p4

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v2, 0x0

    :try_start_0
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-interface {v3, v4, v9, v10}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v2

    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v9, v9, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    move/from16 v0, p3

    invoke-interface {p2, v0, v9}, Lmf/org/apache/xerces/xni/XMLAttributes;->setValue(ILjava/lang/String;)V

    :cond_0
    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getPrimitiveKind()S

    move-result v9

    const/16 v10, 0x14

    if-ne v9, v10, :cond_1

    move-object v0, v2

    check-cast v0, Lmf/org/apache/xerces/xni/QName;

    move-object v8, v0

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v10, v8, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v9, v8, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v9

    iput-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual/range {p4 .. p4}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v0, p4

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-static {v9, v10}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->isComparable(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object/from16 v0, p4

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v9, v9, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    const-string v9, "cvc-attribute.4"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v12, v12, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v4, v10, v11

    const/4 v11, 0x3

    move-object/from16 v0, p4

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    if-eqz v2, :cond_5

    if-eqz p5, :cond_5

    move-object/from16 v0, p5

    iget-short v9, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-object/from16 v0, p5

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-static {v9, v10}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->isComparable(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object/from16 v0, p5

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v9, v9, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v2, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    :cond_4
    const-string v9, "cvc-complex-type.3.1"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v12, v12, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v4, v10, v11

    const/4 v11, 0x3

    move-object/from16 v0, p5

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v12}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    if-eqz v9, :cond_6

    move-object/from16 v0, p6

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v9, v10}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lmf/org/apache/xerces/xs/XSValue;)V

    :cond_6
    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v9, :cond_7

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    move-object/from16 v0, p6

    iput-object v3, v0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v0, p6

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v9, v10}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lmf/org/apache/xerces/xs/XSValue;)V

    const/4 v9, 0x2

    move-object/from16 v0, p6

    iput-short v9, v0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidationAttempted:S

    iget v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iput v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->mergeContext()[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p6

    iput-object v5, v0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fErrors:[Ljava/lang/String;

    if-nez v5, :cond_9

    const/4 v9, 0x2

    :goto_1
    move-object/from16 v0, p6

    iput-short v9, v0, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidity:S

    :cond_7
    return-void

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v10, "cvc-attribute.3"

    const/4 v9, 0x4

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v12, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v11, v9

    const/4 v9, 0x1

    iget-object v12, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v12, v12, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v12, v11, v9

    const/4 v9, 0x2

    aput-object v4, v11, v9

    const/4 v12, 0x3

    instance-of v9, v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v9, :cond_8

    move-object v9, v3

    check-cast v9, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getTypeName()Ljava/lang/String;

    move-result-object v9

    :goto_2
    aput-object v9, v11, v12

    invoke-virtual {p0, v10, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_9
    const/4 v9, 0x1

    goto :goto_1
.end method

.method processRootElementDeclQName(Ljavax/xml/namespace/QName;Lmf/org/apache/xerces/xni/QName;)V
    .locals 8

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :cond_0
    const/4 v1, 0x5

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    :goto_0
    const-string v0, "cvc-elt.1.a"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v1, v3

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {p0, v0, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->checkElementMatchesRootElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/xni/QName;)V

    goto :goto_1
.end method

.method processRootTypeQName(Ljavax/xml/namespace/QName;)V
    .locals 8

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    :cond_1
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v7

    :goto_1
    const-string v0, "cvc-type.1"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v1, v3

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x5

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/xml-schema-1"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_0
    return-void
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->clear()V

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExpandedLocationPairs:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->clear()V

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->resetIDTables()V

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v6, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    iput-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iput-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    iput v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    iput v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    iput v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    iput v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaDynamicValidation:Z

    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityRef:Z

    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fInCDATA:Z

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->clear()V

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    const-string/jumbo v6, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v9, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->reset(Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    :try_start_0
    const-string/jumbo v6, "http://apache.org/xml/features/internal/parser-settings"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-nez v2, :cond_0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v6, v7}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->addValidationState(Lmf/org/apache/xerces/impl/validation/ValidationState;)V

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->nodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->reset()V

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v9, v9, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {v6, v7, v8, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->processExternalHints(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->nodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v6, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    const-string/jumbo v6, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    if-eq v5, v6, :cond_1

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    :cond_1
    :try_start_1
    const-string/jumbo v6, "http://apache.org/xml/features/namespace-growth"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    const-string/jumbo v6, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    iget-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z

    if-eqz v6, :cond_3

    iput-boolean v11, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    :goto_4
    iget-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    if-eqz v6, :cond_2

    :try_start_3
    const-string/jumbo v6, "http://apache.org/xml/features/validation/schema"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_13

    :cond_2
    :goto_5
    :try_start_4
    const-string/jumbo v6, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFullChecking:Z
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_6
    :try_start_5
    const-string/jumbo v6, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_7
    :try_start_6
    const-string/jumbo v6, "http://apache.org/xml/features/validation/schema/element-default"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z
    :try_end_6
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_8
    :try_start_7
    const-string/jumbo v6, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z
    :try_end_7
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_7

    :goto_9
    :try_start_8
    const-string/jumbo v6, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaType:Ljava/lang/String;
    :try_end_8
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_8

    :goto_a
    :try_start_9
    const-string/jumbo v6, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z
    :try_end_9
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_9 .. :try_end_9} :catch_9

    :goto_b
    const-string/jumbo v6, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    const-string/jumbo v6, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v6, v9}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->addValidationState(Lmf/org/apache/xerces/impl/validation/ValidationState;)V

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v6, v9}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setSymbolTable(Lmf/org/apache/xerces/util/SymbolTable;)V

    :try_start_a
    const-string/jumbo v6, "http://apache.org/xml/properties/validation/schema/root-type-definition"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    const/4 v6, 0x0

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    const/4 v6, 0x0

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :try_end_a
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_a .. :try_end_a} :catch_a

    :goto_c
    :try_start_b
    const-string/jumbo v6, "http://apache.org/xml/properties/validation/schema/root-element-declaration"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    const/4 v6, 0x0

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    const/4 v6, 0x0

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    :try_end_b
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_b .. :try_end_b} :catch_b

    :goto_d
    :try_start_c
    const-string/jumbo v6, "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_c
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_c .. :try_end_c} :catch_c

    move-result v1

    :goto_e
    if-eqz v1, :cond_8

    move v6, v7

    :goto_f
    iput v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    :try_start_d
    const-string/jumbo v6, "http://apache.org/xml/features/validation/identity-constraint-checking"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIDCChecking:Z
    :try_end_d
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_d .. :try_end_d} :catch_d

    :goto_10
    :try_start_e
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    const-string/jumbo v7, "http://apache.org/xml/features/validation/id-idref-checking"

    invoke-interface {p1, v7}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setIdIdrefChecking(Z)V
    :try_end_e
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_e .. :try_end_e} :catch_e

    :goto_11
    :try_start_f
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    const-string/jumbo v7, "http://apache.org/xml/features/validation/unparsed-entity-checking"

    invoke-interface {p1, v7}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setUnparsedEntityChecking(Z)V
    :try_end_f
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_f .. :try_end_f} :catch_f

    :goto_12
    :try_start_10
    const-string/jumbo v6, "http://apache.org/xml/properties/schema/external-schemaLocation"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    const-string/jumbo v6, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;
    :try_end_10
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_10 .. :try_end_10} :catch_10

    :goto_13
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v9, v9, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {v6, v7, v8, v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->processExternalHints(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    :try_start_11
    const-string/jumbo v6, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fJaxpSchemaSource:Ljava/lang/Object;
    :try_end_11
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_11 .. :try_end_11} :catch_11

    :goto_14
    :try_start_12
    const-string/jumbo v6, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    :try_end_12
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_12 .. :try_end_12} :catch_12

    :goto_15
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4XsiType:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v6, v5}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setSymbolTable(Lmf/org/apache/xerces/util/SymbolTable;)V

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4ApplyDefault:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v6, v5}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setSymbolTable(Lmf/org/apache/xerces/util/SymbolTable;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z

    goto/16 :goto_2

    :catch_2
    move-exception v0

    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z

    goto/16 :goto_3

    :cond_3
    :try_start_13
    const-string/jumbo v6, "http://xml.org/sax/features/validation"

    invoke-interface {p1, v6}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z
    :try_end_13
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_13 .. :try_end_13} :catch_3

    goto/16 :goto_4

    :catch_3
    move-exception v0

    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    goto/16 :goto_4

    :catch_4
    move-exception v0

    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFullChecking:Z

    goto/16 :goto_6

    :catch_5
    move-exception v0

    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    goto/16 :goto_7

    :catch_6
    move-exception v0

    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z

    goto/16 :goto_8

    :catch_7
    move-exception v0

    iput-boolean v11, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    goto/16 :goto_9

    :catch_8
    move-exception v0

    iput-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaType:Ljava/lang/String;

    goto/16 :goto_a

    :catch_9
    move-exception v0

    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    goto/16 :goto_b

    :cond_4
    :try_start_14
    instance-of v6, v4, Ljavax/xml/namespace/QName;

    if-eqz v6, :cond_5

    check-cast v4, Ljavax/xml/namespace/QName;

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    const/4 v6, 0x0

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :try_end_14
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_14 .. :try_end_14} :catch_a

    goto/16 :goto_c

    :catch_a
    move-exception v0

    iput-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    iput-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto/16 :goto_c

    :cond_5
    :try_start_15
    check-cast v4, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    const/4 v6, 0x0

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;
    :try_end_15
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_15 .. :try_end_15} :catch_a

    goto/16 :goto_c

    :cond_6
    :try_start_16
    instance-of v6, v3, Ljavax/xml/namespace/QName;

    if-eqz v6, :cond_7

    check-cast v3, Ljavax/xml/namespace/QName;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    const/4 v6, 0x0

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    :try_end_16
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_16 .. :try_end_16} :catch_b

    goto/16 :goto_d

    :catch_b
    move-exception v0

    iput-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    iput-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto/16 :goto_d

    :cond_7
    :try_start_17
    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    const/4 v6, 0x0

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;
    :try_end_17
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_17 .. :try_end_17} :catch_b

    goto/16 :goto_d

    :catch_c
    move-exception v0

    const/4 v1, 0x0

    goto/16 :goto_e

    :cond_8
    move v6, v8

    goto/16 :goto_f

    :catch_d
    move-exception v0

    iput-boolean v11, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIDCChecking:Z

    goto/16 :goto_10

    :catch_e
    move-exception v0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v6, v11}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setIdIdrefChecking(Z)V

    goto/16 :goto_11

    :catch_f
    move-exception v0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v6, v11}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setUnparsedEntityChecking(Z)V

    goto/16 :goto_12

    :catch_10
    move-exception v0

    iput-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    iput-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;

    goto/16 :goto_13

    :catch_11
    move-exception v0

    iput-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fJaxpSchemaSource:Ljava/lang/Object;

    goto/16 :goto_14

    :catch_12
    move-exception v0

    iput-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    goto/16 :goto_15

    :catch_13
    move-exception v6

    goto/16 :goto_5
.end method

.method public setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-void
.end method

.method public setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

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

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string/jumbo v0, "http://apache.org/xml/properties/validation/schema/root-type-definition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p2, Ljavax/xml/namespace/QName;

    if-eqz v0, :cond_2

    check-cast p2, Ljavax/xml/namespace/QName;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto :goto_0

    :cond_2
    check-cast p2, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "http://apache.org/xml/properties/validation/schema/root-element-declaration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_4

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto :goto_0

    :cond_4
    instance-of v0, p2, Ljavax/xml/namespace/QName;

    if-eqz v0, :cond_5

    check-cast p2, Ljavax/xml/namespace/QName;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto :goto_0

    :cond_5
    check-cast p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    goto :goto_0
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fInCDATA:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

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

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v0, p3}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4XsiType:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v0, p3}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4ApplyDefault:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v0, p3}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleStartDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, p2, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityRef:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startValueScopeFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)V
    .locals 2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v1, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->getValueStoreFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->startValueScope()V

    return-void
.end method

.method storeLocations(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v2, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->tokenizeSchemaLocationStr(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    const-string/jumbo v2, "http://www.w3.org/TR/xml-schema-1"

    const-string v3, "SchemaLocation"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    :cond_0
    if-eqz p2, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    if-nez v0, :cond_1

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;-><init>()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    :cond_2
    :goto_1
    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->addLocation(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

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

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method
