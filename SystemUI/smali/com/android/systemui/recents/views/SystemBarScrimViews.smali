.class public Lcom/android/systemui/recents/views/SystemBarScrimViews;
.super Ljava/lang/Object;
.source "SystemBarScrimViews.java"


# instance fields
.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mHasNavBarScrim:Z

.field mHasStatusBarScrim:Z

.field mNavBarScrimView:Landroid/view/View;

.field mShouldAnimateNavBarScrim:Z

.field mShouldAnimateStatusBarScrim:Z

.field mStatusBarScrimView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/systemui/recents/RecentsConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const v0, 0x7f0e0286

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mStatusBarScrimView:Landroid/view/View;

    const v0, 0x7f0e028a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public prepareEnterRecentsAnimation()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->hasNavBarScrim()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasNavBarScrim:Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->shouldAnimateNavBarScrim()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateNavBarScrim:Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->hasStatusBarScrim()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mHasStatusBarScrim:Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->shouldAnimateStatusBarScrim()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mShouldAnimateStatusBarScrim:Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mNavBarScrimView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/SystemBarScrimViews;->mStatusBarScrimView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public startEnterRecentsAnimation()V
    .locals 0

    return-void
.end method

.method public startExitRecentsAnimation()V
    .locals 0

    return-void
.end method
