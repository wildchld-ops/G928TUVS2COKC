.class public Lcom/sec/android/cover/widget/RemoteViewContainerView;
.super Landroid/widget/FrameLayout;
.source "RemoteViewContainerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/widget/RemoteViewContainerView$OnClickListenerWrapper;,
        Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mAutomaticUpdate:Z

.field protected mRemoteView:Landroid/view/View;

.field protected mRemoteViewType:Ljava/lang/String;

.field protected mUpdateListener:Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mRemoteViewType:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mAutomaticUpdate:Z

    new-instance v0, Lcom/sec/android/cover/widget/RemoteViewContainerView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/widget/RemoteViewContainerView$1;-><init>(Lcom/sec/android/cover/widget/RemoteViewContainerView;)V

    iput-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mRemoteViewType:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mAutomaticUpdate:Z

    new-instance v0, Lcom/sec/android/cover/widget/RemoteViewContainerView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/widget/RemoteViewContainerView$1;-><init>(Lcom/sec/android/cover/widget/RemoteViewContainerView;)V

    iput-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mRemoteViewType:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mAutomaticUpdate:Z

    new-instance v0, Lcom/sec/android/cover/widget/RemoteViewContainerView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/widget/RemoteViewContainerView$1;-><init>(Lcom/sec/android/cover/widget/RemoteViewContainerView;)V

    iput-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/widget/RemoteViewContainerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->onChildViewClicked(Landroid/view/View;)V

    return-void
.end method

.method private getOnClikListener(Landroid/view/View;)Landroid/view/View$OnClickListener;
    .locals 8

    const/4 v5, 0x0

    :try_start_0
    const-string v4, "android.view.View"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v6, "mListenerInfo"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const-string v4, "android.view.View$ListenerInfo"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v6, "mOnClickListener"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    :cond_0
    move-object v4, v5

    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v4, v5

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View$OnClickListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v4, Lcom/sec/android/cover/widget/RemoteViewContainerView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getOnClickListener : Could not access onClickListener! / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    goto :goto_0
.end method

.method private hookOnClickListenerOfChildView(Landroid/view/View;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->getOnClikListener(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v3, Lcom/sec/android/cover/widget/RemoteViewContainerView$OnClickListenerWrapper;

    invoke-direct {v3, p0, v4}, Lcom/sec/android/cover/widget/RemoteViewContainerView$OnClickListenerWrapper;-><init>(Lcom/sec/android/cover/widget/RemoteViewContainerView;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    instance-of v6, p1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    move-object v5, p1

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->hookOnClickListenerOfChildView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onChildViewClicked(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->TAG:Ljava/lang/String;

    const-string v1, "onChildViewClicked : Child view clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    return-void
.end method


# virtual methods
.method public getRemoteView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mRemoteView:Landroid/view/View;

    return-object v0
.end method

.method public getRemoteViewType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mRemoteViewType:Ljava/lang/String;

    return-object v0
.end method

.method public hideRemoteView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mRemoteView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mRemoteView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public init(Ljava/lang/String;Z)V
    .locals 3

    sget-object v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init : Type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " autoUpdate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mRemoteViewType:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mAutomaticUpdate:Z

    return-void
.end method

.method public isRemoteViewAvailable()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mRemoteView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    sget-object v1, Lcom/sec/android/cover/widget/RemoteViewContainerView;->TAG:Ljava/lang/String;

    const-string v2, "onAttachedToWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mAutomaticUpdate:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mRemoteViewType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getRemoteViewInfo(Ljava/lang/String;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->updateRemoteView(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public removeRemoteView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mRemoteView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mRemoteView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mRemoteView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public setOnUpdateListener(Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mAutomaticUpdate:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->TAG:Ljava/lang/String;

    const-string v1, "setOnUpdateListener : Automatic update is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mUpdateListener:Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;

    goto :goto_0
.end method

.method public showRemoteView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mRemoteView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mRemoteView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateRemoteView(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 6

    const/4 v5, -0x1

    if-eqz p1, :cond_4

    iget-object v1, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v2, Lcom/sec/android/cover/widget/RemoteViewContainerView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRemoteView : Type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Visibility="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->removeRemoteView()V

    iget-object v2, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_3

    iget-boolean v2, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    const-string v2, "volume"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->hookOnClickListenerOfChildView(Landroid/view/View;)V

    invoke-virtual {p0, v0, v5, v5}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->addView(Landroid/view/View;II)V

    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mRemoteView:Landroid/view/View;

    :goto_2
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/sec/android/cover/widget/RemoteViewContainerView;->TAG:Ljava/lang/String;

    const-string v3, "info.mRemoteViews is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->removeRemoteView()V

    goto :goto_2
.end method
