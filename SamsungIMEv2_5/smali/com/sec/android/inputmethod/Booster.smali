.class public Lcom/sec/android/inputmethod/Booster;
.super Ljava/lang/Object;
.source "Booster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/Booster$BoosterHandler;
    }
.end annotation


# static fields
.field private static final MSG_SELF_STOP:I = 0x1

.field private static final MSG_SELF_STOP_AND_TERMINATE:I = 0x2

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/sec/android/inputmethod/Booster;


# instance fields
.field private final DEBUG:Z

.field private SELF_TERMINATE_TIME:J

.field private lastBoostRequestedAt:J

.field private mCPUBooster:Landroid/os/DVFSHelper;

.field private mCPUMaxBooster:Landroid/os/DVFSHelper;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 9

    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v8, p0, Lcom/sec/android/inputmethod/Booster;->DEBUG:Z

    iput-wide v4, p0, Lcom/sec/android/inputmethod/Booster;->lastBoostRequestedAt:J

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/sec/android/inputmethod/Booster;->SELF_TERMINATE_TIME:J

    new-instance v0, Lcom/sec/android/inputmethod/Booster$BoosterHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/Booster$BoosterHandler;-><init>(Lcom/sec/android/inputmethod/Booster;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/inputmethod/Booster;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/sec/android/inputmethod/Booster;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.inputmethod"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    aget v2, v7, v8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/android/inputmethod/Booster;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/sec/android/inputmethod/Booster;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.inputmethod"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    aget v2, v6, v8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/Booster;)Landroid/os/DVFSHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/inputmethod/Booster;Landroid/os/DVFSHelper;)Landroid/os/DVFSHelper;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/Booster;)Landroid/os/DVFSHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/inputmethod/Booster;Landroid/os/DVFSHelper;)Landroid/os/DVFSHelper;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    return-object p1
.end method

.method private doBoost(IZ)V
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/inputmethod/Booster;->lastBoostRequestedAt:J

    sub-long/2addr v0, v2

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/sec/android/inputmethod/Booster;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/inputmethod/Booster;->lastBoostRequestedAt:J

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/sec/android/inputmethod/Booster;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.inputmethod"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    const/4 v2, 0x0

    aget v2, v8, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_3

    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/sec/android/inputmethod/Booster;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.inputmethod"

    const/16 v3, 0xe

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const/4 v2, 0x0

    aget v2, v7, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, p1}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, p1}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_5
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    int-to-long v2, p1

    iget-wide v4, p0, Lcom/sec/android/inputmethod/Booster;->SELF_TERMINATE_TIME:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v0, "SamsungIME"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private doCPUOnlyBoost(I)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/inputmethod/Booster;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/sec/android/inputmethod/Booster;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.inputmethod"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    const/4 v2, 0x0

    aget v2, v6, v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, p1}, Landroid/os/DVFSHelper;->acquire(I)V

    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/inputmethod/Booster;
    .locals 1

    sget-object v0, Lcom/sec/android/inputmethod/Booster;->sInstance:Lcom/sec/android/inputmethod/Booster;

    if-nez v0, :cond_0

    sput-object p0, Lcom/sec/android/inputmethod/Booster;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/inputmethod/Booster;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/Booster;-><init>()V

    sput-object v0, Lcom/sec/android/inputmethod/Booster;->sInstance:Lcom/sec/android/inputmethod/Booster;

    :cond_0
    sget-object v0, Lcom/sec/android/inputmethod/Booster;->sInstance:Lcom/sec/android/inputmethod/Booster;

    return-object v0
.end method


# virtual methods
.method public doBoost(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/inputmethod/Booster;->doBoost(IZ)V

    return-void
.end method

.method public doCPUBooster(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/Booster;->doCPUOnlyBoost(I)V

    return-void
.end method

.method public stopBoost()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_1
    return-void
.end method

.method public terminate()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->isAquired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->isAquired()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_1
    iput-object v1, p0, Lcom/sec/android/inputmethod/Booster;->mCPUBooster:Landroid/os/DVFSHelper;

    iput-object v1, p0, Lcom/sec/android/inputmethod/Booster;->mCPUMaxBooster:Landroid/os/DVFSHelper;

    return-void
.end method
