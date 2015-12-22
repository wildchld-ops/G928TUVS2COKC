.class public Lcom/android/incallui/SecTabletBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecTabletBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecTabletBroadcastReceiver$EventListener;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/android/incallui/SecTabletBroadcastReceiver;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/SecTabletBroadcastReceiver$EventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/android/incallui/SecTabletBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecTabletBroadcastReceiver$1;-><init>(Lcom/android/incallui/SecTabletBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletBroadcastReceiver;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/SecTabletBroadcastReceiver;->mListeners:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SecTabletBroadcastReceiver;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletBroadcastReceiver;->sendEvents(Ljava/lang/String;)V

    return-void
.end method

.method public static getFilters()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.Keyguard.LOCK_NOTIFY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.action.START_DOCK_OR_HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "support_tgroupon"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.skt.tgroupon.action.REQUEST_CALL_SCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/SecTabletBroadcastReceiver;
    .locals 2

    const-class v1, Lcom/android/incallui/SecTabletBroadcastReceiver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/SecTabletBroadcastReceiver;->mInstance:Lcom/android/incallui/SecTabletBroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/SecTabletBroadcastReceiver;

    invoke-direct {v0}, Lcom/android/incallui/SecTabletBroadcastReceiver;-><init>()V

    sput-object v0, Lcom/android/incallui/SecTabletBroadcastReceiver;->mInstance:Lcom/android/incallui/SecTabletBroadcastReceiver;

    :cond_0
    sget-object v0, Lcom/android/incallui/SecTabletBroadcastReceiver;->mInstance:Lcom/android/incallui/SecTabletBroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized sendEvents(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/SecTabletBroadcastReceiver;->mListeners:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/incallui/SecTabletBroadcastReceiver;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/SecTabletBroadcastReceiver$EventListener;

    invoke-interface {v1, p1}, Lcom/android/incallui/SecTabletBroadcastReceiver$EventListener;->onReceived(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/android/incallui/SecTabletBroadcastReceiver$EventListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletBroadcastReceiver;->mListeners:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletBroadcastReceiver;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/incallui/SecTabletBroadcastReceiver;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/incallui/SecTabletBroadcastReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletBroadcastReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public declared-synchronized removeListener(Lcom/android/incallui/SecTabletBroadcastReceiver$EventListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletBroadcastReceiver;->mListeners:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletBroadcastReceiver;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
