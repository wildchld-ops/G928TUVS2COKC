.class public Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;
.super Lmf/org/apache/xerces/impl/XMLScanner;
.source "XMLDTDScannerImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;
.implements Lmf/org/apache/xerces/impl/XMLEntityHandler;


# static fields
.field private static final DEBUG_SCANNER_STATE:Z = false

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SCANNER_STATE_END_OF_INPUT:I = 0x0

.field protected static final SCANNER_STATE_MARKUP_DECL:I = 0x2

.field protected static final SCANNER_STATE_TEXT_DECL:I = 0x1


# instance fields
.field private fContentDepth:I

.field private fContentStack:[I

.field protected fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

.field protected fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

.field private fEnumeration:[Ljava/lang/String;

.field private fEnumerationCount:I

.field private fExtEntityDepth:I

.field private final fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private fIncludeSectDepth:I

.field private final fLiteral:Lmf/org/apache/xerces/xni/XMLString;

.field private final fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

.field private fMarkUpDepth:I

.field private fPEDepth:I

.field private fPEReport:[Z

.field private fPEStack:[I

.field protected fScannerState:I

.field protected fSeenExternalDTD:Z

.field protected fSeenPEReferences:Z

.field protected fStandalone:Z

.field private fStartDTDCalled:Z

.field private final fString:Lmf/org/apache/xerces/xni/XMLString;

.field private final fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private final fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private final fStrings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "http://xml.org/sax/features/validation"

    aput-object v1, v0, v4

    const-string/jumbo v1, "http://apache.org/xml/features/scanner/notify-char-refs"

    aput-object v1, v0, v2

    sput-object v0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    sput-object v0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v1, v0, v4

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-manager"

    aput-object v1, v0, v3

    sput-object v0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/Object;

    sput-object v0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x5

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLScanner;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentStack:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEStack:[I

    new-array v0, v1, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEReport:[Z

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;)V
    .locals 2

    const/4 v1, 0x5

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLScanner;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentStack:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEStack:[I

    new-array v0, v1, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEReport:[Z

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/symbol-table"

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {p3, v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final ensureEnumerationSize(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, p1, :cond_0

    mul-int/lit8 v1, p1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static getScannerStateName(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "??? ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStartDTDCalled:Z

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStandalone:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSeenExternalDTD:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSeenPEReferences:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setScannerState(I)V

    return-void
.end method

.method private final peekReportEntity()Z
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEReport:[Z

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    add-int/lit8 v1, v1, -0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method private final popContentStack()I
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    aget v0, v0, v1

    return v0
.end method

.method private final popPEStack()I
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    aget v0, v0, v1

    return v0
.end method

.method private final pushContentStack(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentStack:[I

    array-length v1, v1

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentStack:[I

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    aput p1, v1, v2

    return-void
.end method

.method private final pushPEStack(IZ)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEStack:[I

    array-length v2, v2

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEStack:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [Z

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEReport:[Z

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEReport:[Z

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEReport:[Z

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    aput-boolean p2, v2, v3

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEStack:[I

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    aput p1, v2, v3

    return-void
.end method

.method private final scanAttType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/16 v8, 0x28

    const/16 v10, 0x7c

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    iput v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v7, "CDATA"

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "CDATA"

    :goto_0
    return-object v3

    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v7, "IDREFS"

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "IDREFS"

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v7, "IDREF"

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "IDREF"

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v7, "ID"

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v3, "ID"

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v7, "ENTITY"

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v3, "ENTITY"

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v7, "ENTITIES"

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v3, "ENTITIES"

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v7, "NMTOKENS"

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v3, "NMTOKENS"

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v7, "NMTOKEN"

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v3, "NMTOKEN"

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v7, "NOTATION"

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v3, "NOTATION"

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-eqz v4, :cond_d

    move v4, v5

    :goto_1
    invoke-direct {p0, v6, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "MSG_SPACE_REQUIRED_AFTER_NOTATION_IN_NOTATIONTYPE"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object p2, v7, v6

    invoke-virtual {p0, v4, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v1

    if-eq v1, v8, :cond_9

    const-string v4, "MSG_OPEN_PAREN_REQUIRED_IN_NOTATIONTYPE"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object p2, v7, v6

    invoke-virtual {p0, v4, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    :cond_a
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-eqz v4, :cond_e

    move v4, v5

    :goto_2
    invoke-direct {p0, v5, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    const-string v4, "MSG_NAME_REQUIRED_IN_NOTATIONTYPE"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object p2, v7, v6

    invoke-virtual {p0, v4, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipInvalidEnumerationValue()I

    move-result v1

    if-ne v1, v10, :cond_b

    :goto_3
    if-eq v1, v10, :cond_a

    :cond_b
    const/16 v4, 0x29

    if-eq v1, v4, :cond_c

    const-string v4, "NotationTypeUnterminated"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object p2, v7, v6

    invoke-virtual {p0, v4, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    goto/16 :goto_0

    :cond_d
    move v4, v6

    goto :goto_1

    :cond_e
    move v4, v6

    goto :goto_2

    :cond_f
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->ensureEnumerationSize(I)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    iget v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    aput-object v0, v4, v7

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-eqz v4, :cond_10

    move v4, v5

    :goto_4
    invoke-direct {p0, v5, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v1

    goto :goto_3

    :cond_10
    move v4, v6

    goto :goto_4

    :cond_11
    const-string v3, "ENUMERATION"

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v1

    if-eq v1, v8, :cond_12

    const-string v4, "AttTypeRequiredInAttDef"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object p2, v7, v6

    invoke-virtual {p0, v4, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    :cond_13
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-eqz v4, :cond_16

    move v4, v5

    :goto_5
    invoke-direct {p0, v5, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanNmtoken()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const-string v4, "MSG_NMTOKEN_REQUIRED_IN_ENUMERATION"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object p2, v7, v6

    invoke-virtual {p0, v4, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipInvalidEnumerationValue()I

    move-result v1

    if-ne v1, v10, :cond_14

    :goto_6
    if-eq v1, v10, :cond_13

    :cond_14
    const/16 v4, 0x29

    if-eq v1, v4, :cond_15

    const-string v4, "EnumerationUnterminated"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object p2, v7, v6

    invoke-virtual {p0, v4, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    goto/16 :goto_0

    :cond_16
    move v4, v6

    goto :goto_5

    :cond_17
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->ensureEnumerationSize(I)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    iget v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    aput-object v2, v4, v7

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-eqz v4, :cond_18

    move v4, v5

    :goto_7
    invoke-direct {p0, v5, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v1

    goto :goto_6

    :cond_18
    move v4, v6

    goto :goto_7
.end method

.method private final scanChildren(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/16 v10, 0x7c

    const/16 v9, 0x2c

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    iput v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    invoke-direct {p0, v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->pushContentStack(I)V

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v7, 0x28

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v7, 0x28

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v4, v8}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->startGroup(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    invoke-direct {p0, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->pushContentStack(I)V

    const/4 v2, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    :goto_1
    invoke-direct {p0, v5, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    :goto_2
    invoke-direct {p0, v5, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v4, "MSG_OPEN_PAREN_OR_ELEMENT_TYPE_REQUIRED_IN_CHILDREN"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    invoke-virtual {p0, v4, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-void

    :cond_3
    move v4, v6

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v4, v1, v8}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->element(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_5
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    const/16 v4, 0x3f

    if-eq v0, v4, :cond_6

    const/16 v4, 0x2a

    if-eq v0, v4, :cond_6

    const/16 v4, 0x2b

    if-ne v0, v4, :cond_8

    :cond_6
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_7

    const/16 v4, 0x3f

    if-ne v0, v4, :cond_a

    const/4 v3, 0x2

    :goto_4
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v4, v3, v8}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V

    :cond_7
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v7, v0

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    :cond_8
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v5

    :goto_5
    invoke-direct {p0, v5, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    if-ne v0, v9, :cond_d

    if-eq v2, v10, :cond_d

    move v2, v0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v4, v6, v8}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->separator(SLmf/org/apache/xerces/xni/Augmentations;)V

    :cond_9
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4, v9}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    :goto_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-eqz v4, :cond_16

    move v4, v5

    :goto_7
    invoke-direct {p0, v5, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    goto/16 :goto_0

    :cond_a
    const/16 v4, 0x2a

    if-ne v0, v4, :cond_b

    const/4 v3, 0x3

    goto :goto_4

    :cond_b
    const/4 v3, 0x4

    goto :goto_4

    :cond_c
    move v4, v6

    goto :goto_5

    :cond_d
    if-ne v0, v10, :cond_f

    if-eq v2, v9, :cond_f

    move v2, v0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v4, v5, v8}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->separator(SLmf/org/apache/xerces/xni/Augmentations;)V

    :cond_e
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4, v10}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_6

    :cond_f
    const/16 v4, 0x29

    if-eq v0, v4, :cond_10

    const-string v4, "MSG_CLOSE_PAREN_REQUIRED_IN_CHILDREN"

    new-array v7, v6, [Ljava/lang/Object;

    aput-object p1, v7, v5

    invoke-virtual {p0, v4, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v4, v8}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->endGroup(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_11
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->popContentStack()I

    move-result v2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v7, ")?"

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string v7, ")?"

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_12

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v4, v3, v8}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V

    :cond_12
    :goto_8
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    if-nez v4, :cond_8

    goto/16 :goto_3

    :cond_13
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v7, ")+"

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string v7, ")+"

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_12

    const/4 v3, 0x4

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v4, v3, v8}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_8

    :cond_14
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v7, ")*"

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string v7, ")*"

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v4, :cond_12

    const/4 v3, 0x3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v4, v3, v8}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_8

    :cond_15
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v7, 0x29

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_8

    :cond_16
    move v4, v6

    goto/16 :goto_7
.end method

.method private final scanConditionalSect(I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/16 v11, 0x5b

    const/16 v10, 0x5d

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    invoke-direct {p0, v3, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v5, "INCLUDE"

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_1
    invoke-direct {p0, v3, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    if-eq p1, v2, :cond_0

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fValidation:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v6, "INVALID_PE_IN_CONDITIONAL"

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->name:Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {v2, v5, v6, v7, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v11}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-virtual {p0, v2, v9}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v2, v3, v9}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startConditional(SLmf/org/apache/xerces/xni/Augmentations;)V

    :cond_2
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    :cond_3
    :goto_2
    return-void

    :cond_4
    move v2, v4

    goto :goto_0

    :cond_5
    move v2, v4

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v5, "IGNORE"

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v2

    if-eqz v2, :cond_d

    move v2, v3

    :goto_3
    invoke-direct {p0, v3, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    if-eq p1, v2, :cond_7

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fValidation:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v6, "INVALID_PE_IN_CONDITIONAL"

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->name:Ljava/lang/String;

    aput-object v8, v7, v3

    invoke-virtual {v2, v5, v6, v7, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_7
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v2, v4, v9}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startConditional(SLmf/org/apache/xerces/xni/Augmentations;)V

    :cond_8
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v11}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-virtual {p0, v2, v9}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    :cond_a
    :goto_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v4, 0x3c

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v4, 0x3c

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    :cond_b
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v4, 0x21

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v11}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string v4, "!["

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    :cond_c
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    goto :goto_4

    :cond_d
    move v2, v4

    goto :goto_3

    :cond_e
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string v4, "!"

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v10}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v10}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    :cond_10
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v10}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v10}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    :cond_11
    :goto_5
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v10}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v4, 0x3e

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    if-ne v2, v1, :cond_13

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v4, v4, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v5, v5, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v2, v4, v3, v5}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {v2, v3, v9}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->ignoredCharacters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v2, v9}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endConditional(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_2

    :cond_12
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v10}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_5

    :cond_13
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v4, 0x3e

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_4

    :cond_14
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v0

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    if-nez v2, :cond_15

    const-string v2, "IgnoreSectUnterminated"

    invoke-virtual {p0, v2, v9}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_15
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v4, v0

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_4

    :cond_16
    const-string v2, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-virtual {p0, v2, v9}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method private final scanEntityDecl()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v12, 0x25

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v7, 0x0

    :goto_0
    if-eqz v9, :cond_1

    :cond_0
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_16

    const-string v0, "NameRequiredInPEReference"

    const/4 v12, 0x0

    invoke-virtual {p0, v0, v12}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v12, 0x25

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_18

    :cond_1
    :goto_3
    const/4 v1, 0x0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fNamespaces:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanNCName()Ljava/lang/String;

    move-result-object v1

    :goto_4
    if-nez v1, :cond_2

    const-string v0, "MSG_ENTITY_NAME_REQUIRED_IN_ENTITYDECL"

    const/4 v12, 0x0

    invoke-virtual {p0, v0, v12}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 v12, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    :goto_5
    invoke-direct {p0, v12, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fNamespaces:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    const/16 v12, 0x3a

    if-ne v0, v12, :cond_1e

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    new-instance v6, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v6, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3a

    invoke-virtual {v6, v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v6, v11}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    :cond_3
    const-string v0, "ColonNotLegalWithNS"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v6}, Lmf/org/apache/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v0, v12}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v12, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    :goto_6
    invoke-direct {p0, v12, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "MSG_SPACE_REQUIRED_AFTER_ENTITY_NAME_IN_ENTITYDECL"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    invoke-virtual {p0, v0, v12}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {p0, v0, v12}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanExternalID([Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v3, v0, v12

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    const/4 v12, 0x1

    aget-object v2, v0, v12

    const/4 v5, 0x0

    const/4 v12, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    :goto_8
    invoke-direct {p0, v12, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v10

    if-nez v7, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v12, "NDATA"

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v10, :cond_5

    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_NDATA_IN_UNPARSED_ENTITYDECL"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    invoke-virtual {p0, v0, v12}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    const/4 v12, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    :goto_9
    invoke-direct {p0, v12, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_NOTATION_NAME_IN_UNPARSED_ENTITYDECL"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    invoke-virtual {p0, v0, v12}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    const-string v0, "MSG_NOTATION_NAME_REQUIRED_FOR_UNPARSED_ENTITYDECL"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    invoke-virtual {p0, v0, v12}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    if-nez v3, :cond_8

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v12, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {p0, v0, v12}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanEntityValue(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v12, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v12, v12, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v13, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    iget v13, v13, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget-object v14, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    iget v14, v14, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v0, v12, v13, v14}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append([CII)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v12, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v12, v12, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v13, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    iget v13, v13, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget-object v14, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    iget v14, v14, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v0, v12, v13, v14}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append([CII)V

    :cond_8
    const/4 v12, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    :goto_a
    invoke-direct {p0, v12, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v12, 0x3e

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "EntityDeclUnterminated"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    invoke-virtual {p0, v0, v12}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    if-eqz v7, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v12, "%"

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_a
    if-eqz v3, :cond_24

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_22

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLEntityManager;->addUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    const/4 v12, 0x0

    invoke-static {v3, v4, v12}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v2, v3, v4, v12}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_23

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v12, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    const/4 v13, 0x0

    invoke-interface {v0, v1, v12, v5, v13}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->unparsedEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_b
    :goto_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    return-void

    :cond_c
    const/4 v12, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    :goto_d
    invoke-direct {p0, v12, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x1

    goto :goto_d

    :cond_e
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_ENTITY_NAME_IN_PEDECL"

    const/4 v12, 0x0

    invoke-virtual {p0, v0, v12}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    const/16 v12, 0x25

    if-ne v0, v12, :cond_11

    const/4 v12, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    :goto_e
    invoke-direct {p0, v12, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_10
    const/4 v0, 0x1

    goto :goto_e

    :cond_11
    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v12, 0x25

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_13
    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_ENTITY_NAME_IN_ENTITYDECL"

    const/4 v12, 0x0

    invoke-virtual {p0, v0, v12}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_PERCENT_IN_PEDECL"

    const/4 v12, 0x0

    invoke-virtual {p0, v0, v12}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_15
    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v12, 0x3b

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "SemicolonRequiredInPEReference"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-virtual {p0, v0, v12}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_17
    const/4 v0, 0x0

    invoke-virtual {p0, v8, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->startPE(Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_18
    if-nez v7, :cond_0

    const/4 v12, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    :goto_f
    invoke-direct {p0, v12, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v7, 0x1

    goto/16 :goto_3

    :cond_19
    const/4 v0, 0x1

    goto :goto_f

    :cond_1a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v12, 0x25

    invoke-virtual {v0, v12}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v7

    goto/16 :goto_1

    :cond_1b
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_1c
    const/4 v0, 0x1

    goto/16 :goto_5

    :cond_1d
    const/4 v0, 0x1

    goto/16 :goto_6

    :cond_1e
    const-string v0, "MSG_SPACE_REQUIRED_AFTER_ENTITY_NAME_IN_ENTITYDECL"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    invoke-virtual {p0, v0, v12}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1f
    const/4 v0, 0x1

    goto/16 :goto_8

    :cond_20
    const/4 v0, 0x1

    goto/16 :goto_9

    :cond_21
    const/4 v0, 0x1

    goto/16 :goto_a

    :cond_22
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->addExternalEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_23
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v12, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    const/4 v13, 0x0

    invoke-interface {v0, v1, v12, v13}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->externalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_c

    :cond_24
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v12, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v12}, Lmf/org/apache/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v1, v12}, Lmf/org/apache/xerces/impl/XMLEntityManager;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v12, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v13, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/4 v14, 0x0

    invoke-interface {v0, v1, v12, v13, v14}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->internalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_c
.end method

.method private final scanMixed(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/16 v7, 0x7c

    const/16 v6, 0x29

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string v4, "#PCDATA"

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v1, v5}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->pcdata(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-direct {p0, v2, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v4, ")*"

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string v2, ")*"

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v1, v5}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->endGroup(Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    const/4 v2, 0x3

    invoke-interface {v1, v2, v5}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    :goto_2
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v1, v2, v5}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->separator(SLmf/org/apache/xerces/xni/Augmentations;)V

    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    :goto_3
    invoke-direct {p0, v2, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v1, "MSG_ELEMENT_TYPE_REQUIRED_IN_MIXED_CONTENT"

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {p0, v1, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v1, v0, v5}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->element(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    :goto_4
    invoke-direct {p0, v2, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    goto :goto_1

    :cond_7
    move v1, v3

    goto :goto_3

    :cond_8
    move v1, v3

    goto :goto_4

    :cond_9
    if-eqz v0, :cond_a

    const-string v1, "MixedContentUnterminated"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {p0, v1, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v1, v5}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->endGroup(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_2

    :cond_b
    const-string v1, "MSG_CLOSE_PAREN_REQUIRED_IN_CHILDREN"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {p0, v1, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private final scanNotationDecl()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/16 v8, 0x3a

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    :goto_0
    invoke-direct {p0, v7, v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "MSG_SPACE_REQUIRED_BEFORE_NOTATION_NAME_IN_NOTATIONDECL"

    invoke-virtual {p0, v5, v10}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v2, 0x0

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fNamespaces:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanNCName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_1

    const-string v5, "MSG_NOTATION_NAME_REQUIRED_IN_NOTATIONDECL"

    invoke-virtual {p0, v5, v10}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v6

    :goto_2
    invoke-direct {p0, v7, v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v5

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fNamespaces:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v5

    if-ne v5, v8, :cond_a

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    new-instance v1, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    const-string v5, "ColonNotLegalWithNS"

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {p0, v5, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, v6

    :goto_3
    invoke-direct {p0, v7, v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    :cond_2
    :goto_4
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    invoke-virtual {p0, v5, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanExternalID([Ljava/lang/String;Z)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    aget-object v4, v5, v6

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    aget-object v3, v5, v7

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->getBaseSystemId()Ljava/lang/String;

    move-result-object v0

    if-nez v4, :cond_3

    if-nez v3, :cond_3

    const-string v5, "ExternalIDorPublicIDRequired"

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v2, v8, v6

    invoke-virtual {p0, v5, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v5

    if-eqz v5, :cond_b

    move v5, v6

    :goto_5
    invoke-direct {p0, v6, v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v8, 0x3e

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "NotationDeclUnterminated"

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v2, v8, v6

    invoke-virtual {p0, v5, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-static {v4, v0, v6}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v4, v0, v6}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-interface {v5, v2, v6, v10}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->notationDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_5
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    return-void

    :cond_6
    move v5, v7

    goto/16 :goto_0

    :cond_7
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_8
    move v5, v7

    goto/16 :goto_2

    :cond_9
    move v5, v7

    goto :goto_3

    :cond_a
    const-string v5, "MSG_SPACE_REQUIRED_AFTER_NOTATION_NAME_IN_NOTATIONDECL"

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v2, v8, v6

    invoke-virtual {p0, v5, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_b
    move v5, v7

    goto :goto_5
.end method

.method private skipInvalidEnumerationValue()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v0

    const/16 v1, 0x7c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x29

    if-ne v0, v1, :cond_0

    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->ensureEnumerationSize(I)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    aput-object v3, v1, v2

    return v0
.end method

.method private skipSeparator(ZZ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/16 v7, 0x25

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v2

    if-eqz p2, :cond_0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    if-nez v2, :cond_1

    iget v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    if-ne v0, v5, :cond_1

    move v3, v4

    :cond_1
    :goto_0
    return v3

    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v5, "NameRequiredInPEReference"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    invoke-virtual {p0, v1, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->startPE(Ljava/lang/String;Z)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "SemicolonRequiredInPEReference"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v1, v6, v4

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public endEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/impl/XMLScanner;->endEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    const-string v2, "%"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->peekReportEntity()Z

    move-result v0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->popPEStack()I

    move-result v1

    if-nez v1, :cond_2

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "ILL_FORMED_PARAMETER_ENTITY_WHEN_USED_IN_DECL"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->name:Ljava/lang/String;

    aput-object v6, v5, v7

    const/4 v6, 0x2

    invoke-virtual {v2, v3, v4, v5, v6}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_2
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    if-eq v1, v2, :cond_3

    const/4 v0, 0x0

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fValidation:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "ImproperDeclarationNesting"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-virtual {v2, v3, v4, v5, v8}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->isExternal()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v2, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    :cond_5
    const-string v2, "[dtd]"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    if-eqz v2, :cond_6

    const-string v2, "IncludeSectUnterminated"

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iput v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->endExternalSubset()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endExternalSubset(Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_7
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    goto/16 :goto_0
.end method

.method public getDTDContentModelHandler()Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    return-object v0
.end method

.method public getDTDHandler()Lmf/org/apache/xerces/xni/XMLDTDHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    return-object v0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object v1, v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .locals 0

    invoke-super {p0}, Lmf/org/apache/xerces/impl/XMLScanner;->reset()V

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->init()V

    return-void
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/XMLScanner;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->init()V

    return-void
.end method

.method protected final scanAttDefaultDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/XMLString;->clear()V

    invoke-virtual {p4}, Lmf/org/apache/xerces/xni/XMLString;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v3, "#REQUIRED"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v6, "#REQUIRED"

    :goto_0
    return-object v6

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v3, "#IMPLIED"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v6, "#IMPLIED"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v3, "#FIXED"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v6, "#FIXED"

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "MSG_SPACE_REQUIRED_AFTER_FIXED_IN_DEFAULTDECL"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v2

    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStandalone:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSeenExternalDTD:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSeenPEReferences:Z

    if-eqz v0, :cond_5

    :cond_3
    move v4, v2

    :goto_2
    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanAttributeValue(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Ljava/lang/String;ZLjava/lang/String;)Z

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v4, v1

    goto :goto_2
.end method

.method protected final scanAttlistDecl()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    const/4 v6, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v6, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_ELEMENT_TYPE_IN_ATTLISTDECL"

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "MSG_ELEMENT_TYPE_REQUIRED_IN_ATTLISTDECL"

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    const/4 v6, 0x0

    invoke-interface {v0, v1, v6}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startAttlist(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_2
    const/4 v6, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v6, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v6, 0x3e

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endAttlist(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    :goto_2
    return-void

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_ATTRIBUTE_NAME_IN_ATTDEF"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {p0, v0, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v6, 0x3e

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endAttlist(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_8
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    const-string v0, "AttNameRequiredInAttDef"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {p0, v0, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    const/4 v6, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    :goto_4
    invoke-direct {p0, v6, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_ATTTYPE_IN_ATTDEF"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-virtual {p0, v0, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    invoke-direct {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanAttType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    :goto_5
    invoke-direct {p0, v6, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "MSG_SPACE_REQUIRED_BEFORE_DEFAULTDECL_IN_ATTDEF"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-virtual {p0, v0, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanAttDefaultDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_f

    const/4 v4, 0x0

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    if-eqz v0, :cond_d

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    invoke-static {v0, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    if-eqz v5, :cond_12

    const-string v0, "#REQUIRED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "#IMPLIED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_e
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_f
    :goto_6
    const/4 v6, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    :goto_7
    invoke-direct {p0, v6, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    goto/16 :goto_3

    :cond_10
    const/4 v0, 0x1

    goto :goto_4

    :cond_11
    const/4 v0, 0x1

    goto :goto_5

    :cond_12
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_6

    :cond_13
    const/4 v0, 0x1

    goto :goto_7
.end method

.method protected final scanComment()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanComment(Lmf/org/apache/xerces/util/XMLStringBuffer;)V

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    return-void
.end method

.method public scanDTDExternalSubset(Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v3, p0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    if-ne v3, v2, :cond_2

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSeenExternalDTD:Z

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanTextDecl()Z

    move-result v0

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setScannerState(I)V

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanDecls(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0
.end method

.method public scanDTDInternalSubset(ZZZ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lmf/org/apache/xerces/impl/XMLEntityScanner;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1, p0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStandalone:Z

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startDTD(Lmf/org/apache/xerces/xni/XMLLocator;Lmf/org/apache/xerces/xni/Augmentations;)V

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStartDTDCalled:Z

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setScannerState(I)V

    :cond_1
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanDecls(Z)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_2

    if-nez p3, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v1, v3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_2
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setScannerState(I)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    if-nez p1, :cond_1

    goto :goto_0
.end method

.method protected final scanDecls(Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/16 v8, 0x2d

    const/16 v7, 0x5d

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v2, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    :cond_0
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    if-eqz v4, :cond_1

    move v2, v3

    :cond_1
    return v2

    :cond_2
    move v0, p1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v4

    if-eqz v4, :cond_d

    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v5, 0x3f

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanPI()V

    :cond_3
    :goto_1
    invoke-direct {p0, v2, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v5, 0x21

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-virtual {p0, v4, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanComment()V

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v5, "ELEMENT"

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanElementDecl()V

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v5, "ATTLIST"

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanAttlistDecl()V

    goto :goto_1

    :cond_8
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v5, "ENTITY"

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanEntityDecl()V

    goto :goto_1

    :cond_9
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v5, "NOTATION"

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanNotationDecl()V

    goto :goto_1

    :cond_a
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-nez v4, :cond_b

    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanConditionalSect(I)V

    goto :goto_1

    :cond_b
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    const-string v4, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-virtual {p0, v4, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_c
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    const-string v4, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-virtual {p0, v4, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_d
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    if-lez v4, :cond_11

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v4

    if-nez v4, :cond_f

    :cond_e
    const-string v4, "IncludeSectUnterminated"

    invoke-virtual {p0, v4, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_10

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v4, v6}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endConditional(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_10
    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    goto/16 :goto_1

    :cond_11
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v4

    if-eq v4, v7, :cond_1

    :cond_12
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-virtual {p0, v4, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    invoke-direct {p0, v2, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v1

    const/16 v4, 0x3c

    if-eq v1, v4, :cond_3

    if-eq v1, v7, :cond_3

    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v4

    if-eqz v4, :cond_13

    goto/16 :goto_1
.end method

.method protected final scanElementDecl()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/16 v7, 0x28

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_0
    invoke-direct {p0, v4, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MSG_SPACE_REQUIRED_BEFORE_ELEMENT_TYPE_IN_ELEMENTDECL"

    invoke-virtual {p0, v2, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "MSG_ELEMENT_TYPE_REQUIRED_IN_ELEMENTDECL"

    invoke-virtual {p0, v2, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    :goto_1
    invoke-direct {p0, v4, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "MSG_SPACE_REQUIRED_BEFORE_CONTENTSPEC_IN_ELEMENTDECL"

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-virtual {p0, v2, v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v2, v1, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->startContentModel(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v5, "EMPTY"

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v0, "EMPTY"

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v2, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->empty(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_4
    :goto_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v2, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->endContentModel(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_5
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v2

    if-eqz v2, :cond_10

    move v2, v3

    :goto_3
    invoke-direct {p0, v3, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v5, 0x3e

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "ElementDeclUnterminated"

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-virtual {p0, v2, v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v2, v1, v0, v6}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_7
    return-void

    :cond_8
    move v2, v4

    goto/16 :goto_0

    :cond_9
    move v2, v4

    goto :goto_1

    :cond_a
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v5, "ANY"

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v0, "ANY"

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v2, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->any(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_2

    :cond_b
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "MSG_OPEN_PAREN_OR_ELEMENT_TYPE_REQUIRED_IN_CHILDREN"

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-virtual {p0, v2, v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v2, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->startGroup(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_d
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v2

    if-eqz v2, :cond_e

    move v2, v3

    :goto_4
    invoke-direct {p0, v3, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v5, "#PCDATA"

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanMixed(Ljava/lang/String;)V

    :goto_5
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_e
    move v2, v4

    goto :goto_4

    :cond_f
    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanChildren(Ljava/lang/String;)V

    goto :goto_5

    :cond_10
    move v2, v4

    goto/16 :goto_3
.end method

.method protected final scanEntityValue(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v6

    const/16 v7, 0x27

    if-eq v6, v7, :cond_0

    const/16 v7, 0x22

    if-eq v6, v7, :cond_0

    const-string v7, "OpenQuoteMissingInDecl"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityDepth:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v7, v6, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanLiteral(ILmf/org/apache/xerces/xni/XMLString;)I

    move-result v7

    if-eq v7, v6, :cond_3

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    :cond_1
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v8, 0x23

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string v8, "&#"

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanCharReferenceValue(Lmf/org/apache/xerces/util/XMLStringBuffer;Lmf/org/apache/xerces/util/XMLStringBuffer;)I

    :cond_2
    :goto_0
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v7, v6, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanLiteral(ILmf/org/apache/xerces/xni/XMLString;)I

    move-result v7

    if-ne v7, v6, :cond_1

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    :cond_3
    invoke-virtual {p1, v3}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    invoke-virtual {p2, v4}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "CloseQuoteMissingInDecl"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void

    :cond_5
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x26

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v7, "NameRequiredInReference"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "SemicolonRequiredInReference"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_0

    :cond_8
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v8, 0x25

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_9
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x25

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a

    const-string v7, "NameRequiredInPEReference"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    const/4 v7, 0x1

    invoke-virtual {p0, v5, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->startPE(Ljava/lang/String;Z)V

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v8, 0x25

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v7

    if-nez v7, :cond_9

    goto/16 :goto_0

    :cond_a
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v7

    if-nez v7, :cond_b

    const-string v7, "SemicolonRequiredInPEReference"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_b
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "PEReferenceWithinMarkup"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v7, v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_2

    :cond_d
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanSurrogates(Lmf/org/apache/xerces/util/XMLStringBuffer;)Z

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->isInvalidLiteral(I)Z

    move-result v7

    if-eqz v7, :cond_f

    const-string v7, "InvalidCharInLiteral"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    goto/16 :goto_0

    :cond_f
    if-ne v0, v6, :cond_10

    iget v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityDepth:I

    if-eq v2, v7, :cond_2

    :cond_10
    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v8, v0

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v8, v0

    invoke-virtual {v7, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    goto/16 :goto_0
.end method

.method protected final scanPIData(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/impl/XMLScanner;->scanPIData(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;)V

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    return-void
.end method

.method protected final scanTextDecl()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string v5, "<?xml"

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v4

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->isValidNameChar(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string/jumbo v5, "xml"

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fNamespaces:Z

    if-eqz v4, :cond_3

    :goto_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v4

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->isValidNCName(I)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v5, v5, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v6, v6, Lmf/org/apache/xerces/util/XMLStringBuffer;->offset:I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v7, v7, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v4, v5, v6, v7}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {p0, v1, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanPIData(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;)V

    :cond_0
    :goto_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-boolean v8, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->mayReadChunks:Z

    return v2

    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    :cond_3
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v4

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->isValidNameChar(I)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    invoke-virtual {p0, v8, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanXMLDeclOrTextDecl(Z[Ljava/lang/String;)V

    const/4 v2, 0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v3, v4, v5

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    aget-object v0, v4, v8

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->setXMLVersion(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isEncodingExternallySpecified()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->setEncoding(Ljava/lang/String;)V

    :cond_5
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    const/4 v5, 0x0

    invoke-interface {v4, v3, v0, v5}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_2
.end method

.method protected final scanningInternalSubset()Z
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    return-void
.end method

.method public setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    return-void
.end method

.method public setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, v1, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startDTD(Lmf/org/apache/xerces/xni/XMLLocator;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startDTDEntity(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    goto :goto_0
.end method

.method protected final setScannerState(I)V
    .locals 0

    iput p1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    return-void
.end method

.method public startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/XMLScanner;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    const-string v1, "[dtd]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStartDTDCalled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startDTD(Lmf/org/apache/xerces/xni/XMLLocator;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v1, p2, v3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startExternalSubset(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startExternalSubset()V

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    :cond_2
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v1, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_2

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    invoke-direct {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->pushPEStack(IZ)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->isExternal()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    goto :goto_0
.end method

.method protected startPE(Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v7, 0x1

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSeenPEReferences:Z

    if-nez v2, :cond_0

    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSeenPEReferences:Z

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->notifyHasPEReferences()V

    :cond_0
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fValidation:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->isDeclaredEntity(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "EntityNotDeclared"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v4, v5, v7}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Z)V

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->isExternal()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanTextDecl()Z

    :cond_2
    return-void
.end method
