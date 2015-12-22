.class public Landroid/net/http/CertificateChainValidator;
.super Ljava/lang/Object;
.source "CertificateChainValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/CertificateChainValidator$1;,
        Landroid/net/http/CertificateChainValidator$NoPreloadHolder;
    }
.end annotation


# static fields
.field private static final CERTIFICATE_FAIL_REVOKED:I = 0x2

.field private static final CERTIFICATE_FAIL_UNABLE_TO_CHECK_REVOCATION_STATUS:I = 0xd

.field private static final CERTIFICATE_FAIL_UNTRUSTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CertificateChainValidator"


# instance fields
.field private mTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method private constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v6, "X.509"

    invoke-static {v6}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v5

    const/4 v6, 0x0

    check-cast v6, Ljava/security/KeyStore;

    invoke-virtual {v5, v6}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v5}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    instance-of v6, v4, Ljavax/net/ssl/X509TrustManager;

    if-eqz v6, :cond_0

    check-cast v4, Ljavax/net/ssl/X509TrustManager;

    iput-object v4, p0, Landroid/net/http/CertificateChainValidator;->mTrustManager:Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "X.509 TrustManagerFactory must be available"

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_1
    move-exception v1

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "X.509 TrustManagerFactory cannot be initialized"

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_1
    iget-object v6, p0, Landroid/net/http/CertificateChainValidator;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "None of the X.509 TrustManagers are X509TrustManager"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/http/CertificateChainValidator$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/http/CertificateChainValidator;-><init>()V

    return-void
.end method

.method private closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->invalidate()V

    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V

    :cond_1
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v1, p2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    return-void

    :cond_0
    move-object p2, p3

    goto :goto_0
.end method

.method private static getInnerMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Additional certificate path checker failed."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Landroid/net/http/CertificateChainValidator;->getInnerMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getInstance()Landroid/net/http/CertificateChainValidator;
    .locals 1

    # getter for: Landroid/net/http/CertificateChainValidator$NoPreloadHolder;->sInstance:Landroid/net/http/CertificateChainValidator;
    invoke-static {}, Landroid/net/http/CertificateChainValidator$NoPreloadHolder;->access$100()Landroid/net/http/CertificateChainValidator;

    move-result-object v0

    return-object v0
.end method

.method private getTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    iget-object v0, p0, Landroid/net/http/CertificateChainValidator;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public static handleTrustStorageUpdate()V
    .locals 12

    :try_start_0
    const-string v9, "X.509"

    invoke-static {v9}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v6

    const/4 v9, 0x0

    check-cast v9, Ljava/security/KeyStore;

    invoke-virtual {v6, v9}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v6}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v7

    const/4 v4, 0x0

    move-object v0, v7

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "handleTrustStorageUpdate"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v8, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v4, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v9, "CertificateChainValidator"

    const-string v10, "Couldn\'t find default X.509 TrustManagerFactory"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    return-void

    :catch_1
    move-exception v1

    const-string v9, "CertificateChainValidator"

    const-string v10, "Couldn\'t initialize default X.509 TrustManagerFactory"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_1
    if-nez v4, :cond_0

    const-string v9, "CertificateChainValidator"

    const-string v10, "Didn\'t find a TrustManager to handle CA list update"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v9

    goto :goto_1
.end method

