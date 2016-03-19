.class public Lcom/ime/framework/acmanager/ACChineseDictionaryManager;
.super Ljava/lang/Object;
.source "ACChineseDictionaryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/acmanager/ACChineseDictionaryManager$ACManagerStartNotify;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DOWNLOAD_IDLE_TIME:I = 0xb4

.field private static final DUMMPY_REFRESH_COMPLETE:Ljava/lang/String; = "DUMMPY_REFRESH_COMPLETE"

.field private static final DUMMY_REFRESH_COMPLETE:I = 0x2

.field private static final INIT_ACSDK_MESSAGE:I = 0x1

.field private static final MANUAL_REFRESH_LIMITATION:I = 0x5a

.field private static final TAG:Ljava/lang/String; = "ACChineseDictionaryManager"

.field private static mInstance:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;


# instance fields
.field private final REFRESH_BLOCK_STATUS:I

.field private final REFRESH_IDLE_STATUS:I

.field private final REFRESH_ONGOING_STATUS:I

.field private mACConnectionCb:Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;

.field private mACManager:Lcom/nuance/swypeconnect/ac/ACManager;

.field private mACManagerStartNotify:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ime/framework/acmanager/ACChineseDictionaryManager$ACManagerStartNotify;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Lcom/nuance/swypeconnect/ac/ACConfiguration;

.field private mConnectionCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDbSettings:Lcom/ime/framework/dbmanager/DbSettings;

.field private mDummyRefreshComplete:Landroid/os/Handler;

.field private mInitHandler:Landroid/os/Handler;

.field private mInitThread:Landroid/os/HandlerThread;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field public mLanguage:Lcom/nuance/swypeconnect/ac/ACLanguage;

.field private mLegalDoc:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

.field private mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mRefreshBlockTimer:Landroid/os/Handler;

.field private mRefreshStatus:I

.field private mUIHandler:Landroid/os/Handler;

.field private mUseData:Z

.field private mUseRoamingData:Z

.field private mUseWlan:Z

