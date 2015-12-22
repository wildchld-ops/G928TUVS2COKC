.class public Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;
.super Ljava/lang/Object;
.source "XMLDTDValidator.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;
.implements Lmf/org/apache/xerces/xni/parser/XMLDocumentFilter;
.implements Lmf/org/apache/xerces/impl/dtd/XMLDTDValidatorFilter;
.implements Lmf/org/apache/xerces/impl/RevalidationHandler;


# static fields
.field protected static final BALANCE_SYNTAX_TREES:Ljava/lang/String; = "http://apache.org/xml/features/validation/balance-syntax-trees"

.field protected static final DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/datatype-validator-factory"

.field private static final DEBUG_ATTRIBUTES:Z = false

.field private static final DEBUG_ELEMENT_CHILDREN:Z = false

.field protected static final DYNAMIC_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field protected static final GRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final TOP_LEVEL_SCOPE:I = -0x1

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WARN_ON_DUPLICATE_ATTDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"


# instance fields
.field protected fBalanceSyntaxTrees:Z

.field private final fBuffer:Ljava/lang/StringBuffer;

.field private fContentSpecTypeStack:[I

.field private fCurrentContentSpecType:I

.field private final fCurrentElement:Lmf/org/apache/xerces/xni/QName;

.field private fCurrentElementIndex:I

.field protected fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

.field protected fDTDValidation:Z

.field protected fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

.field protected fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

.field protected fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

.field protected fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

.field protected fDynamicValidation:Z

.field private fElementChildren:[Lmf/org/apache/xerces/xni/QName;

.field private fElementChildrenLength:I

.field private fElementChildrenOffsetStack:[I

.field private fElementDepth:I

.field private fElementIndexStack:[I

.field private fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

.field private final fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

.field protected fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field private fInCDATASection:Z

.field private fInElementContent:Z

.field protected fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

.field protected fNamespaces:Z

.field private fPerformValidation:Z

.field private final fRootElement:Lmf/org/apache/xerces/xni/QName;

.field private fSchemaType:Ljava/lang/String;

.field protected fSeenDoctypeDecl:Z

.field private fSeenRootElement:Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private final fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

.field private fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

.field private final fTempQName:Lmf/org/apache/xerces/xni/QName;

.field protected fValENTITIES:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValENTITY:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValID:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValIDRef:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValIDRefs:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValNMTOKEN:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValNMTOKENS:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValNOTATION:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

.field protected fValidation:Z

.field protected fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

.field protected final fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

.field protected fWarnDuplicateAttdef:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "http://xml.org/sax/features/namespaces"

    aput-object v1, v0, v5

    const-string/jumbo v1, "http://xml.org/sax/features/validation"

    aput-object v1, v0, v6

    const-string/jumbo v1, "http://apache.org/xml/features/validation/dynamic"

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://apache.org/xml/features/validation/balance-syntax-trees"

    aput-object v1, v0, v3

    sput-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v3

    sput-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v1, v0, v5

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v1, v0, v6

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/grammar-pool"

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    aput-object v1, v0, v3

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/validation-manager"

    aput-object v1, v0, v4

    sput-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x20

    const/16 v4, 0x8

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    new-instance v1, Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/validation/ValidationState;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    iput-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    new-instance v1, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v1}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iput v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iput v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    new-instance v1, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v1}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fRootElement:Lmf/org/apache/xerces/xni/QName;

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInCDATASection:Z

    new-array v1, v4, [I

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementIndexStack:[I

    new-array v1, v4, [I

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fContentSpecTypeStack:[I

    new-array v1, v4, [Lmf/org/apache/xerces/xni/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    new-array v1, v5, [Lmf/org/apache/xerces/xni/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    iput v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    new-array v1, v5, [I

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    iput v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenRootElement:Z

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    new-instance v1, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    new-instance v1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    new-instance v1, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    new-instance v1, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v1}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    new-instance v1, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    new-instance v2, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v2}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private charDataInContent()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    array-length v3, v3

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    if-gt v3, v4, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [Lmf/org/apache/xerces/xni/QName;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    aget-object v2, v3, v4

    if-nez v2, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    array-length v3, v3

    if-lt v0, v3, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    aget-object v2, v3, v4

    :cond_1
    invoke-virtual {v2}, Lmf/org/apache/xerces/xni/QName;->clear()V

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    return-void

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    new-instance v4, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v4}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private checkContent(I[Lmf/org/apache/xerces/xni/QName;II)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v3, -0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {v4, p1, v5}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)Z

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v4, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    if-eqz p4, :cond_0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz v1, :cond_0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    :cond_2
    const/4 v0, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    iget-object v0, v4, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->contentModelValidator:Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;

    invoke-interface {v0, p2, p3, p4}, Lmf/org/apache/xerces/impl/dtd/models/ContentModelValidator;->validate([Lmf/org/apache/xerces/xni/QName;II)I

    move-result v3

    goto :goto_0

    :cond_3
    if-eq v1, v3, :cond_0

    goto :goto_0
.end method

.method private ensureStackCapacity(I)V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    array-length v4, v4

    if-ne p1, v4, :cond_1

    mul-int/lit8 v4, p1, 0x2

    new-array v2, v4, [Lmf/org/apache/xerces/xni/QName;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    invoke-static {v4, v6, v2, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    aget-object v3, v4, p1

    if-nez v3, :cond_0

    move v0, p1

    :goto_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    array-length v4, v4

    if-lt v0, v4, :cond_2

    :cond_0
    mul-int/lit8 v4, p1, 0x2

    new-array v1, v4, [I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementIndexStack:[I

    invoke-static {v4, v6, v1, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementIndexStack:[I

    mul-int/lit8 v4, p1, 0x2

    new-array v1, v4, [I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fContentSpecTypeStack:[I

    invoke-static {v4, v6, v1, v6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fContentSpecTypeStack:[I

    :cond_1
    return-void

    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    new-instance v5, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v5}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getAttributeTypeName(Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)Ljava/lang/String;
    .locals 4

    iget-object v2, p1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v2, v2, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    packed-switch v2, :pswitch_data_0

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    :goto_0
    return-object v2

    :pswitch_0
    iget-object v2, p1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-boolean v2, v2, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    if-eqz v2, :cond_0

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fENTITIESSymbol:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fENTITYSymbol:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v2, p1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_2
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fIDSymbol:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    iget-object v2, p1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-boolean v2, v2, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    if-eqz v2, :cond_3

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fIDREFSSymbol:Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fIDREFSymbol:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    iget-object v2, p1, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-boolean v2, v2, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    if-eqz v2, :cond_4

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fNMTOKENSSymbol:Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fNMTOKENSymbol:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getContentSpecType(I)I
    .locals 3

    const/4 v0, -0x1

    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {v1, p1, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    iget-short v0, v1, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    :cond_0
    return v0
.end method

.method private normalizeAttrValue(Lmf/org/apache/xerces/xni/XMLAttributes;I)Z
    .locals 13

    const/16 v12, 0x20

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1, p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    new-array v0, v10, [C

    iget-object v10, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v1, v9, v10, v0, v9}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v4, 0x0

    :goto_0
    array-length v10, v0

    if-lt v4, v10, :cond_1

    if-lez v2, :cond_0

    iget-object v10, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    add-int/lit8 v11, v2, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v10

    if-ne v10, v12, :cond_0

    iget-object v10, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    add-int/lit8 v11, v2, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_0
    iget-object v10, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, p2, v6}, Lmf/org/apache/xerces/xni/XMLAttributes;->setValue(ILjava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    :goto_1
    return v9

    :cond_1
    aget-char v10, v0, v4

    if-ne v10, v12, :cond_6

    if-eqz v7, :cond_2

    const/4 v8, 0x1

    const/4 v7, 0x0

    :cond_2
    if-eqz v8, :cond_4

    if-nez v5, :cond_4

    const/4 v8, 0x0

    iget-object v10, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    aget-char v11, v0, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-nez v5, :cond_5

    if-nez v8, :cond_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    iget-object v10, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBuffer:Ljava/lang/StringBuffer;

    aget-char v11, v0, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v9, 0x1

    goto :goto_1
.end method

.method private final rootElementSpecified(Lmf/org/apache/xerces/xni/QName;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v7, 0x1

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fRootElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "RootElementTypeMustMatchDoctypedecl"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    aput-object v1, v5, v7

    invoke-virtual {v2, v3, v4, v5, v7}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method protected addDTDDefaultAttrsAndValidate(Lmf/org/apache/xerces/xni/QName;ILmf/org/apache/xerces/xni/XMLAttributes;)V
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/16 v29, -0x1

    move/from16 v0, p2

    move/from16 v1, v29

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-object/from16 v29, v0

    if-nez v29, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result v12

    :goto_0
    const/16 v29, -0x1

    move/from16 v0, v29

    if-ne v12, v0, :cond_4

    invoke-interface/range {p3 .. p3}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v13

    const/16 v21, 0x0

    :goto_1
    move/from16 v0, v21

    if-ge v0, v13, :cond_0

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v14

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getStandalone()Z

    move-result v29

    if-eqz v29, :cond_2

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getNonNormalizedValue(I)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->getExternalEntityRefInAttrValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v29, v0

    const-string/jumbo v30, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v31, "MSG_REFERENCE_TO_EXTERNALLY_DECLARED_ENTITY_WHEN_STANDALONE"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v20, v32, v33

    const/16 v33, 0x1

    invoke-virtual/range {v29 .. v33}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_2
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getFirstAttributeDeclIndex(I)I

    move-result v25

    :goto_2
    const/16 v29, -0x1

    move/from16 v0, v25

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    :goto_3
    if-nez v18, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    move/from16 v29, v0

    if-eqz v29, :cond_3

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v4, v0, [Ljava/lang/Object;

    const/16 v29, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v4, v29

    const/16 v29, 0x1

    aput-object v14, v4, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v29, v0

    const-string/jumbo v30, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v31, "MSG_ATTRIBUTE_NOT_DECLARED"

    const/16 v32, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v4, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_3
    :goto_4
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v12, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDecl(ILmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v8, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v7, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v9, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->getAttributeTypeName(Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-short v6, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultType:S

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v11, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    :cond_5
    const/16 v27, 0x0

    const/16 v29, 0x2

    move/from16 v0, v29

    if-ne v6, v0, :cond_9

    const/16 v26, 0x1

    :goto_5
    sget-object v29, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    move-object/from16 v0, v29

    if-ne v10, v0, :cond_a

    const/16 v16, 0x1

    :goto_6
    if-eqz v16, :cond_6

    if-nez v26, :cond_6

    if-eqz v11, :cond_7

    :cond_6
    invoke-interface/range {p3 .. p3}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v13

    const/16 v21, 0x0

    :goto_7
    move/from16 v0, v21

    if-lt v0, v13, :cond_b

    :cond_7
    :goto_8
    if-nez v27, :cond_8

    if-eqz v26, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    move/from16 v29, v0

    if-eqz v29, :cond_8

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v4, v0, [Ljava/lang/Object;

    const/16 v29, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v4, v29

    const/16 v29, 0x1

    aput-object v9, v4, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v29, v0

    const-string/jumbo v30, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v31, "MSG_REQUIRED_ATTRIBUTE_NOT_SPECIFIED"

    const/16 v32, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v4, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_8
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result v12

    goto/16 :goto_0

    :cond_9
    const/16 v26, 0x0

    goto :goto_5

    :cond_a
    const/16 v16, 0x0

    goto :goto_6

    :cond_b
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    if-ne v0, v9, :cond_c

    const/16 v27, 0x1

    goto :goto_8

    :cond_c
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    :cond_d
    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    move/from16 v29, v0

    if-eqz v29, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getStandalone()Z

    move-result v29

    if-eqz v29, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDeclIsExternal(I)Z

    move-result v29

    if-eqz v29, :cond_e

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v4, v0, [Ljava/lang/Object;

    const/16 v29, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v4, v29

    const/16 v29, 0x1

    aput-object v9, v4, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v29, v0

    const-string/jumbo v30, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v31, "MSG_DEFAULTED_ATTRIBUTE_NOT_SPECIFIED"

    const/16 v32, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v4, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fNamespaces:Z

    move/from16 v29, v0

    if-eqz v29, :cond_f

    const/16 v29, 0x3a

    move/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v22

    const/16 v29, -0x1

    move/from16 v0, v22

    move/from16 v1, v29

    if-eq v0, v1, :cond_f

    const/16 v29, 0x0

    move/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v29, v22, 0x1

    move/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v0, v8, v7, v9, v1}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v29, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-interface {v0, v1, v10, v11}, Lmf/org/apache/xerces/xni/XMLAttributes;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move/from16 v1, v25

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDecl(ILmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    if-ne v0, v14, :cond_11

    move/from16 v5, v25

    const/16 v18, 0x1

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getNextAttributeDeclIndex(I)I

    move-result v25

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->getAttributeTypeName(Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p3

    move/from16 v1, v21

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->setType(ILjava/lang/String;)V

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v29

    const-string v30, "ATTRIBUTE_DECLARED"

    sget-object v31, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface/range {v29 .. v31}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v15, v24

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result v29

    if-eqz v29, :cond_13

    sget-object v29, Lmf/org/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->normalizeAttrValue(Lmf/org/apache/xerces/xni/XMLAttributes;I)Z

    move-result v17

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    move/from16 v29, v0

    if-eqz v29, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getStandalone()Z

    move-result v29

    if-eqz v29, :cond_13

    if-eqz v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getAttributeDeclIsExternal(I)Z

    move-result v29

    if-eqz v29, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v29, v0

    const-string/jumbo v30, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v31, "MSG_ATTVALUE_CHANGED_DURING_NORMALIZATION_WHEN_STANDALONE"

    const/16 v32, 0x3

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v14, v32, v33

    const/16 v33, 0x1

    aput-object v24, v32, v33

    const/16 v33, 0x2

    aput-object v15, v32, v33

    const/16 v33, 0x1

    invoke-virtual/range {v29 .. v33}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    move/from16 v29, v0

    if-eqz v29, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultType:S

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->defaultValue:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_14

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v4, v0, [Ljava/lang/Object;

    const/16 v29, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object/from16 v30, v0

    aput-object v30, v4, v29

    const/16 v29, 0x1

    aput-object v14, v4, v29

    const/16 v29, 0x2

    aput-object v15, v4, v29

    const/16 v29, 0x3

    aput-object v19, v4, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v29, v0

    const-string/jumbo v30, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v31, "MSG_FIXED_ATTVALUE_INVALID"

    const/16 v32, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v4, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    move/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    move/from16 v29, v0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    move/from16 v29, v0

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    move/from16 v29, v0

    const/16 v30, 0x5

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    move/from16 v29, v0

    const/16 v30, 0x6

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_3

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempAttDecl:Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v15, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->validateDTDattribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)V

    goto/16 :goto_4
.end method

.method public characterData(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)Z
    .locals 4

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLString;-><init>([CII)V

    invoke-virtual {p0, v0, p2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    const/4 v0, 0x1

    return v0
.end method

.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v1, 0x1

    const/4 v0, 0x1

    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    :goto_0
    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v3, v4

    if-lt v2, v3, :cond_6

    :goto_1
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInCDATASection:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v3, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    const/4 v1, 0x0

    :cond_0
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getStandalone()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDeclIsExternal(I)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v5, "MSG_WHITE_SPACE_IN_ELEMENT_CONTENT_WHEN_STANDALONE"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v9}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->charDataInContent()V

    :cond_2
    if-eqz p2, :cond_3

    const-string v3, "CHAR_REF_PROBABLE_WS"

    invoke-interface {p2, v3}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v5, "MSG_CONTENT_INVALID_SPECIFIED"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v8, v6, v7

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget v8, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpecAsString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x2

    const-string v8, "character reference"

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6, v9}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_3
    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    if-ne v3, v9, :cond_4

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->charDataInContent()V

    :cond_4
    if-eqz v1, :cond_5

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v3, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_5
    return-void

    :cond_6
    iget-object v3, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v3, v3, v2

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->isSpace(I)Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v6, 0x1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v2, "MSG_CONTENT_INVALID_SPECIFIED"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v4, "EMPTY"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "comment"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3, v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v6, 0x1

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fRootElement:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v1, v2, p1, p1, v2}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p3, v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    new-instance v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    move-object v1, p2

    move-object v2, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-nez v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v1, :cond_1

    if-nez p3, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v1, v0}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBalanceSyntaxTrees:Z

    if-nez v1, :cond_3

    new-instance v1, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v1, v2, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->setActiveGrammar(Lmf/org/apache/xerces/impl/dtd/DTDGrammar;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_2
    return-void

    :cond_3
    new-instance v1, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v1, v2, v0}, Lmf/org/apache/xerces/impl/dtd/BalancedDTDGrammar;-><init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/dtd/XMLDTDDescription;)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->setCachedDTD(Z)V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)Z

    move-result v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p3, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V

    :cond_1
    return-void
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInCDATASection:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

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

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

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

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V

    return-void
.end method

.method public endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method protected endNamespaceScope(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-object v0
.end method

.method public getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    return-object v0
.end method

.method protected getExternalEntityRefInAttrValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x26

    const/4 v7, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :goto_0
    if-ne v0, v7, :cond_1

    const/4 v2, 0x0

    :cond_0
    return-object v2

    :cond_1
    add-int/lit8 v5, v0, 0x1

    if-ge v5, v4, :cond_2

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-eq v5, v6, :cond_2

    const/16 v5, 0x3b

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v5, v2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v5, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getEntityDeclIndex(Ljava/lang/String;)I

    move-result v1

    if-le v1, v7, :cond_2

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    invoke-virtual {v5, v1, v6}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getEntityDecl(ILmf/org/apache/xerces/impl/dtd/XMLEntityDecl;)Z

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    iget-boolean v5, v5, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->inExternal:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;->value:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->getExternalEntityRefInAttrValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :cond_2
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object v1, v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getGrammarBucket()Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    return-object v0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v9, :cond_1

    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    const/4 v9, -0x1

    if-eq v5, v9, :cond_0

    iget v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    iget-object v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    iget v10, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    add-int/lit8 v10, v10, 0x1

    aget v9, v9, v10

    add-int/lit8 v4, v9, 0x1

    iget v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    sub-int v3, v9, v4

    invoke-direct {p0, v5, v2, v4, v3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->checkContent(I[Lmf/org/apache/xerces/xni/QName;II)I

    move-result v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_0

    iget-object v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {v9, v5, v10}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)Z

    iget-object v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    iget-short v9, v9, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    iget-object v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v10, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v11, "MSG_CONTENT_INVALID"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-object v14, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "EMPTY"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    iget v10, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    add-int/lit8 v10, v10, 0x1

    aget v9, v9, v10

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    :cond_1
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v9, v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->endNamespaceScope(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;Z)V

    iget v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    const/4 v10, -0x1

    if-ge v9, v10, :cond_4

    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "FWK008 Element stack underflow"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_2
    if-eq v7, v3, :cond_3

    const-string v6, "MSG_CONTENT_INVALID"

    :goto_1
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v10, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v13, v5}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpecAsString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v6, v11, v12}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v6, "MSG_CONTENT_INCOMPLETE"

    goto :goto_1

    :cond_4
    iget v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    if-gez v9, :cond_6

    iget-object v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v9}, Lmf/org/apache/xerces/xni/QName;->clear()V

    const/4 v9, -0x1

    iput v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    const/4 v9, -0x1

    iput v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    const/4 v9, 0x0

    iput-boolean v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    iget-boolean v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v9, :cond_5

    iget-object v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/validation/ValidationState;->checkIDRefID()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v10, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v11, "MSG_ELEMENT_WITH_ID_REQUIRED"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v9, v10, v11, v12, v13}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_5
    :goto_2
    return-void

    :cond_6
    iget-object v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    iget v11, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    iget-object v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementIndexStack:[I

    iget v10, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    aget v9, v9, v10

    iput v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iget-object v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fContentSpecTypeStack:[I

    iget v10, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    aget v9, v9, v10

    iput v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    iget v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_7

    const/4 v9, 0x1

    :goto_3
    iput-boolean v9, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    goto :goto_2

    :cond_7
    const/4 v9, 0x0

    goto :goto_3
.end method

.method protected handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v7, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenRootElement:Z

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->validate()Z

    move-result v5

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenRootElement:Z

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->setEntityState(Lmf/org/apache/xerces/impl/validation/EntityState;)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-boolean v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->setGrammarFound(Z)V

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->rootElementSpecified(Lmf/org/apache/xerces/xni/QName;)V

    :cond_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-nez v5, :cond_1

    iput v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iput v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    :cond_1
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v6, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v7, "MSG_GRAMMAR_NOT_FOUND"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v9, v8, v4

    invoke-virtual {v5, v6, v7, v8, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    if-eqz v5, :cond_6

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v4, v5}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-interface {v4, v5}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_3
    :goto_0
    return v3

    :cond_4
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v5, p1}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDeclIndex(Lmf/org/apache/xerces/xni/QName;)I

    move-result v5

    iput v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getContentSpecType(I)S

    move-result v5

    iput v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    if-ne v5, v7, :cond_5

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v6, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v7, "MSG_ELEMENT_NOT_DECLARED"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v9, v8, v4

    invoke-virtual {v5, v6, v7, v8, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_5
    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    invoke-virtual {p0, p1, v5, p2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->addDTDDefaultAttrsAndValidate(Lmf/org/apache/xerces/xni/QName;ILmf/org/apache/xerces/xni/XMLAttributes;)V

    :cond_6
    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_b

    :goto_1
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    array-length v3, v3

    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    if-gt v3, v5, :cond_7

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    array-length v5, v5

    invoke-static {v3, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    :cond_7
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenOffsetStack:[I

    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    iget v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    aput v6, v3, v5

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    array-length v3, v3

    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    if-gt v3, v5, :cond_8

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [Lmf/org/apache/xerces/xni/QName;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    array-length v5, v5

    invoke-static {v3, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    :cond_8
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    aget-object v2, v3, v5

    if-nez v2, :cond_9

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    :goto_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    array-length v3, v3

    if-lt v0, v3, :cond_c

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    aget-object v2, v3, v5

    :cond_9
    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    :cond_a
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v3, p1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    iget v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->ensureStackCapacity(I)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementQNamePartsStack:[Lmf/org/apache/xerces/xni/QName;

    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    aget-object v3, v3, v5

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementIndexStack:[I

    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    iget v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    aput v6, v3, v5

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fContentSpecTypeStack:[I

    iget v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    iget v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    aput v6, v3, v5

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->startNamespaceScope(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    move v3, v4

    goto/16 :goto_0

    :cond_b
    move v3, v4

    goto/16 :goto_1

    :cond_c
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildren:[Lmf/org/apache/xerces/xni/QName;

    new-instance v5, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v5}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    aput-object v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public final hasGrammar()Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method protected init()V
    .locals 3

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidation:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDynamicValidation:Z

    if-eqz v1, :cond_1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fIDSymbol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValID:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fIDREFSymbol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValIDRef:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fIDREFSSymbol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValIDRefs:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fENTITYSymbol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValENTITY:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fENTITIESSymbol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValENTITIES:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fNMTOKENSymbol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValNMTOKEN:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fNMTOKENSSymbol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValNMTOKENS:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->fNOTATIONSymbol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;->getBuiltInDV(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValNOTATION:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method protected invalidStandaloneAttDef(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isSpace(I)Z
    .locals 1

    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v0

    return v0
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v6, 0x1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v2, "MSG_CONTENT_INVALID_SPECIFIED"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v4, "EMPTY"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string/jumbo v5, "processing instruction"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3, v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v3, 0x0

    iput-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInCDATASection:Z

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenRootElement:Z

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    iput v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iput v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentContentSpecType:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fRootElement:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v2}, Lmf/org/apache/xerces/xni/QName;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/validation/ValidationState;->resetIDTables()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->clear()V

    iput v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    iput v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementChildrenLength:I

    :try_start_0
    const-string/jumbo v2, "http://apache.org/xml/features/internal/parser-settings"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-nez v1, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->addValidationState(Lmf/org/apache/xerces/impl/validation/ValidationState;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    :try_start_1
    const-string/jumbo v2, "http://xml.org/sax/features/namespaces"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fNamespaces:Z
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    const-string/jumbo v2, "http://xml.org/sax/features/validation"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidation:Z
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    const-string/jumbo v2, "http://apache.org/xml/features/validation/schema"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDValidation:Z
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_5
    :try_start_4
    const-string/jumbo v2, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDynamicValidation:Z
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_6
    :try_start_5
    const-string/jumbo v2, "http://apache.org/xml/features/validation/balance-syntax-trees"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBalanceSyntaxTrees:Z
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_7
    :try_start_6
    const-string/jumbo v2, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fWarnDuplicateAttdef:Z
    :try_end_6
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_8
    :try_start_7
    const-string/jumbo v2, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSchemaType:Ljava/lang/String;
    :try_end_7
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_7

    :goto_9
    const-string/jumbo v2, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->addValidationState(Lmf/org/apache/xerces/impl/validation/ValidationState;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fNamespaces:Z

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setUsingNamespaces(Z)V

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    :try_start_8
    const-string/jumbo v2, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    :try_end_8
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_8

    :goto_a
    const-string/jumbo v2, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDatatypeValidatorFactory:Lmf/org/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->init()V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fNamespaces:Z

    goto/16 :goto_2

    :catch_2
    move-exception v0

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidation:Z

    goto/16 :goto_3

    :cond_1
    move v2, v4

    goto :goto_4

    :catch_3
    move-exception v0

    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDValidation:Z

    goto :goto_5

    :catch_4
    move-exception v0

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDynamicValidation:Z

    goto :goto_6

    :catch_5
    move-exception v0

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fBalanceSyntaxTrees:Z

    goto :goto_7

    :catch_6
    move-exception v0

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fWarnDuplicateAttdef:Z

    goto :goto_8

    :catch_7
    move-exception v0

    iput-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSchemaType:Ljava/lang/String;

    goto :goto_9

    :catch_8
    move-exception v0

    iput-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    goto :goto_a
.end method

.method public setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-void
.end method

.method public setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    return-void
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInElementContent:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->charDataInContent()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fInCDATASection:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    const-string/jumbo v4, "http://www.w3.org/TR/REC-xml"

    invoke-interface {v3, v4}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v2, v0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_3

    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocLocation:Lmf/org/apache/xerces/xni/XMLLocator;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v3, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    aget-object v3, v0, v1

    check-cast v3, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/dtd/DTDGrammar;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v6, 0x1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fPerformValidation:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fElementDepth:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElementIndex:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/dtd/DTDGrammar;->getElementDecl(ILmf/org/apache/xerces/impl/dtd/XMLElementDecl;)Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fTempElementDecl:Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dtd/XMLElementDecl;->type:S

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v2, "MSG_CONTENT_INVALID_SPECIFIED"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fCurrentElement:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v4, "EMPTY"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "ENTITY"

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3, v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->getStandalone()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDGrammar:Lmf/org/apache/xerces/impl/dtd/DTDGrammar;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fEntityDecl:Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {p1, v0, v1, v2}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->checkStandaloneEntityRef(Ljava/lang/String;Lmf/org/apache/xerces/impl/dtd/DTDGrammar;Lmf/org/apache/xerces/impl/dtd/XMLEntityDecl;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_2
    return-void
.end method

.method protected startNamespaceScope(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0

    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method public final validate()Z
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSchemaType:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDynamicValidation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidation:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDynamicValidation:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDTDValidation:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fSeenDoctypeDecl:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected validateDTDattribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v6, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-short v6, v6, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->type:S

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v6, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-boolean v5, v6, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    if-eqz v5, :cond_1

    :try_start_0
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValENTITIES:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {v6, p2, v7}, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v6, v7, v8, v9, v10}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValENTITY:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {v6, p2, v7}, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x0

    iget-object v6, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-object v0, v6, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->enumeration:[Ljava/lang/String;

    if-nez v0, :cond_4

    const/4 v3, 0x0

    :cond_2
    :goto_1
    if-nez v3, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v0, :cond_3

    const/4 v4, 0x0

    :goto_2
    array-length v6, v0

    if-lt v4, v6, :cond_7

    :cond_3
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v8, "MSG_ATTRIBUTE_VALUE_NOT_IN_LIST"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v11, v11, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    const/4 v10, 0x2

    aput-object v1, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v6, v7, v8, v9, v10}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_3
    array-length v6, v0

    if-ge v4, v6, :cond_2

    aget-object v6, v0, v4

    if-eq p2, v6, :cond_5

    aget-object v6, v0, v4

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    const/4 v3, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    aget-object v7, v0, v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :pswitch_2
    :try_start_2
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValID:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {v6, p2, v7}, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v6, v7, v8, v9, v10}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_3
    iget-object v6, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-boolean v5, v6, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    if-eqz v5, :cond_8

    :try_start_3
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValIDRefs:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {v6, p2, v7}, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_3
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v2

    if-eqz v5, :cond_9

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v8, "IDREFSInvalid"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v6, v7, v8, v9, v10}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    :try_start_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValIDRef:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {v6, p2, v7}, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_4
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :cond_9
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v6, v7, v8, v9, v10}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_4
    iget-object v6, p3, Lmf/org/apache/xerces/impl/dtd/XMLAttributeDecl;->simpleType:Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;

    iget-boolean v5, v6, Lmf/org/apache/xerces/impl/dtd/XMLSimpleType;->list:Z

    if-eqz v5, :cond_a

    :try_start_5
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValNMTOKENS:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {v6, p2, v7}, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_5
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v2

    if-eqz v5, :cond_b

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v8, "NMTOKENSInvalid"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v6, v7, v8, v9, v10}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    :try_start_6
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValNMTOKEN:Lmf/org/apache/xerces/impl/dv/DatatypeValidator;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {v6, p2, v7}, Lmf/org/apache/xerces/impl/dv/DatatypeValidator;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_6
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    :cond_b
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v8, "NMTOKENInvalid"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v6, v7, v8, v9, v10}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;

    if-eqz p3, :cond_1

    const-string/jumbo v0, "yes"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/dtd/DTDGrammarBucket;->setStandalone(Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
