.class public Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;
.super Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;
.source "AnyURIDV.java"


# static fields
.field private static final BASE_URI:Lmf/org/apache/xerces/util/URI;

.field private static gAfterEscaping1:[C

.field private static gAfterEscaping2:[C

.field private static gHexChs:[C

.field private static gNeedEscaping:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v7, 0x80

    const/16 v10, 0x7f

    const/4 v9, 0x1

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Lmf/org/apache/xerces/util/URI;

    const-string v6, "abc://def.ghi.jkl"

    invoke-direct {v5, v6}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    :goto_0
    sput-object v4, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->BASE_URI:Lmf/org/apache/xerces/util/URI;

    new-array v6, v7, [Z

    sput-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gNeedEscaping:[Z

    new-array v6, v7, [C

    sput-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping1:[C

    new-array v6, v7, [C

    sput-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping2:[C

    const/16 v6, 0x10

    new-array v6, v6, [C

    fill-array-data v6, :array_0

    sput-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gHexChs:[C

    const/4 v2, 0x0

    :goto_1
    const/16 v6, 0x1f

    if-le v2, v6, :cond_0

    sget-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gNeedEscaping:[Z

    aput-boolean v9, v6, v10

    sget-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping1:[C

    const/16 v7, 0x37

    aput-char v7, v6, v10

    sget-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping2:[C

    const/16 v7, 0x46

    aput-char v7, v6, v10

    const/16 v6, 0xb

    new-array v1, v6, [C

    fill-array-data v1, :array_1

    array-length v3, v1

    const/4 v2, 0x0

    :goto_2
    if-lt v2, v3, :cond_1

    return-void

    :cond_0
    sget-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gNeedEscaping:[Z

    aput-boolean v9, v6, v2

    sget-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping1:[C

    sget-object v7, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gHexChs:[C

    shr-int/lit8 v8, v2, 0x4

    aget-char v7, v7, v8

    aput-char v7, v6, v2

    sget-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping2:[C

    sget-object v7, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gHexChs:[C

    and-int/lit8 v8, v2, 0xf

    aget-char v7, v7, v8

    aput-char v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    aget-char v0, v1, v2

    sget-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gNeedEscaping:[Z

    aput-boolean v9, v6, v0

    sget-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping1:[C

    sget-object v7, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gHexChs:[C

    shr-int/lit8 v8, v0, 0x4

    aget-char v7, v7, v8

    aput-char v7, v6, v0

    sget-object v6, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping2:[C

    sget-object v7, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gHexChs:[C

    and-int/lit8 v8, v0, 0xf

    aget-char v7, v7, v8

    aput-char v7, v6, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v6

    goto :goto_0

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x20s
        0x3cs
        0x3es
        0x22s
        0x7bs
        0x7ds
        0x7cs
        0x5cs
        0x5es
        0x7es
        0x60s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;-><init>()V

    return-void
.end method

.method private static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x25

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 v7, v6, 0x3

    invoke-direct {v1, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_3

    :cond_0
    if-ge v5, v6, :cond_1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    array-length v6, v2

    const/4 v5, 0x0

    :goto_1
    if-lt v5, v6, :cond_5

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-eq v7, v6, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_2
    return-object p0

    :cond_3
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x80

    if-ge v3, v7, :cond_0

    sget-object v7, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gNeedEscaping:[Z

    aget-boolean v7, v7, v3

    if-eqz v7, :cond_4

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping1:[C

    aget-char v7, v7, v3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping2:[C

    aget-char v7, v7, v3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    int-to-char v7, v3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :catch_0
    move-exception v4

    goto :goto_2

    :cond_5
    aget-byte v0, v2, v5

    if-gez v0, :cond_6

    add-int/lit16 v3, v0, 0x100

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gHexChs:[C

    shr-int/lit8 v8, v3, 0x4

    aget-char v7, v7, v8

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gHexChs:[C

    and-int/lit8 v8, v3, 0xf

    aget-char v7, v7, v8

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    sget-object v7, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gNeedEscaping:[Z

    aget-boolean v7, v7, v0

    if-eqz v7, :cond_7

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping1:[C

    aget-char v7, v7, v0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping2:[C

    aget-char v7, v7, v0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_7
    int-to-char v7, v0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4
.end method


# virtual methods
.method public getActualValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lmf/org/apache/xerces/util/URI;

    sget-object v3, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->BASE_URI:Lmf/org/apache/xerces/util/URI;

    invoke-direct {v2, v3, v0}, Lmf/org/apache/xerces/util/URI;-><init>(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception v1

    new-instance v2, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v3, "cvc-datatype-valid.1.2.1"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const-string v6, "anyURI"

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method public getAllowedFacets()S
    .locals 1

    const/16 v0, 0x81f

    return v0
.end method
