.class public Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;
.super Landroid/widget/LinearLayout;
.source "NetworkStatsViewr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;
    }
.end annotation


# instance fields
.field private mActivated:Z

.field private mAttached:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mLastRx:J

.field private mLastTx:J

.field private mLastUpdateTime:J

.field private mNetStatsHide:Z

.field private mRefreshInterval:J

.field mSettingsObserver:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;

.field private mTextViewRx:Landroid/widget/TextView;

.field private mTextViewTx:Landroid/widget/TextView;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mUpdateRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$2;-><init>(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mLastRx:J

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mLastTx:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mSettingsObserver:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mActivated:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mActivated:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mAttached:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mTextViewTx:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mTextViewRx:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mNetStatsHide:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->updateStats()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mRefreshInterval:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setTextViewSpeed(Landroid/widget/TextView;JF)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x49800000    # 1048576.0f

    const/high16 v3, 0x44800000    # 1024.0f

    const-string v1, "B/s"

    long-to-float v2, p2

    div-float v0, v2, p4

    cmpl-float v2, v0, v4

    if-ltz v2, :cond_1

    const-string v1, "MB/s"

    div-float/2addr v0, v4

    :cond_0
    :goto_0
    float-to-int v2, v0

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-nez v2, :cond_2

    const-string v2, "%d %s"

    new-array v3, v7, [Ljava/lang/Object;

    float-to-int v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    cmpl-float v2, v0, v3

    if-ltz v2, :cond_0

    const-string v1, "KB/s"

    div-float/2addr v0, v3

    goto :goto_0

    :cond_2
    const-string v2, "%.1f %s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private updateStats()V
    .locals 15

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mActivated:Z

    if-eqz v11, :cond_0

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mAttached:Z

    if-nez v11, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_1

    const/16 v11, 0x8

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->setVisibility(I)V

    :cond_1
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v2

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v11, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mLastTx:J

    sub-long v8, v2, v11

    iget-wide v11, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mLastRx:J

    sub-long v6, v0, v11

    iput-wide v2, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mLastTx:J

    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mLastRx:J

    const-wide/16 v11, 0x0

    cmp-long v11, v6, v11

    if-gez v11, :cond_3

    const-wide/16 v6, 0x0

    :cond_3
    const-wide/16 v11, 0x0

    cmp-long v11, v8, v11

    if-gez v11, :cond_4

    const-wide/16 v8, 0x0

    :cond_4
    iget-wide v11, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mLastUpdateTime:J

    sub-long v11, v4, v11

    long-to-float v11, v11

    const/high16 v12, 0x447a0000    # 1000.0f

    div-float v10, v11, v12

    iput-wide v4, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mLastUpdateTime:J

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mTextViewTx:Landroid/widget/TextView;

    invoke-direct {p0, v11, v8, v9, v10}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->setTextViewSpeed(Landroid/widget/TextView;JF)V

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mTextViewRx:Landroid/widget/TextView;

    invoke-direct {p0, v11, v6, v7, v10}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->setTextViewSpeed(Landroid/widget/TextView;JF)V

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mNetStatsHide:Z

    if-eqz v11, :cond_6

    const-wide/16 v11, 0x0

    cmp-long v11, v6, v11

    if-nez v11, :cond_6

    const-wide/16 v11, 0x0

    cmp-long v11, v8, v11

    if-nez v11, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_5

    const/16 v11, 0x8

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->setVisibility(I)V

    :cond_5
    :goto_1
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mHandler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mUpdateRunnable:Ljava/lang/Runnable;

    iget-wide v13, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mRefreshInterval:J

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mAttached:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mAttached:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mUpdateRunnable:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mRefreshInterval:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mSettingsObserver:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;->observe()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mAttached:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mAttached:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mSettingsObserver:Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr$SettingsObserver;->unobserver()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0e045e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mTextViewTx:Landroid/widget/TextView;

    const v0, 0x7f0e045d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkStatsViewr;->mTextViewRx:Landroid/widget/TextView;

    return-void
.end method