.field private syncACManagerObj:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mConnectionCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mACManagerStartNotify:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mUseWlan:Z

    iput-boolean v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mUseData:Z

    iput-boolean v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mUseRoamingData:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->syncACManagerObj:Ljava/lang/Object;

    iput v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->REFRESH_ONGOING_STATUS:I

    iput v2, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->REFRESH_BLOCK_STATUS:I

    iput v3, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->REFRESH_IDLE_STATUS:I

    iput v3, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mRefreshStatus:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$6;

    invoke-direct {v0, p0}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$6;-><init>(Lcom/ime/framework/acmanager/ACChineseDictionaryManager;)V

    iput-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mRefreshBlockTimer:Landroid/os/Handler;

    new-instance v0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$7;

    invoke-direct {v0, p0}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$7;-><init>(Lcom/ime/framework/acmanager/ACChineseDictionaryManager;)V

    iput-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mDummyRefreshComplete:Landroid/os/Handler;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isXT9DBUpdateSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "InitACMgrThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mInitThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mInitThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$1;

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mInitThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$1;-><init>(Lcom/ime/framework/acmanager/ACChineseDictionaryManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mInitHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mInitHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/ime/framework/acmanager/ACChineseDictionaryManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->syncACManagerObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ime/framework/acmanager/ACChineseDictionaryManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->initACSDKManager()V

    return-void
.end method

.method static synthetic access$200(Lcom/ime/framework/acmanager/ACChineseDictionaryManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mConnectionCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/ime/framework/acmanager/ACChineseDictionaryManager;I)I
    .locals 0

    iput p1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mRefreshStatus:I

    return p1
.end method

.method private getConnectStatusStr(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "CONNECTION_STATUS_INITIALIZATION_COMPLETE"

    goto :goto_0

    :pswitch_1
    const-string v0, "CONNECTION_STATUS_DELAYED"

    goto :goto_0

    :pswitch_2
    const-string v0, "CONNECTION_STATUS_OK"

    goto :goto_0

    :pswitch_3
    const-string v0, "CONNECTION_STATUS_REFRESH_COMPLETED"

    goto :goto_0

    :pswitch_4
    const-string v0, "CONNECTION_STATUS_REFRESH_DELAYED"

    goto :goto_0

    :pswitch_5
    const-string v0, "CONNECTION_STATUS_REFRESH_PENDING"

    goto :goto_0

    :pswitch_6
    const-string v0, "CONNECTION_STATUS_STALLED"

    goto :goto_0

    :pswitch_7
    const-string v0, "CONNECTION_STATUS_STALLED_DOWNLOAD"

    goto :goto_0

    :pswitch_8
    const-string v0, "CONNECTION_STATUS_STALLED_HTTP_ERROR"

    goto :goto_0

    :pswitch_9
    const-string v0, "CONNECTION_STATUS_STALLED_JSON_PARSE"

    goto :goto_0

    :pswitch_a
    const-string v0, "CONNECTION_STATUS_STALLED_PROTOCOL_EXCEPTION"

    goto :goto_0

    :pswitch_b
    const-string v0, "CONNECTION_STATUS_STALLED_SSL"

    goto :goto_0

    :pswitch_c
    const-string v0, "CONNECTION_STATUS_STALLED_SSL"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_b
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_c
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lcom/ime/framework/acmanager/ACChineseDictionaryManager;
    .locals 1

    sget-object v0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mInstance:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/ime/framework/acmanager/ACChineseDictionaryManager;
    .locals 2

    const-class v1, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mInstance:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    invoke-direct {v0, p0}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mInstance:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    :cond_0
    sget-object v0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mInstance:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initACSDKManager()V
    .locals 5

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isXT9DBUpdateSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mACManager:Lcom/nuance/swypeconnect/ac/ACManager;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/ime/framework/acmanager/ACDownloadManager;->newInstance()Lcom/ime/framework/acmanager/ACDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ime/framework/acmanager/ACDownloadManager;->getACManager()Lcom/nuance/swypeconnect/ac/ACManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mACManager:Lcom/nuance/swypeconnect/ac/ACManager;

    new-instance v1, Lcom/ime/framework/dbmanager/DbSettings;

    iget-object v2, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/ime/framework/dbmanager/DbSettings;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mDbSettings:Lcom/ime/framework/dbmanager/DbSettings;

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mACManager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACManager;->getConfiguration()Lcom/nuance/swypeconnect/ac/ACConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mConfig:Lcom/nuance/swypeconnect/ac/ACConfiguration;

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mACManager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACManager;->getLanguageSettings()Lcom/nuance/swypeconnect/ac/ACLanguage;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mLanguage:Lcom/nuance/swypeconnect/ac/ACLanguage;

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mACManager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACManager;->getLegalDocuments()Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mLegalDoc:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mLegalDoc:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mLegalDoc:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    invoke-interface {v1}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->userHasAcceptedTOS()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$2;

    invoke-direct {v1, p0}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$2;-><init>(Lcom/ime/framework/acmanager/ACChineseDictionaryManager;)V

    iput-object v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    invoke-direct {p0}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->setACConfigration()V

    const-string v1, "ACChineseDictionaryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new ACSDK ConnectInitialized = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mACManager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v3}, Lcom/nuance/swypeconnect/ac/ACManager;->isConnectInitialized()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private setACConfigration()V
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mConfig:Lcom/nuance/swypeconnect/ac/ACConfiguration;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->backgroundData(ZZZ)V

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mConfig:Lcom/nuance/swypeconnect/ac/ACConfiguration;

    const/16 v2, 0xb4

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->setDownloadIdleTimeout(I)V

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mConfig:Lcom/nuance/swypeconnect/ac/ACConfiguration;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->setLogLevel(I)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public acceptTos()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mLegalDoc:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    invoke-interface {v1}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->userAcceptedTOS()V

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_0
.end method

.method public addACManagerStartCallBack(Lcom/ime/framework/acmanager/ACChineseDictionaryManager$ACManagerStartNotify;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mACManagerStartNotify:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mACManagerStartNotify:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addConnectionCallBack(Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mConnectionCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mConnectionCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public configNetwork(ZZZ)V
    .locals 3

    :try_start_0
    iget-boolean v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mUseWlan:Z

    if-ne v1, p1, :cond_0

    iget-boolean v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mUseData:Z

    if-ne v1, p2, :cond_0

    iget-boolean v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mUseRoamingData:Z

    if-eq v1, p3, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mConfig:Lcom/nuance/swypeconnect/ac/ACConfiguration;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2, p3}, Lcom/nuance/swypeconnect/ac/ACConfiguration;->backgroundData(ZZZ)V

    iput-boolean p1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mUseWlan:Z

    iput-boolean p2, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mUseData:Z

    iput-boolean p3, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mUseRoamingData:Z
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_0
.end method

.method public connected(II)V
    .locals 3

    const-string v0, "ACChineseDictionaryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACConnectionCallback.connected type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$3;-><init>(Lcom/ime/framework/acmanager/ACChineseDictionaryManager;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public connectionStatus(ILjava/lang/String;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v0, "ACChineseDictionaryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACConnectionCallback.connectionStatus status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->getConnectStatusStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$5;-><init>(Lcom/ime/framework/acmanager/ACChineseDictionaryManager;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mDbSettings:Lcom/ime/framework/dbmanager/DbSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mDbSettings:Lcom/ime/framework/dbmanager/DbSettings;

    invoke-virtual {v0, v3}, Lcom/ime/framework/dbmanager/DbSettings;->setACSDKInit(Z)V

    :cond_0
    :pswitch_2
    iput v3, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mRefreshStatus:I

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mRefreshBlockTimer:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mRefreshBlockTimer:Landroid/os/Handler;

    const-wide/32 v2, 0x15f90

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public disconnected(I)V
    .locals 2

    const-string v0, "ACChineseDictionaryManager"

    const-string v1, "ACConnectionCallback.disconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$4;

    invoke-direct {v1, p0, p1}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$4;-><init>(Lcom/ime/framework/acmanager/ACChineseDictionaryManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getDictionayDownloadService()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mACManager:Lcom/nuance/swypeconnect/ac/ACManager;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->isTosAccept()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mACManager:Lcom/nuance/swypeconnect/ac/ACManager;

    const-string v4, "CHINESE_DICTIONARY_SERVICE"

    invoke-virtual {v3, v4}, Lcom/nuance/swypeconnect/ac/ACManager;->getService(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACService;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    move-object v2, v0
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_0
.end method

.method public getTosString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mLegalDoc:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->getTOS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasConnectionInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mACManager:Lcom/nuance/swypeconnect/ac/ACManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mACManager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->isConnectInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasConnectionStarted()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mACManager:Lcom/nuance/swypeconnect/ac/ACManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mACManager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->isConnectStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInit()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mACManager:Lcom/nuance/swypeconnect/ac/ACManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTosAccept()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mLegalDoc:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mLegalDoc:Lcom/nuance/swypeconnect/ac/ACLegalDocuments;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACLegalDocuments;->userHasAcceptedTOS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyACManagerStart()V
    .locals 3

    iget-object v2, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mACManagerStartNotify:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$ACManagerStartNotify;

    invoke-interface {v0}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$ACManagerStartNotify;->onACManagerStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mACManager:Lcom/nuance/swypeconnect/ac/ACManager;

    if-eqz v0, :cond_0

    const-string v0, "ACChineseDictionaryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mACManager.refresh ConnectInitialized = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mACManager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACManager;->isConnectInitialized()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", refresh status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mRefreshStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mRefreshStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iput v4, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mRefreshStatus:I

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mACManager:Lcom/nuance/swypeconnect/ac/ACManager;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACManager;->refresh()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mRefreshStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mDummyRefreshComplete:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mDummyRefreshComplete:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public releaseInstance()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mInitHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mInitHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mInitThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mInitThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_2
    sput-object v2, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mInstance:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    const-string v0, "ACChineseDictionaryManager"

    const-string v1, "ACSDKManager released"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
