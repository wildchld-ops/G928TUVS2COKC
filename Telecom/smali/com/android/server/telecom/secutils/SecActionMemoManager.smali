.class public Lcom/android/server/telecom/secutils/SecActionMemoManager;
.super Ljava/lang/Object;
.source "SecActionMemoManager.java"


# static fields
.field private static mInstance:Lcom/android/server/telecom/secutils/SecActionMemoManager;


# instance fields
.field private mActionMemoFilePathReceiver:Landroid/content/BroadcastReceiver;

.field private mPathMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/telecom/secutils/SecActionMemoManager;->mInstance:Lcom/android/server/telecom/secutils/SecActionMemoManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/telecom/secutils/SecActionMemoManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/SecActionMemoManager$1;-><init>(Lcom/android/server/telecom/secutils/SecActionMemoManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecActionMemoManager;->mActionMemoFilePathReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "SecActionMemoManager"

    const-string v1, "create()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecActionMemoManager;->mPathMap:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/SecActionMemoManager;->initInternal(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/secutils/SecActionMemoManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/secutils/SecActionMemoManager;->setActionMemoFilepath(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/android/server/telecom/secutils/SecActionMemoManager;
    .locals 1

    sget-object v0, Lcom/android/server/telecom/secutils/SecActionMemoManager;->mInstance:Lcom/android/server/telecom/secutils/SecActionMemoManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lcom/android/server/telecom/secutils/SecActionMemoManager;
    .locals 1

    new-instance v0, Lcom/android/server/telecom/secutils/SecActionMemoManager;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/SecActionMemoManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/telecom/secutils/SecActionMemoManager;->mInstance:Lcom/android/server/telecom/secutils/SecActionMemoManager;

    sget-object v0, Lcom/android/server/telecom/secutils/SecActionMemoManager;->mInstance:Lcom/android/server/telecom/secutils/SecActionMemoManager;

    return-object v0
.end method

.method private initInternal(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->supportActionMemo()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.intent.action.ACTIONMEMOFILEPATHFORLOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.snote.action.CREATETOCALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecActionMemoManager;->mActionMemoFilePathReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_1
    const-string v1, "support_memo_uuid_for_calllog"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.android.server.telecom.action.CREATETOCALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized setActionMemoFilepath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecActionMemoManager;->mPathMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecActionMemoManager;->mPathMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecActionMemoManager;->mPathMap:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecActionMemoManager;->mPathMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecActionMemoManager;->mPathMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SecActionMemoManager;->mPathMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v1, "SecActionMemoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setActionMemoFilepath for strippedNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " path="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getActionMemoFilepath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecActionMemoManager;->mPathMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecActionMemoManager;->mPathMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SecActionMemoManager;->mPathMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SecActionMemoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActionMemoFilepath for strippedNumber="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " path="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
