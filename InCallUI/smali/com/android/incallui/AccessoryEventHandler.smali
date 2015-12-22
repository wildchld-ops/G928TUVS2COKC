.class public Lcom/android/incallui/AccessoryEventHandler;
.super Ljava/lang/Object;
.source "AccessoryEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;
    }
.end annotation


# static fields
.field private static sMe:Lcom/android/incallui/AccessoryEventHandler;


# instance fields
.field private mCoverColor:I

.field mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

.field mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mCoverType:I

.field private mIsClosed:Z

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mScover:Lcom/samsung/android/sdk/cover/Scover;

.field private mWIFIDisplayState:I


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mListeners:Ljava/util/List;

    iput-boolean v1, p0, Lcom/android/incallui/AccessoryEventHandler;->mIsClosed:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverType:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverColor:I

    iput v1, p0, Lcom/android/incallui/AccessoryEventHandler;->mWIFIDisplayState:I

    new-instance v0, Lcom/android/incallui/AccessoryEventHandler$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/AccessoryEventHandler$1;-><init>(Lcom/android/incallui/AccessoryEventHandler;)V

    iput-object v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/android/incallui/AccessoryEventHandler;->initializeCover()V

    invoke-direct {p0}, Lcom/android/incallui/AccessoryEventHandler;->initializeReceiver()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/AccessoryEventHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/AccessoryEventHandler;->notifyListenersOfCallForwardStateChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/AccessoryEventHandler;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mWIFIDisplayState:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/incallui/AccessoryEventHandler;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/AccessoryEventHandler;->mWIFIDisplayState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/incallui/AccessoryEventHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mIsClosed:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/incallui/AccessoryEventHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/AccessoryEventHandler;->mIsClosed:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/incallui/AccessoryEventHandler;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverType:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/incallui/AccessoryEventHandler;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverColor:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/incallui/AccessoryEventHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/AccessoryEventHandler;->notifyListenersOfCoverStateChanged(Z)V

    return-void
.end method

.method public static getInstance()Lcom/android/incallui/AccessoryEventHandler;
    .locals 1

    sget-object v0, Lcom/android/incallui/AccessoryEventHandler;->sMe:Lcom/android/incallui/AccessoryEventHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/AccessoryEventHandler;

    invoke-direct {v0}, Lcom/android/incallui/AccessoryEventHandler;-><init>()V

    sput-object v0, Lcom/android/incallui/AccessoryEventHandler;->sMe:Lcom/android/incallui/AccessoryEventHandler;

    :cond_0
    sget-object v0, Lcom/android/incallui/AccessoryEventHandler;->sMe:Lcom/android/incallui/AccessoryEventHandler;

    return-object v0
.end method

.method private initializeCover()V
    .locals 5

    const/4 v3, 0x1

    const-string v2, "initializeCover"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v2}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    new-instance v2, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mIsClosed:Z

    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v2

    iput v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverType:I

    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getColor()I

    move-result v2

    iput v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverColor:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeCover: mIsClosed - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/incallui/AccessoryEventHandler;->mIsClosed:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mCoverType - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mCoverColor - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverColor:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v2, Lcom/android/incallui/AccessoryEventHandler$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/AccessoryEventHandler$2;-><init>(Lcom/android/incallui/AccessoryEventHandler;)V

    iput-object v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v3, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string v2, "initializeCover: IllegalArgumentException"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "initializeCover: SsdkUnsupportedException"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_1

    :catch_2
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeCover: Exception - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "initializeCover: mCoverState is null"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    const-string v2, "initializeCover: mCoverManager is null"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private initializeReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.android.sidesync.common.CALLFORWARD_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private notifyListenersOfCallForwardStateChanged(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;

    invoke-interface {v1, p1}, Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;->onSideSyncCallForwardStateChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyListenersOfCoverStateChanged(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/incallui/AccessoryEventHandler;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;

    invoke-interface {v1, p1}, Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;->onCoverStateChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addListenerToFirst(Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;)V
    .locals 2

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mListeners:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getCoverColor()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/AccessoryEventHandler;->initializeCover()V

    :cond_0
    iget v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverColor:I

    return v0
.end method

.method public getCoverType()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/AccessoryEventHandler;->initializeCover()V

    :cond_0
    iget v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverType:I

    return v0
.end method

.method public getScoverManager()Lcom/samsung/android/sdk/cover/ScoverManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/AccessoryEventHandler;->initializeCover()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    return-object v0
.end method

.method public isCoverClosed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/AccessoryEventHandler;->initializeCover()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mIsClosed:Z

    return v0
.end method

.method public isWIFIDisplayOn()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/incallui/AccessoryEventHandler;->mWIFIDisplayState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeListener(Lcom/android/incallui/AccessoryEventHandler$AccessoryEventListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public tearDown()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/incallui/AccessoryEventHandler;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/AccessoryEventHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AccessoryEventHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/AccessoryEventHandler;->sMe:Lcom/android/incallui/AccessoryEventHandler;

    return-void
.end method
