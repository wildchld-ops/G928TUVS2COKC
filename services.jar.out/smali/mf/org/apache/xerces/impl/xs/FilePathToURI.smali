.class final Lmf/org/apache/xerces/impl/xs/FilePathToURI;
.super Ljava/lang/Object;
.source "FilePathToURI.java"


# static fields
.field private static gAfterEscaping1:[C

.field private static gAfterEscaping2:[C

.field private static gHexChs:[C

.field private static gNeedEscaping:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v5, 0x80

    const/16 v8, 0x7f

    const/4 v7, 0x1

    new-array v4, v5, [Z

    sput-object v4, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gNeedEscaping:[Z

    new-array v4, v5, [C

    sput-object v4, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping1:[C

    new-array v4, v5, [C

    sput-object v4, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping2:[C

    const/16 v4, 0x10

    new-array v4, v4, [C

    fill-array-data v4, :array_0

    sput-object v4, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gHexChs:[C

    const/4 v2, 0x0

    :goto_0
    const/16 v4, 0x1f

    if-le v2, v4, :cond_0

    sget-object v4, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gNeedEscaping:[Z

    aput-boolean v7, v4, v8

    sget-object v4, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping1:[C

    const/16 v5, 0x37

    aput-char v5, v4, v8

    sget-object v4, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping2:[C

    const/16 v5, 0x46

    aput-char v5, v4, v8

    const/16 v4, 0xf

    new-array v1, v4, [C

    fill-array-data v1, :array_1

    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_1

    return-void

    :cond_0
    sget-object v4, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gNeedEscaping:[Z

    aput-boolean v7, v4, v2

    sget-object v4, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping1:[C

    sget-object v5, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gHexChs:[C

    shr-int/lit8 v6, v2, 0x4

    aget-char v5, v5, v6

    aput-char v5, v4, v2

    sget-object v4, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping2:[C

    sget-object v5, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gHexChs:[C

    and-int/lit8 v6, v2, 0xf

    aget-char v5, v5, v6

    aput-char v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    aget-char v0, v1, v2

    sget-object v4, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gNeedEscaping:[Z

    aput-boolean v7, v4, v0

    sget-object v4, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping1:[C

    sget-object v5, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gHexChs:[C

    shr-int/lit8 v6, v0, 0x4

    aget-char v5, v5, v6

    aput-char v5, v4, v0

    sget-object v4, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping2:[C

    sget-object v5, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gHexChs:[C

    and-int/lit8 v6, v0, 0xf

    aget-char v5, v5, v6

    aput-char v5, v4, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    nop

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
        0x23s
        0x25s
        0x22s
        0x7bs
        0x7ds
        0x7cs
        0x5cs
        0x5es
        0x7es
        0x5bs
        0x5ds
        0x60s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filepath2URI(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/16 v11, 0x2f

    const/16 v10, 0x25

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_0
    sget-char v7, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v7, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 v8, v6, 0x3

    invoke-direct {v1, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string/jumbo v8, "file://"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v8, 0x2

    if-lt v6, v8, :cond_1

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3a

    if-ne v8, v9, :cond_1

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    const/16 v8, 0x41

    if-lt v3, v8, :cond_1

    const/16 v8, 0x5a

    if-gt v3, v8, :cond_1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-lt v5, v6, :cond_4

    :cond_2
    if-ge v5, v6, :cond_3

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    array-length v6, v2

    const/4 v5, 0x0

    :goto_2
    if-lt v5, v6, :cond_6

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v8, 0x80

    if-ge v3, v8, :cond_2

    sget-object v8, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gNeedEscaping:[Z

    aget-boolean v8, v8, v3

    if-eqz v8, :cond_5

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v8, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping1:[C

    aget-char v8, v8, v3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v8, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping2:[C

    aget-char v8, v8, v3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    int-to-char v8, v3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :catch_0
    move-exception v4

    goto :goto_0

    :cond_6
    aget-byte v0, v2, v5

    if-gez v0, :cond_7

    add-int/lit16 v3, v0, 0x100

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v8, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gHexChs:[C

    shr-int/lit8 v9, v3, 0x4

    aget-char v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v8, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gHexChs:[C

    and-int/lit8 v9, v3, 0xf

    aget-char v8, v8, v9

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    sget-object v8, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gNeedEscaping:[Z

    aget-boolean v8, v8, v0

    if-eqz v8, :cond_8

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v8, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping1:[C

    aget-char v8, v8, v0

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v8, Lmf/org/apache/xerces/impl/xs/FilePathToURI;->gAfterEscaping2:[C

    aget-char v8, v8, v0

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_8
    int-to-char v8, v0

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4
.end method