.method public static verifyServerCertificates([[BLjava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "bad certificate chain"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    array-length v4, p0

    new-array v3, v4, [Ljava/security/cert/X509Certificate;

    :try_start_0
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_2

    new-instance v4, Ljava/io/ByteArrayInputStream;

    aget-object v5, p0, v2

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    aput-object v4, v3, v2
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v4, Ljava/io/IOException;

    const-string v5, "can\'t read certificate"

    invoke-direct {v4, v5, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_2
    invoke-static {v3, p1, p2}, Landroid/net/http/CertificateChainValidator;->verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v4

    return-object v4
.end method

.method private static verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    aget-object v2, p0, v8

    if-nez v2, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "certificate for this site is null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    # getter for: Landroid/net/http/CertificateChainValidator$NoPreloadHolder;->sVerifier:Ljavax/net/ssl/HostnameVerifier;
    invoke-static {}, Landroid/net/http/CertificateChainValidator$NoPreloadHolder;->access$200()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v8

    new-instance v9, Landroid/net/http/DelegatingSSLSession$CertificateWrap;

    invoke-direct {v9, v2}, Landroid/net/http/DelegatingSSLSession$CertificateWrap;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v8, p1, v9}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v6, 0x1

    :goto_0
    if-nez v6, :cond_2

    new-instance v8, Landroid/net/http/SslError;

    const/4 v9, 0x2

    invoke-direct {v8, v9, v2}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    :goto_1
    return-object v8

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/SSLParametersImpl;->getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v7

    instance-of v8, v7, Lcom/android/org/conscrypt/TrustManagerImpl;

    if-eqz v8, :cond_3

    move-object v0, v7

    check-cast v0, Lcom/android/org/conscrypt/TrustManagerImpl;

    move-object v5, v0

    invoke-virtual {v5, p0, p2, p1}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    :goto_2
    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    invoke-interface {v7, p0, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v8, Landroid/net/http/SslError;

    const/4 v9, 0x3

    invoke-direct {v8, v9, v2}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    goto :goto_1

    :cond_4
    invoke-static {v3}, Landroid/net/http/CertificateChainValidator;->getInnerMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    const-string v8, "browser_module"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1, v8, v9, v10}, Landroid/sec/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v8, Landroid/net/http/SslError;

    const/4 v9, 0x3

    invoke-direct {v8, v9, v2}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isRevocationCheckEnabled()Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "is revoked"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "Certificate revocation after"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_6
    const-string v8, "browser_module"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1, v8, v9, v10}, Landroid/sec/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v8, -0xce

    new-instance v9, Landroid/net/http/SslCertificate;

    invoke-direct {v9, v2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/net/http/SslError;->SslErrorFromChromiumErrorCode(ILandroid/net/http/SslCertificate;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v8

    goto :goto_1

    :cond_7
    const-string v8, "OCSP check failed!"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "Certificate status could not be determined."

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "CRL distribution point extension could not be read"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "No additional CRL locations could be decoded from CRL distribution point extension."

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "Distribution points could not be read."

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "No valid CRL found."

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "Unable to get CRL for certificate"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_8
    const-string v8, "browser_module"

    const/16 v9, 0xd

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1, v8, v9, v10}, Landroid/sec/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v8, -0xcd

    new-instance v9, Landroid/net/http/SslCertificate;

    invoke-direct {v9, v2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/net/http/SslError;->SslErrorFromChromiumErrorCode(ILandroid/net/http/SslCertificate;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v8

    goto/16 :goto_1

    :cond_9
    const-string v8, "browser_module"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1, v8, v9, v10}, Landroid/sec/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v8, Landroid/net/http/SslError;

    const/4 v9, 0x3

    invoke-direct {v8, v9, v2}, Landroid/net/http/SslError;-><init>(ILjava/security/cert/X509Certificate;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public doHandshakeAndValidateServerCertificates(Landroid/net/http/HttpsConnection;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Landroid/net/http/SslError;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "failed to perform SSL handshake"

    invoke-direct {p0, p2, v2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_3

    :cond_1
    const-string v2, "failed to retrieve peer certificates"

    invoke-direct {p0, p2, v2}, Landroid/net/http/CertificateChainValidator;->closeSocketThrowException(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    :cond_2
    :goto_0
    check-cast v0, [Ljava/security/cert/X509Certificate;

    check-cast v0, [Ljava/security/cert/X509Certificate;

    const-string v2, "RSA"

    invoke-static {v0, p3, v2}, Landroid/net/http/CertificateChainValidator;->verifyServerDomainAndCertificates([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v2

    return-object v2

    :cond_3
    if-eqz p1, :cond_2

    aget-object v2, v0, v4

    if-eqz v2, :cond_2

    new-instance v3, Landroid/net/http/SslCertificate;

    aget-object v2, v0, v4

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-direct {v3, v2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p1, v3}, Landroid/net/http/HttpsConnection;->setCertificate(Landroid/net/http/SslCertificate;)V

    goto :goto_0
.end method
