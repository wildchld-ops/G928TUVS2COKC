.class public Lcom/sec/android/cover/clearcover/ClearCoverController;
.super Lcom/sec/android/cover/BaseCoverController;
.source "ClearCoverController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

.field private mRootView:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/clearcover/ClearCoverController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/ClearCoverController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/cover/BaseCoverController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mRootView:Landroid/widget/FrameLayout;

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverController;->TAG:Ljava/lang/String;

    const-string v1, "ClearCoverController instance created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onCoverAttached(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverAttached(Lcom/samsung/android/cover/CoverState;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$layout;->clear_cover_view:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/clearcover/ClearCoverView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverController;->TAG:Ljava/lang/String;

    const-string v1, "ClearCoverView added at rootview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onCoverDetatched(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverDetatched(Lcom/samsung/android/cover/CoverState;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_1
    iput-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mRootView:Landroid/widget/FrameLayout;

    return-void
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    :cond_0
    return-void
.end method

.method public onStatusBarStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onStatusBarStateChanged(I)V

    return-void
.end method
