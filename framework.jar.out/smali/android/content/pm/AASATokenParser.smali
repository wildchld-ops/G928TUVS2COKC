.class public Landroid/content/pm/AASATokenParser;
.super Ljava/lang/Object;
.source "AASATokenParser.java"


# instance fields
.field private mArchiveSourcePath:Ljava/lang/String;

.field private mCertPath:Ljava/lang/String;

.field private mTokenContents:[B

.field private mTokenName:Ljava/lang/String;

.field private mTokenValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private misDeviceMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mTokenName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/pm/AASATokenParser;->misDeviceMode:Z

    return-void
.end method

.method private AASA_getTokenContentForDev(Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v4, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1, v4}, Landroid/content/pm/AASATokenParser;->parseDevXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string v4, "AASATokenParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "er"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v4, "AASATokenParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "er"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private AASA_isTargetPackage(Ljava/lang/String;)Z
    .locals 9

    const/4 v6, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v7, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v5, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v7, 0x0

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v5, "PACKAGE"

    invoke-direct {p0, v2, v5, v4}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v7, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v5, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v7, 0x0

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    const-string v7, "AASATokenParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AASA_verifyDevice :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_1
    return v5

    :catch_0
    move-exception v0

    :try_start_2
    const-string v5, "AASATokenParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AASA_verifyDevice er"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    move v5, v6

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v5, "AASATokenParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AASA_verifyDevice err"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    goto :goto_1

    :cond_1
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_1
.end method

.method private AASA_verifyDevice(Ljava/lang/String;)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v7, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v4, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v7, 0x0

    invoke-interface {v1, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v4, "DEVIEID"

    invoke-direct {p0, v1, v4, v3}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v7, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v4, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v7, 0x0

    invoke-interface {v1, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    :goto_0
    return v4

    :cond_0
    move v4, v6

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v4, "AASATokenParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AASA_verifyDevice er"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    move v4, v6

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v4, "AASATokenParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AASA_verifyDevice err"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_0
.end method

.method public static SHA256(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/AASATokenParser;->convertToHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static byteListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string v3, ""

    :goto_0
    return-object v3

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_1
    const-string v3, "ISO-8859-1"

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private checkHash(Ljava/lang/String;)Z
    .locals 13

    const/4 v9, 0x1

    const/4 v10, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/util/jar/JarFile;

    iget-object v11, p0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-direct {v6, v11}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v6, :cond_4

    :try_start_1
    invoke-virtual {v6}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/jar/JarEntry;

    invoke-virtual {v3}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v11, "META-INF/"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string/jumbo v11, "token"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "Token.xml"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    :cond_1
    invoke-static {v6, v3, v0}, Landroid/content/pm/AASATokenParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/util/List;)[Ljava/security/cert/Certificate;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v5, v6

    :goto_1
    const-string v9, "AASATokenParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " ERROR: AASA_VerifyToken check hash "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    :goto_2
    return v9

    :cond_2
    if-eqz v6, :cond_3

    :try_start_2
    invoke-virtual {v6}, Ljava/util/jar/JarFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    const/4 v8, 0x0

    :try_start_3
    invoke-static {v0}, Landroid/content/pm/AASATokenParser;->byteListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/content/pm/AASATokenParser;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v8

    :try_start_4
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-ne v11, v9, :cond_4

    move-object v5, v6

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v9, "AASATokenParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " SHA1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v5, v6

    move v9, v10

    goto :goto_2

    :cond_4
    move-object v5, v6

    move v9, v10

    goto :goto_2

    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method private checkTokentarget(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const-string v8, "AASATokenParser"

    const-string v9, "ERROR: checkTokenTarget input is null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v7

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v8, ","

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v8, ","

    invoke-virtual {p2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "ro.product.model"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const-string v8, "ALL"

    aget-object v9, v4, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    array-length v8, v4

    if-ne v8, v10, :cond_6

    const-string v8, "ALL"

    aget-object v9, v3, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    array-length v7, v3

    if-ne v7, v10, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    const/4 v0, 0x1

    :goto_1
    array-length v7, v3

    if-ge v0, v7, :cond_0

    aget-object v7, v3, v0

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const-string v8, "ALL"

    aget-object v7, v3, v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v0, 0x0

    :goto_2
    array-length v7, v3

    if-ge v0, v7, :cond_0

    aget-object v7, v3, v0

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x1

    const/4 v0, 0x1

    :goto_3
    array-length v8, v4

    if-ge v0, v8, :cond_7

    aget-object v8, v4, v0

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v2, 0x0

    :cond_7
    if-ne v2, v10, :cond_0

    const-string v8, "ALL"

    aget-object v9, v3, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    array-length v7, v3

    if-ne v7, v10, :cond_9

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    const/4 v0, 0x1

    :goto_4
    array-length v7, v3

    if-ge v0, v7, :cond_0

    aget-object v7, v3, v0

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    const-string v8, "ALL"

    aget-object v7, v3, v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_5
    array-length v7, v3

    if-ge v1, v7, :cond_0

    aget-object v7, v3, v1

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_d
    const-string v8, "ALL"

    aget-object v9, v4, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v0, 0x0

    :goto_6
    array-length v8, v4

    if-ge v0, v8, :cond_e

    aget-object v8, v4, v0

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    const/4 v2, 0x1

    :cond_e
    if-ne v2, v10, :cond_0

    const-string v8, "ALL"

    aget-object v9, v3, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    array-length v7, v3

    if-ne v7, v10, :cond_11

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_7
    array-length v7, v4

    if-ge v0, v7, :cond_0

    aget-object v7, v4, v0

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    const/4 v0, 0x1

    :goto_8
    array-length v7, v3

    if-ge v0, v7, :cond_0

    aget-object v7, v3, v0

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_13
    const-string v8, "ALL"

    aget-object v7, v3, v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_9
    array-length v7, v3

    if-ge v1, v7, :cond_0

    aget-object v7, v3, v1

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .locals 9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, p0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-byte v1, v0, v4

    ushr-int/lit8 v8, v1, 0x4

    and-int/lit8 v3, v8, 0xf

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ltz v3, :cond_0

    const/16 v8, 0x9

    if-gt v3, v8, :cond_0

    add-int/lit8 v8, v3, 0x30

    int-to-char v8, v8

    :goto_2
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v1, 0xf

    add-int/lit8 v6, v7, 0x1

    const/4 v8, 0x1

    if-lt v7, v8, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v8, v3, -0xa

    add-int/lit8 v8, v8, 0x61

    int-to-char v8, v8

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_2
    move v7, v6

    goto :goto_1
.end method

.method public static isInteger(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/util/List;)[Ljava/security/cert/Certificate;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            "Ljava/util/jar/JarEntry;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)[",
            "Ljava/security/cert/Certificate;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v4, 0x0

    const/16 v6, 0x400

    new-array v3, v6, [B

    if-eqz v2, :cond_2

    :cond_0
    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-virtual {v2, v3, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-byte v6, v3, v1

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    :cond_3
    :goto_1
    return-object v5

    :catch_0
    move-exception v0

    const-string v6, "AASATokenParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No IO "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v6

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v6, "AASATokenParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No RUN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catch_3
    move-exception v6

    goto :goto_1
.end method

.method private loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v3, 0x0

    array-length v4, p3

    invoke-virtual {v1, p3, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    :cond_2
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v3, "AASATokenParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No IO "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v3, "AASATokenParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No RUN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method private parseDevXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v7, 0x0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-eq v2, v9, :cond_4

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "PACKAGE"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v8

    if-ge v4, v8, :cond_2

    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    move v3, v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    const-string v8, "PERMISSION"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v4, 0x0

    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v8

    if-ge v4, v8, :cond_3

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const-string v8, "DATE"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v4, 0x0

    :goto_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v8

    if-ge v4, v8, :cond_0

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    if-ne v3, v9, :cond_5

    if-eqz v0, :cond_5

    if-eqz p3, :cond_5

    invoke-virtual {p3, v9, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_4
    return v3

    :cond_5
    move v3, v7

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-eq v2, v4, :cond_1

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    const/4 v4, 0x0

    :cond_2
    return v4

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static toChars([B)[C
    .locals 10

    const/16 v9, 0xa

    move-object v4, p0

    array-length v0, v4

    mul-int/lit8 v1, v0, 0x2

    new-array v5, v1, [C

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-byte v6, v4, v3

    shr-int/lit8 v7, v6, 0x4

    and-int/lit8 v2, v7, 0xf

    mul-int/lit8 v8, v3, 0x2

    if-lt v2, v9, :cond_0

    add-int/lit8 v7, v2, 0x61

    add-int/lit8 v7, v7, -0xa

    :goto_1
    int-to-char v7, v7

    aput-char v7, v5, v8

    and-int/lit8 v2, v6, 0xf

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v8, v7, 0x1

    if-lt v2, v9, :cond_1

    add-int/lit8 v7, v2, 0x61

    add-int/lit8 v7, v7, -0xa

    :goto_2
    int-to-char v7, v7

    aput-char v7, v5, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v7, v2, 0x30

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v2, 0x30

    goto :goto_2

    :cond_2
    return-object v5
.end method


# virtual methods
.method public AASA_IsToken(Ljava/lang/String;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarEntry;

    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "token"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "Token.xml"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    iput-object p1, p0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    iput-object v5, p0, Landroid/content/pm/AASATokenParser;->mTokenName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, 0x1

    :cond_1
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    move-object v3, v4

    :cond_2
    :goto_0
    return v6

    :catch_0
    move-exception v2

    :goto_1
    :try_start_2
    const-string v7, "AASATokenParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ERROR: AASA_IsToken "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    goto :goto_0

    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V

    :cond_3
    throw v7

    :catchall_1
    move-exception v7

    move-object v3, v4

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v3, v4

    goto :goto_1

    :cond_4
    move-object v3, v4

    goto :goto_0
.end method

.method public AASA_VerifyFile([B)[B
    .locals 1

    invoke-virtual {p0, p1}, Landroid/content/pm/AASATokenParser;->checkIntegrity([B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public AASA_VerifyToken(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v23, "AASATokenParser"

    const-string v24, " AASA_VerifyToken START"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v13, Ljava/util/jar/JarFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v13, :cond_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v13, v11, v1}, Landroid/content/pm/AASATokenParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/AASATokenParser;->checkIntegrity([B)[B

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/AASATokenParser;->mTokenContents:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    if-eqz v13, :cond_16

    invoke-virtual {v13}, Ljava/util/jar/JarFile;->close()V

    move-object v12, v13

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    if-nez v4, :cond_4

    :cond_2
    const-string v23, "AASATokenParser"

    const-string v24, " ERROR: plz check certification in the device"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    :goto_1
    return v23

    :catch_0
    move-exception v10

    :goto_2
    :try_start_2
    const-string v23, "AASATokenParser"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " ERROR: AASA_VerifyToken "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/util/jar/JarFile;->close()V

    goto :goto_0

    :catchall_0
    move-exception v23

    :goto_3
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/util/jar/JarFile;->close()V

    :cond_3
    throw v23

    :cond_4
    const/4 v12, 0x0

    const/4 v11, 0x0

    :try_start_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v17

    new-instance v23, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    const-string v23, "MODE"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v17

    new-instance v23, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Landroid/content/pm/AASATokenParser;->isInteger(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_6

    const/16 v23, 0x0

    goto/16 :goto_1

    :cond_5
    const/16 v23, 0x0

    goto/16 :goto_1

    :cond_6
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->misDeviceMode:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    const/16 v23, 0xff

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    const-string v23, "AASATokenParser"

    const-string v24, " Ship mode device does not support MODE 255"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    goto/16 :goto_1

    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sparse-switch v22, :sswitch_data_0

    const/16 v23, 0x0

    goto/16 :goto_1

    :sswitch_0
    const-string v23, "PACKAGE"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v23, "CERT"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v23, "DIGEST"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v23, "MODELS"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v23, "CARRIERS"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    :sswitch_1
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    const/4 v7, 0x0

    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v7, v0, :cond_9

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v17

    new-instance v23, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :sswitch_2
    const-string v23, "PACKAGE"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v23, "CERT"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_1
    move-exception v6

    :try_start_5
    const-string v23, "AASATokenParser"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2

    const/16 v23, 0x0

    goto/16 :goto_1

    :sswitch_3
    :try_start_6
    const-string v23, "CERT"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception v6

    const-string v23, "AASATokenParser"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    goto/16 :goto_1

    :sswitch_4
    :try_start_7
    const-string v23, "UUID"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :sswitch_5
    const-string v23, "PACKAGE"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :sswitch_6
    const-string v23, "UUID"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v23, "ACCOUNT"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :sswitch_7
    const-string v23, "PACKAGE"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v23, "CERT"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_8
    const-string v23, "AASATokenParser"

    const-string v24, " Token does not have value"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    goto/16 :goto_1

    :cond_9
    const/16 v20, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v7, v0, :cond_14

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const-string v24, "PACKAGE"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    const-string v23, "AASATokenParser"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "OK:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v20, v20, 0x1

    :cond_a
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_b
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const-string v24, "CERT"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    const/4 v9, 0x0

    :goto_8
    array-length v0, v4

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v9, v0, :cond_a

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    new-instance v24, Ljava/lang/String;

    aget-object v25, v4, v9

    invoke-virtual/range {v25 .. v25}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/content/pm/AASATokenParser;->toChars([B)[C

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/String;-><init>([C)V

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    add-int/lit8 v20, v20, 0x1

    const-string v23, "AASATokenParser"

    const-string v24, "OK:CERT"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_d
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const-string v24, "UUID"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    const-string v23, "AASATokenParser"

    const-string v24, "OK:UUID"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_a

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    :cond_e
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const-string v24, "ACCOUNT"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    const-string v23, "AASATokenParser"

    const-string v24, "OK:ACCOUNT"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_7

    :cond_f
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const-string v24, "DIGEST"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/pm/AASATokenParser;->checkHash(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_a

    const-string v23, "AASATokenParser"

    const-string v24, "OK:HASH"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_7

    :cond_10
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const-string v24, "MODELS"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_12

    if-nez v8, :cond_11

    const/4 v8, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    goto/16 :goto_7

    :cond_11
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Landroid/content/pm/AASATokenParser;->checkTokentarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_a

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_7

    :cond_12
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const-string v24, "CARRIERS"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v8, v0, :cond_13

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Landroid/content/pm/AASATokenParser;->checkTokentarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_a

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_7

    :cond_13
    const/4 v8, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    goto/16 :goto_7

    :cond_14
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2

    move-result v23

    move/from16 v0, v23

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    const/16 v23, 0x1

    goto/16 :goto_1

    :cond_15
    const/16 v23, 0x0

    goto/16 :goto_1

    :catchall_1
    move-exception v23

    move-object v12, v13

    goto/16 :goto_3

    :catch_3
    move-exception v10

    move-object v12, v13

    goto/16 :goto_2

    :cond_16
    move-object v12, v13

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0xff -> :sswitch_1
    .end sparse-switch
.end method

.method public AASA_getTokenContent()Z
    .locals 7

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v4, "PACKAGE"

    iget-object v5, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v4, v5}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v4, "DATE"

    iget-object v5, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v4, v5}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v4, "PERMISSION"

    iget-object v5, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v4, v5}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string v4, "AASATokenParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "er"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v4, "AASATokenParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "er"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public aasaDevToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    const/4 v5, 0x0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x0

    :goto_0
    return v8

    :cond_0
    const/4 v6, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->available()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v2

    if-eqz v2, :cond_3

    new-array v0, v2, [B

    :try_start_2
    invoke-virtual {v7, v0}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {p0, v0}, Landroid/content/pm/AASATokenParser;->AASA_VerifyFile([B)[B

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    iput-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    const-string v8, "AASATokenParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " targetPackage:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3}, Landroid/content/pm/AASATokenParser;->AASA_isTargetPackage(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0, p2}, Landroid/content/pm/AASATokenParser;->AASA_verifyDevice(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    invoke-direct {p0, p3}, Landroid/content/pm/AASATokenParser;->AASA_getTokenContentForDev(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    const/4 v8, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    :goto_1
    const-string v8, "AASATokenParser"

    const-string v9, "eer readfiles2"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    goto :goto_0

    :catch_1
    move-exception v3

    :goto_2
    const-string v8, "AASATokenParser"

    const-string v9, "eer readfiles3"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    :try_start_3
    const-string v8, "AASATokenParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " targetPackage:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not DevTargert"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    if-eqz v7, :cond_4

    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_3
    const/4 v8, 0x0

    goto/16 :goto_0

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v3

    move-object v6, v7

    goto :goto_2

    :catch_5
    move-exception v4

    move-object v6, v7

    goto :goto_1
.end method

.method checkIntegrity([B)[B
    .locals 14

    array-length v11, p1

    const/16 v12, 0x100

    if-ge v11, v12, :cond_0

    const/4 v11, 0x0

    :goto_0
    return-object v11

    :cond_0
    const/16 v11, 0x100

    :try_start_0
    new-array v7, v11, [B

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x100

    invoke-static {p1, v11, v7, v12, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v11, 0x7

    new-array v10, v11, [B

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/16 v3, 0x100

    :goto_1
    aget-byte v11, p1, v3

    const/16 v12, 0x2c

    if-eq v11, v12, :cond_1

    const/4 v11, 0x7

    if-lt v6, v11, :cond_2

    const/4 v4, 0x1

    :cond_1
    const/4 v11, 0x1

    if-ne v4, v11, :cond_3

    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    aget-byte v11, p1, v3

    aput-byte v11, v10, v6

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    new-array v5, v6, [B

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v5, v12, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    new-array v11, v9, [B

    iput-object v11, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    add-int/lit16 v11, v6, 0x100

    const-string v12, ","

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    const/4 v13, 0x0

    invoke-static {p1, v11, v12, v13, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v1, 0x0

    const-string v11, "SHA256WithRSAEncryption"

    invoke-static {v11}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v8

    const-string/jumbo v11, "x.509"

    invoke-static {v11}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v11, p0, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;

    invoke-direct {v1, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    iget-object v11, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v12, v9}, Ljava/security/Signature;->update([BII)V

    invoke-virtual {v8, v7}, Ljava/security/Signature;->verify([B)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "AASATokenParser"

    const-string v12, "Token is verificated in checkIntegrity!"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    goto/16 :goto_0

    :cond_4
    const-string v11, "AASATokenParser"

    const-string v12, "Token is NOT verificated in checkIntegrity!"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v11, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v11, "AASATokenParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ERROR: checkIntegrity "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public getValue()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCertPath(Z)V
    .locals 2

    iput-boolean p1, p0, Landroid/content/pm/AASATokenParser;->misDeviceMode:Z

    iget-boolean v0, p0, Landroid/content/pm/AASATokenParser;->misDeviceMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "/system/etc/aasa_real_crt.crt"

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "/data/aasa_test_crt.crt"

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;

    goto :goto_0
.end method
