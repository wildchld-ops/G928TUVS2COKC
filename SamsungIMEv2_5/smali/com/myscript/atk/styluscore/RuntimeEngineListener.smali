.class public Lcom/myscript/atk/styluscore/RuntimeEngineListener;
.super Ljava/lang/Object;
.source "RuntimeEngineListener.java"

# interfaces
.implements Lcom/myscript/atk/styluscore/styluscore$IRuntimeEngineListener;


# static fields
.field private static final DBG:Z = false

.field private static final K4d8be9:Ljava/lang/String; = "4d8be95b0232d243bf67e13f764634b4b75cd6cf"

.field private static final K9c1a5a:Ljava/lang/String; = "9c1a5a3db7d550a39a98b80c46e6081580b226e3"

.field private static final Kebaed9:Ljava/lang/String; = "ebaed9907ac2053a6c934518a2213b42c9508908"

.field private static final Kf4ef8b:Ljava/lang/String; = "f4ef8bac9f1875bc2e2c2762c31bb1f949c04848"

.field private static final Kf976b2:Ljava/lang/String; = "f976b2fb18f45aa807fc681736e44a554f4e0b98"

.field private static final Ks4gezc:Ljava/lang/String; = "s4gezc8h9q6rcqykg4zcs69ugebcxyut99mg47d9"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/myscript/atk/styluscore/RuntimeEngineListener;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkInternetPermission(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/styluscore/RuntimeEngineListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 4

    iget-object v1, p0, Lcom/myscript/atk/styluscore/RuntimeEngineListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "f4ef8bac9f1875bc2e2c2762c31bb1f949c04848"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "4d8be95b0232d243bf67e13f764634b4b75cd6cf"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/styluscore/RuntimeEngineListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceData()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/myscript/atk/styluscore/RuntimeEngineListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "f4ef8bac9f1875bc2e2c2762c31bb1f949c04848"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "9c1a5a3db7d550a39a98b80c46e6081580b226e3"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    return-object v1
.end method

.method public getLastSuccessfulConnexionDate()J
    .locals 4

    iget-object v1, p0, Lcom/myscript/atk/styluscore/RuntimeEngineListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "f4ef8bac9f1875bc2e2c2762c31bb1f949c04848"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "s4gezc8h9q6rcqykg4zcs69ugebcxyut99mg47d9"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public getLicenceData()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/myscript/atk/styluscore/RuntimeEngineListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "f4ef8bac9f1875bc2e2c2762c31bb1f949c04848"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "f976b2fb18f45aa807fc681736e44a554f4e0b98"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    return-object v1
.end method

.method public init([B)V
    .locals 10

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/myscript/atk/styluscore/RuntimeEngineListener;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "f4ef8bac9f1875bc2e2c2762c31bb1f949c04848"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "ebaed9907ac2053a6c934518a2213b42c9508908"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v7, "ebaed9907ac2053a6c934518a2213b42c9508908"

    invoke-static {p1, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v7, "9c1a5a3db7d550a39a98b80c46e6081580b226e3"

    invoke-interface {v2, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v7, "f976b2fb18f45aa807fc681736e44a554f4e0b98"

    invoke-interface {v2, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_0
    iget-object v7, p0, Lcom/myscript/atk/styluscore/RuntimeEngineListener;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/myscript/atk/styluscore/RuntimeEngineListener;->getAppName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-wide v4, v7, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v7, v4, v0

    if-gez v7, :cond_0

    move-wide v0, v4

    :cond_0
    :goto_0
    const-string v7, "4d8be95b0232d243bf67e13f764634b4b75cd6cf"

    const-wide/16 v8, 0x3e8

    div-long v8, v0, v8

    invoke-interface {v2, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void

    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public requestLicenceData(Ljava/lang/String;I)[B
    .locals 8

    const/4 v6, 0x0

    new-array v0, v6, [B

    :try_start_0
    iget-object v6, p0, Lcom/myscript/atk/styluscore/RuntimeEngineListener;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/myscript/atk/styluscore/RuntimeEngineListener;->checkInternetPermission(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v6, "RuntimeEngineListener"

    const-string v7, "Need to add the android.permission.INTERNET"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v6, "Accept"

    const-string v7, "application/vnd.myscript.atk.certificate"

    invoke-virtual {v3, v6, v7}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_0

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v6

    goto :goto_0

    :catch_1
    move-exception v6

    goto :goto_0

    :catch_2
    move-exception v6

    goto :goto_0
.end method

.method public reset([B)V
    .locals 5

    iget-object v2, p0, Lcom/myscript/atk/styluscore/RuntimeEngineListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "f4ef8bac9f1875bc2e2c2762c31bb1f949c04848"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "4d8be95b0232d243bf67e13f764634b4b75cd6cf"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "s4gezc8h9q6rcqykg4zcs69ugebcxyut99mg47d9"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "ebaed9907ac2053a6c934518a2213b42c9508908"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "f976b2fb18f45aa807fc681736e44a554f4e0b98"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "9c1a5a3db7d550a39a98b80c46e6081580b226e3"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0, p1}, Lcom/myscript/atk/styluscore/RuntimeEngineListener;->init([B)V

    return-void
.end method

.method public storeInstanceData([B)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/myscript/atk/styluscore/RuntimeEngineListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "f4ef8bac9f1875bc2e2c2762c31bb1f949c04848"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "9c1a5a3db7d550a39a98b80c46e6081580b226e3"

    invoke-static {p1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public storeLastSuccessfulConnexionDate()V
    .locals 8

    iget-object v4, p0, Lcom/myscript/atk/styluscore/RuntimeEngineListener;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "f4ef8bac9f1875bc2e2c2762c31bb1f949c04848"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v4, "s4gezc8h9q6rcqykg4zcs69ugebcxyut99mg47d9"

    const-wide/16 v6, 0x3e8

    div-long v6, v0, v6

    invoke-interface {v2, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public storeLicenceData([B)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/myscript/atk/styluscore/RuntimeEngineListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "f4ef8bac9f1875bc2e2c2762c31bb1f949c04848"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "f976b2fb18f45aa807fc681736e44a554f4e0b98"

    invoke-static {p1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
