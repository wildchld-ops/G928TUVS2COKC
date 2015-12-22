.class public Lcom/android/server/DcmNextiPlayReadyService;
.super Landroid/app/Service;
.source "DcmNextiPlayReadyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DcmNextiPlayReadyService$SFSSLSocketFactory;,
        Lcom/android/server/DcmNextiPlayReadyService$MainThread;,
        Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final BOOT_COMPLETE:I = 0x1

.field private static final DATE_FORMAT:Ljava/text/DateFormat;

.field public static final GOT_DATA_CONNECTION:I = 0x2

.field public static final GOT_NITZ:I = 0x3

.field private static final LIMIT_TIME:I = 0x1388

.field private static final NTP_SERVER:Ljava/lang/String; = "https://tts.spmode.ne.jp:443"

.field private static final PLAYREADY_REF_TIME_FILE:Ljava/lang/String; = "/data/data/.drm/.playready/DcmNextiPlayReadyRefTime.dat"

.field private static final TAG:Ljava/lang/String; = "DcmNextiPlayReadyService"

.field public static THREAD_EXECUTING:I


# instance fields
.field public isSuspendedBefore:Ljava/lang/Boolean;

.field private mMainThread:Lcom/android/server/DcmNextiPlayReadyService$MainThread;

.field private mServiceHandler:Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "z yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/DcmNextiPlayReadyService;->DATE_FORMAT:Ljava/text/DateFormat;

    const/4 v0, 0x1

    sput v0, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DcmNextiPlayReadyService;->isSuspendedBefore:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(JJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/DcmNextiPlayReadyService;->nitzReceived(JJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/DcmNextiPlayReadyService;)Lorg/apache/http/client/HttpClient;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/DcmNextiPlayReadyService;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method private static native bootComplete()V
.end method

.method private getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 10

    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    new-instance v4, Lcom/android/server/DcmNextiPlayReadyService$SFSSLSocketFactory;

    invoke-direct {v4, p0, v5}, Lcom/android/server/DcmNextiPlayReadyService$SFSSLSocketFactory;-><init>(Lcom/android/server/DcmNextiPlayReadyService;Ljava/security/KeyStore;)V

    sget-object v6, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v4, v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v6, "UTF-8"

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v7, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v8

    const/16 v9, 0x50

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v7, "https"

    const/16 v8, 0x1bb

    invoke-direct {v6, v7, v4, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    return-object v6

    :catch_0
    move-exception v1

    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0

    :catch_2
    move-exception v1

    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0

    :catch_3
    move-exception v1

    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0

    :catch_4
    move-exception v1

    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0

    :catch_5
    move-exception v1

    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0

    :catch_6
    move-exception v1

    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0

    :catch_7
    move-exception v1

    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0

    :catch_8
    move-exception v1

    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0
.end method

.method private handleConnectivityStateChanged()V
    .locals 2

    new-instance v0, Lcom/android/server/DcmNextiPlayReadyService$MainThread;

    const-string/jumbo v1, "https://tts.spmode.ne.jp:443"

    invoke-direct {v0, p0, v1}, Lcom/android/server/DcmNextiPlayReadyService$MainThread;-><init>(Lcom/android/server/DcmNextiPlayReadyService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DcmNextiPlayReadyService;->mMainThread:Lcom/android/server/DcmNextiPlayReadyService$MainThread;

    iget-object v0, p0, Lcom/android/server/DcmNextiPlayReadyService;->mMainThread:Lcom/android/server/DcmNextiPlayReadyService$MainThread;

    invoke-virtual {v0}, Lcom/android/server/DcmNextiPlayReadyService$MainThread;->start()V

    return-void
.end method

.method private static native nitzReceived(JJ)V
.end method

.method private static native ntpReceived(JJ)V
.end method


# virtual methods
.method public handleNitzTimeUpdation()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/server/DcmNextiPlayReadyService$1;

    invoke-direct {v1, p0}, Lcom/android/server/DcmNextiPlayReadyService$1;-><init>(Lcom/android/server/DcmNextiPlayReadyService;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ServiceStartArguments"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DcmNextiPlayReadyService;->mServiceLooper:Landroid/os/Looper;

    new-instance v1, Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;

    iget-object v2, p0, Lcom/android/server/DcmNextiPlayReadyService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;-><init>(Lcom/android/server/DcmNextiPlayReadyService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/DcmNextiPlayReadyService;->mServiceHandler:Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    const-string v0, "DcmNextiPlayReadyService"

    const-string v1, "DrmEventService : OnLowMemory....Save the Phone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    return-void
.end method

.method public onNetworkStateChanged(JJ)V
    .locals 5

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    cmp-long v0, p3, v2

    if-lez v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/DcmNextiPlayReadyService;->ntpReceived(JJ)V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/server/DcmNextiPlayReadyService;->mServiceHandler:Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;

    invoke-virtual {v3}, Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p3, v0, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput v5, v0, Landroid/os/Message;->what:I

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/DcmNextiPlayReadyService;->mServiceHandler:Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;

    invoke-virtual {v3, v0}, Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return v5

    :cond_1
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "networkInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v5, :cond_2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "DcmNextiPlayReadyService"

    const-string v4, "Current action is Wifi Connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, v0, Landroid/os/Message;->what:I

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DcmNextiPlayReadyService"

    const-string v4, "Current action is mobile data Connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "DcmNextiPlayReadyService"

    const-string v4, "Current action is Data suspended"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/DcmNextiPlayReadyService;->isSuspendedBefore:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/DcmNextiPlayReadyService;->isSuspendedBefore:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "DcmNextiPlayReadyService"

    const-string v4, "Current action is Data connected and previous action was not suspended"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, v0, Landroid/os/Message;->what:I

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/DcmNextiPlayReadyService;->isSuspendedBefore:Ljava/lang/Boolean;

    goto :goto_0

    :cond_5
    const-string v3, "com.samsung.intent.action.NITZ_SET_TIME"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "DcmNextiPlayReadyService"

    const-string v4, "Current action is nitz set time"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x3

    iput v3, v0, Landroid/os/Message;->what:I

    goto/16 :goto_0

    :cond_6
    const-string v3, "DcmNextiPlayReadyService"

    const-string v4, "Code should not reach here"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
