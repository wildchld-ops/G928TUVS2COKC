.class public Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;
.super Ljava/lang/Object;
.source "PSKCProvision.java"

# interfaces
.implements Lcom/android/server/enterprise/otp/engine/provision/IProvision;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

.field private mXMLHandler:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->mXMLHandler:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->mXMLHandler:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;)Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->mXMLHandler:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->prepareDataForDbStorage(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->prepareDataForSecureStorage(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private convertStringToAlgoType(Ljava/lang/String;)I
    .locals 2

    if-nez p1, :cond_0

    const/16 v0, 0x401

    :goto_0
    return v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hotp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x100

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "totp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x101

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ocra"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x102

    goto :goto_0

    :cond_3
    const/16 v0, 0x404

    goto :goto_0
.end method

.method private doProvisionInThread(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 7

    const-string v0, "PSKCProvision::doProvisionInThread Enter"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;-><init>(Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision$1;->start()V

    return-void
.end method

.method private prepareDataForDbStorage(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "OTP_INTERNAL_TOKEN_ID"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DISPLAY_NAME"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->convertStringToAlgoType(Ljava/lang/String;)I

    move-result v0

    const-string v2, "OTP_OATH_PROTOCOL"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v2, 0x102

    if-ne v0, v2, :cond_1

    const-string v2, "OCRA_SUITE"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getSuite()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string v2, "PSKCProvision::prepareDataForDbStorage KeyPackage Key is extracted"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    :goto_1
    return-object v1

    :cond_1
    const/16 v2, 0x101

    if-ne v0, v2, :cond_0

    const-string v2, "OTP_PARAM"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getTimeInterval()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    const-string v2, "PSKCProvision::prepareDataForDbStorage - KeyPage does not contain any Key"

    invoke-static {v2}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_1
.end method

.method private prepareDataForSecureStorage(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 10

    const-string v7, "PSKCProvision::prepareDataForSecureStorage Enter"

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v6, 0x0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->convertStringToAlgoType(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getSecret()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OTP_INTERNAL_TOKEN_ID"

    invoke-virtual {v1, v7, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v7, "SHARED_SECRET"

    const/4 v8, 0x0

    invoke-static {v6, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "OTP_HASH_ALGO"

    const/16 v8, 0x170

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getEncryptionType()I

    move-result v7

    if-lez v7, :cond_2

    const-string v7, "SECRET_ENCRYPTION_ALGO"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getEncryptionAlgo()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v7, 0x1

    new-array v3, v7, [B

    const/4 v7, 0x0

    const/16 v8, 0x30

    aput-byte v8, v3, v7

    const-string v7, "SECRET_ENCRYPTION_KEY"

    invoke-virtual {v1, v7, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getResponseFormat()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;

    move-result-object v7

    if-eqz v7, :cond_4

    const/16 v7, 0x102

    if-eq v0, v7, :cond_3

    const-string v7, "OTP_LENGTH"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getResponseFormat()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->getLength()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    const-string v7, "OTP_ENCODING"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getResponseFormat()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->getEncoding()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    const/16 v7, 0x100

    if-ne v0, v7, :cond_5

    const-string v7, "PSKCProvision::prepareDataForSecureStorage creating hotp"

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    const-string v7, "OTP_OATH_PROTOCOL"

    const/16 v8, 0x100

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "OTP_PARAM"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getCounter()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PSKCProvision::IllegalArgumentException - Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_5
    const/16 v7, 0x101

    if-ne v0, v7, :cond_6

    const-string v7, "PSKCProvision::prepareDataForSecureStorage creating totp"

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    const-string v7, "OTP_OATH_PROTOCOL"

    const/16 v8, 0x101

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "OTP_PARAM"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getTimeInterval()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_6
    const/16 v7, 0x102

    if-ne v0, v7, :cond_9

    const-string v7, "PSKCProvision::prepareDataForSecureStorage creating ocra"

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    const-string v7, "OTP_OATH_PROTOCOL"

    const/16 v8, 0x102

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getSuite()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/OCRACheck;->isOcraSuiteValid(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {v5}, Lcom/android/server/enterprise/otp/OCRACheck;->isOtpServiceSupportPresent(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_8
    const-string v7, "OCRA_SUITE"

    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "OTP_PARAM"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getCounter()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PSKCProvision::prepareDataForSecureStorage - Unknown Oath Protocol ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public doProvision(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 8

    const-string v0, "PSKCProvision::doProvision ENTER"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const-string v0, "OTP_PSKC_XML_DATA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "PSKCProvision::doProvision - Invalid PSKC XML data provided"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/16 v6, 0x401

    :cond_0
    if-nez v6, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v5, p1}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->setWhitelistAndSignerInfo(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;)I

    move-result v6

    :cond_1
    if-nez v6, :cond_3

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/provision/ProvisionUtil;->generateTokenId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "OTP_TOKEN_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    const-string v0, "PSKCProvision::doProvision -  No vendor id assigned. Assigning from OTP Service"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const-string v0, "OTP_TOKEN_ID"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v2

    :cond_2
    const-string v0, "OTP_INTERNAL_TOKEN_ID"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TOKEN_STATE"

    const/16 v3, 0x300

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CONTAINER_ID"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    if-nez v6, :cond_4

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->mDBHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->storeProvisioningData(Landroid/os/Bundle;)I

    move-result v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PSKCProvision::doProvision - DBHandler.storeProvisioningData() ret = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    :cond_4
    if-nez v6, :cond_5

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->doProvisionInThread(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V

    :goto_0
    return-object v7

    :cond_5
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->mContext:Landroid/content/Context;

    const-string v3, "OTP Token creation failed"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/otp/engine/common/Print;->showUserToast(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/provision/PSKCProvision;->mContext:Landroid/content/Context;

    invoke-static {v0, v7, v4, v5, v6}, Lcom/android/server/enterprise/otp/OtpCallback;->otpStatusCallbackInThread(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PSKCProvision::doProvision - Token Creation Failed. [ tokenId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doResync(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 1

    const-string v0, "PSKCProvision::doResync - not supported"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    const/16 v0, 0x4ff

    return v0
.end method
