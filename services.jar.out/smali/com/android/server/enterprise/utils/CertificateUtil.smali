.class public Lcom/android/server/enterprise/utils/CertificateUtil;
.super Ljava/lang/Object;
.source "CertificateUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CertificateUtil"


# instance fields
.field private mCaCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mUserCert:Ljava/security/cert/X509Certificate;

.field private mUserKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    iput-object v1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    iput-object v1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static convertStoreTypeToSystemUidAsUser(II)I
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    const v1, 0x186a0

    mul-int/2addr v1, p1

    add-int/lit16 v0, v1, 0x3e8

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/16 v0, 0x3f2

    goto :goto_0
.end method

.method public static convertStoreTypeToUid(I)I
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/16 v0, 0x3f2

    goto :goto_0
.end method

.method private extractPkcs12([BLjava/lang/String;)Z
    .locals 10

    const/4 v6, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    :try_start_0
    const-string v7, "PKCS12"

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    new-instance v5, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v5}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {v4}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v3

    instance-of v7, v3, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v7, :cond_2

    check-cast v3, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/utils/CertificateUtil;->installFrom(Ljava/security/KeyStore$PrivateKeyEntry;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v7, "CertificateUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "extractPkcs12(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPersonaManagerService()Landroid/os/PersonaManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mPersonaManager:Landroid/os/PersonaManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mPersonaManager:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private declared-synchronized installFrom(Ljava/security/KeyStore$PrivateKeyEntry;)Z
    .locals 17

    monitor-enter p0

    :try_start_0
    const-string v14, "certificate_policy"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    const/4 v14, 0x0

    :try_start_1
    invoke-interface {v6, v14}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->isCertificateValidationAtInstallEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v2

    new-instance v11, Ljava/util/ArrayList;

    array-length v14, v2

    invoke-direct {v11, v14}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v2

    array-length v10, v1

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v5, v1, v9

    new-instance v14, Landroid/app/enterprise/CertificateInfo;

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-direct {v14, v5}, Landroid/app/enterprise/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v6, v11}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->validateChainAtInstall(Ljava/util/List;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_1

    const-string v14, "CertificateUtil"

    const-string v15, "certificate failed during validation"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v14, "installer_module"

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v6, v14, v15, v0}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v14, 0x0

    :goto_1
    monitor-exit p0

    return v14

    :catch_0
    move-exception v8

    :try_start_2
    const-string v14, "CertificateUtil"

    const-string v15, "Failed talking to certificate policy"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v14

    check-cast v14, Ljava/security/cert/X509Certificate;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v7

    const-string v14, "CertificateUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "# certs extracted = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v7

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    array-length v14, v7

    invoke-direct {v4, v14}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    move-object v1, v7

    array-length v10, v1

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v10, :cond_3

    aget-object v3, v1, v9

    move-object v0, v3

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v5, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/utils/CertificateUtil;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :catch_1
    move-exception v12

    const-string v14, "CertificateUtil"

    const-string v15, "Certificate policy not found"

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    :cond_3
    :try_start_3
    const-string v14, "CertificateUtil"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "# ca certs extracted = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v14, 0x1

    goto/16 :goto_1
.end method

.method private isCa(Ljava/security/cert/X509Certificate;)Z
    .locals 7

    const/4 v5, 0x0

    :try_start_0
    const-string v6, "2.5.29.19"

    invoke-virtual {p1, v6}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v5

    :cond_0
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v6, v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v3

    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v6, v3}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-static {v4}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private parseCert([B)Z
    .locals 12

    const/4 v8, 0x0

    const/4 v7, 0x0

    :try_start_0
    const-string v9, "X.509"

    invoke-static {v9}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    const-string v9, "certificate_policy"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    const/4 v9, 0x0

    :try_start_1
    invoke-interface {v3, v9}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->isCertificateValidationAtInstallEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v2, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v2, v0}, Landroid/app/enterprise/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v3, v2}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->validateCertificateAtInstall(Landroid/app/enterprise/CertificateInfo;)I

    move-result v6

    const/4 v9, -0x1

    if-eq v6, v9, :cond_0

    const-string v9, "CertificateUtil"

    const-string v10, "certificate failed during validation"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "installer_module"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v3, v9, v10, v11}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    return v8

    :catch_0
    move-exception v4

    :try_start_2
    const-string v8, "CertificateUtil"

    const-string v9, "Failed talking to certificate policy"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/utils/CertificateUtil;->isCa(Ljava/security/cert/X509Certificate;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "CertificateUtil"

    const-string/jumbo v9, "got a CA cert"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    :goto_2
    move v8, v7

    goto :goto_0

    :catch_1
    move-exception v5

    const-string v8, "CertificateUtil"

    const-string v9, "Certificate policy not found"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v4

    const-string v8, "CertificateUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "parseCert(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    :try_start_3
    const-string v8, "CertificateUtil"

    const-string/jumbo v9, "got a user cert"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v7, 0x1

    goto :goto_2
.end method


# virtual methods
.method public install(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/utils/CertificateUtil;->installAsUser(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public installAsUser(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;II)Z
    .locals 15

    const/4 v13, 0x1

    const-string v2, ".crt"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CERT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/utils/CertificateUtil;->parseCert([B)Z

    move-result v2

    and-int/2addr v13, v2

    :goto_0
    if-eqz v13, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/security/cert/X509Certificate;

    and-int/lit8 v2, p5, 0x2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v2

    and-int/2addr v13, v2

    const-string v2, "CertificateUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CaCerts put state for wifi keystore : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    and-int/lit8 v2, p5, 0x4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v5}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v5

    const/4 v6, 0x1

    move/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Landroid/security/KeyStore;->putAsUser(Ljava/lang/String;[BIII)Z

    move-result v2

    and-int/2addr v13, v2

    const-string v2, "CertificateUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CaCerts put state for vpn and apps keystore : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    and-int/lit8 v2, p5, 0x1

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    move/from16 v0, p6

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v2, v3}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v12

    invoke-virtual {v12}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mCaCerts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/security/cert/Certificate;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    invoke-static {v2}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v2

    invoke-interface {v14, v2}, Landroid/security/IKeyChainService;->installCaCertificate([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {v12}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v10

    const-string v2, "CertificateUtil"

    const-string/jumbo v3, "install(): "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return v13

    :cond_4
    const-string v2, ".p12"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "PKCS12"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/utils/CertificateUtil;->extractPkcs12([BLjava/lang/String;)Z

    move-result v2

    and-int/2addr v13, v2

    goto/16 :goto_0

    :cond_6
    and-int/lit8 v13, v13, 0x0

    goto/16 :goto_0

    :cond_7
    :try_start_3
    invoke-virtual {v12}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    :cond_8
    const-string v2, "CertificateUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CaCerts put state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_d

    and-int/lit8 v2, p5, 0x2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRCERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/security/cert/Certificate;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    aput-object v6, v4, v5

    invoke-static {v4}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v2

    and-int/2addr v13, v2

    const-string v2, "CertificateUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UserCert put state for wifi keystore : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    and-int/lit8 v2, p5, 0x4

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRCERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/security/cert/Certificate;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserCert:Ljava/security/cert/X509Certificate;

    aput-object v6, v4, v5

    invoke-static {v4}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v5}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v5

    const/4 v6, 0x1

    move/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Landroid/security/KeyStore;->putAsUser(Ljava/lang/String;[BIII)Z

    move-result v2

    and-int/2addr v13, v2

    const-string v2, "CertificateUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UserCert put state for vpn and apps keystore : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    and-int/lit8 v2, p5, 0x1

    if-eqz v2, :cond_d

    const-string v2, ".crt"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "CERT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    and-int/lit8 v13, v13, 0x0

    :cond_d
    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    if-eqz v2, :cond_3

    and-int/lit8 v2, p5, 0x2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    invoke-interface {v4}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v2

    and-int/2addr v13, v2

    const-string v2, "CertificateUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UserPKey put state for wifi keystore : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    and-int/lit8 v2, p5, 0x4

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mUserKey:Ljava/security/PrivateKey;

    invoke-interface {v4}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v5}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertStoreTypeToUid(I)I

    move-result v5

    const/4 v6, 0x1

    move/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Landroid/security/KeyStore;->importKeyAsUser(Ljava/lang/String;[BIII)Z

    move-result v2

    and-int/2addr v13, v2

    const-string v2, "CertificateUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UserPKey put state for vpn and apps keystore : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    and-int/lit8 v2, p5, 0x1

    if-eqz v2, :cond_3

    const-string v2, ".crt"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "CERT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    :cond_10
    and-int/lit8 v13, v13, 0x0

    goto/16 :goto_2
.end method

.method public sendIntentToSettings(IZ)V
    .locals 10

    if-eqz p2, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "edm.intent.action.REFRESH_UI"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/CertificateUtil;->getPersonaManagerService()Landroid/os/PersonaManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v3

    :goto_0
    iget-object v5, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v9, "com.samsung.permission.mdm.MDM_REFRESH_CREDENTIAL_UI_INTERNAL"

    invoke-virtual {v5, v4, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/CertificateUtil;->getPersonaManagerService()Landroid/os/PersonaManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PersonaInfo;

    iget-object v5, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    iget v9, v1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    const-string v9, "com.samsung.permission.mdm.MDM_REFRESH_CREDENTIAL_UI_INTERNAL"

    invoke-virtual {v5, v4, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    move v3, p1

    goto :goto_0

    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_2
    return-void
.end method
