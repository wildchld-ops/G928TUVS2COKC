.class public abstract Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;
.super Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac$IntegrityHmacMD5;,
        Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac$IntegrityHmacRIPEMD160;,
        Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac$IntegrityHmacSHA1;,
        Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac$IntegrityHmacSHA256;,
        Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac$IntegrityHmacSHA384;,
        Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac$IntegrityHmacSHA512;
    }
.end annotation


# static fields
.field static class$com$sun$org$apache$xml$internal$security$algorithms$implementations$IntegrityHmac$IntegrityHmacSHA1:Ljava/lang/Class;

.field static class$javax$crypto$SecretKey:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field _HMACOutputLength:I

.field private _macAlgorithm:Ljavax/crypto/Mac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$com$sun$org$apache$xml$internal$security$algorithms$implementations$IntegrityHmac$IntegrityHmacSHA1:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.sun.org.apache.xml.internal.security.algorithms.implementations.IntegrityHmac$IntegrityHmacSHA1"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$com$sun$org$apache$xml$internal$security$algorithms$implementations$IntegrityHmac$IntegrityHmacSHA1:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->log:Ljava/util/logging/Logger;

    return-void

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$com$sun$org$apache$xml$internal$security$algorithms$implementations$IntegrityHmac$IntegrityHmacSHA1:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_macAlgorithm:Ljavax/crypto/Mac;

    iput v5, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_HMACOutputLength:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->engineGetURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->translateURItoJCEID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Created IntegrityHmacSHA1 using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_macAlgorithm:Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v5

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v1, "algorithms.NoSuchAlgorithm"

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static reduceBitLength([BI)[B
    .locals 5

    const/4 v1, 0x0

    div-int/lit8 v2, p1, 0x8

    rem-int/lit8 v3, p1, 0x8

    if-nez v3, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez v3, :cond_0

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    aget-byte v4, p0, v2

    aget-byte v1, v1, v3

    and-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :array_0
    .array-data 1
        0x0t
        -0x80t
        -0x40t
        -0x20t
        -0x10t
        -0x8t
        -0x4t
        -0x2t
    .end array-data
.end method


# virtual methods
.method public engineAddContextToElement(Lorg/w3c/dom/Element;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_HMACOutputLength:I

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "HMACOutputLength"

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->createElementInSignatureSpace(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_HMACOutputLength:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    invoke-interface {p1, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    :cond_1
    return-void
.end method

.method protected engineGetContextFromElement(Lorg/w3c/dom/Element;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;->engineGetContextFromElement(Lorg/w3c/dom/Element;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "element null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string v1, "HMACOutputLength"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNodeText(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Text;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_HMACOutputLength:I

    :cond_1
    return-void
.end method

.method protected engineGetJCEAlgorithmString()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "engineGetJCEAlgorithmString()"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_macAlgorithm:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected engineGetJCEProviderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_macAlgorithm:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract engineGetURI()Ljava/lang/String;
.end method

.method protected engineInitSign(Ljava/security/Key;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/crypto/SecretKey;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$javax$crypto$SecretKey:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "javax.crypto.SecretKey"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$javax$crypto$SecretKey:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v1, "algorithms.WrongKeyForThisOperation"

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$javax$crypto$SecretKey:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_macAlgorithm:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected engineInitSign(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v1, "algorithms.CannotUseSecureRandomOnMAC"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/crypto/SecretKey;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$javax$crypto$SecretKey:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "javax.crypto.SecretKey"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$javax$crypto$SecretKey:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v1, "algorithms.WrongKeyForThisOperation"

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$javax$crypto$SecretKey:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_macAlgorithm:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected engineInitVerify(Ljava/security/Key;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/crypto/SecretKey;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$javax$crypto$SecretKey:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "javax.crypto.SecretKey"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$javax$crypto$SecretKey:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v1, "algorithms.WrongKeyForThisOperation"

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->class$javax$crypto$SecretKey:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_macAlgorithm:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected engineSetHMACOutputLength(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_HMACOutputLength:I

    return-void
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v1, "empty"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_macAlgorithm:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    iget v1, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_HMACOutputLength:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_HMACOutputLength:I

    const/16 v2, 0xa0

    if-lt v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_HMACOutputLength:I

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->reduceBitLength([BI)[B
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected engineUpdate(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_macAlgorithm:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update(B)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected engineUpdate([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_macAlgorithm:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected engineUpdate([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_macAlgorithm:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected engineVerify([B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_macAlgorithm:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    iget v1, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_HMACOutputLength:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_HMACOutputLength:I

    const/16 v2, 0xa0

    if-lt v1, v2, :cond_1

    :cond_0
    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->isEqual([B[B)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->_HMACOutputLength:I

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->reduceBitLength([BI)[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->isEqual([B[B)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
