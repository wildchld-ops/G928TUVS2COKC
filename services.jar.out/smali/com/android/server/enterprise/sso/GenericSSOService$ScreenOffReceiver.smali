.class Lcom/android/server/enterprise/sso/GenericSSOService$ScreenOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GenericSSOService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/GenericSSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScreenOffReceiver"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    # setter for: Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;
    invoke-static {v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$1002(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    # setter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;
    invoke-static {v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$1102(Ljava/security/Key;)Ljava/security/Key;

    # setter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;
    invoke-static {v8}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$1202(Ljava/security/KeyPair;)Ljava/security/KeyPair;

    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "GenericSSOService"

    const-string v8, "In onReceive: Action Screen Off (keys are cleared from memory)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v7, "android.security.STORAGE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-boolean v7, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "GenericSSOService"

    const-string v8, "In onReceive: Action Credential Storage Changed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :try_start_0
    const-string v7, "AndroidKeyStore"

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string v7, "KnoxSSOKey"

    invoke-virtual {v5, v7}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v4, Ljava/io/File;

    const-string v7, "/data/system/KnoxSSO_SCKF"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$1300()Landroid/util/SparseArray;

    move-result-object v7

    if-eqz v7, :cond_3

    const/4 v3, 0x0

    :goto_1
    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$1300()Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$1300()Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    # getter for: Lcom/android/server/enterprise/sso/GenericSSOService;->tokenConfigXMLDocs:Landroid/util/SparseArray;
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$1300()Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->delete(I)V

    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/system/users/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ssotoken.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    # setter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mSecretKey:Ljava/security/Key;
    invoke-static {v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$1102(Ljava/security/Key;)Ljava/security/Key;

    const/4 v7, 0x0

    # setter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mKeyPair:Ljava/security/KeyPair;
    invoke-static {v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$1202(Ljava/security/KeyPair;)Ljava/security/KeyPair;

    const/4 v7, 0x0

    # setter for: Lcom/android/server/enterprise/sso/GenericSSOService;->sSecretKeyFromAndroidKeyStore:Ljavax/crypto/SecretKey;
    invoke-static {v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$1002(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    const/4 v7, 0x0

    # setter for: Lcom/android/server/enterprise/sso/GenericSSOService;->mKeystore:Ljava/security/KeyStore;
    invoke-static {v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->access$802(Ljava/security/KeyStore;)Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v7, "GenericSSOService"

    const-string v8, "In onReceive --- Action Credential Storage Changed: NoSuchAlgorithmException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string v7, "GenericSSOService"

    const-string v8, "In onReceive --- Action Credential Storage Changed: KeyStoreException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_2
    move-exception v1

    const-string v7, "GenericSSOService"

    const-string v8, "In onReceive --- Action Credential Storage Changed: IOException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_3
    move-exception v1

    const-string v7, "GenericSSOService"

    const-string v8, "In onReceive --- Action Credential Storage Changed: CertificateException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_4
    move-exception v1

    const-string v7, "GenericSSOService"

    const-string v8, "In onReceive --- Action Credential Storage Changed: General Exception"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
