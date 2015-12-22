.class public Lcom/android/systemui/statusbar/ExpandableNotificationRow;
.super Lcom/android/systemui/statusbar/ActivatableNotificationView;
.source "ExpandableNotificationRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;
    }
.end annotation


# instance fields
.field private mClearable:Z

.field private mExpandable:Z

.field private mExpansionDisabled:Z

.field private mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

.field private mHasUserChangedExpansion:Z

.field private mHideUnlocked:Z

.field private mIsHeadsUp:Z

.field private mIsKeyguard:Z

.field private mIsSystemExpanded:Z

.field private mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

.field private mKnoxView:Z

.field private mLogger:Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;

.field private mLoggingKey:Ljava/lang/String;

.field private mMaxExpandHeight:I

.field private mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

.field private mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

.field private mRowMaxHeight:I

.field private mRowMinHeight:I

.field private mSensitive:Z

.field private mShowingPublic:Z

.field private mShowingPublicForIntrinsicHeight:Z

.field private mShowingPublicInitialized:Z

.field mSidesLeftGroup:Landroid/view/View;

.field mSidesRightGroup:Landroid/view/View;

.field private mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

.field private mTempUserLocked:Z

.field private mUserExpanded:Z

.field private mUserLocked:Z

.field private mVetoButton:Landroid/view/View;

.field private mWasReset:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHideUnlocked:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object p1
.end method

.method private animateShowingPublic(JJ)V
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxView:Z

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    :goto_0
    move-object v0, v2

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow$2;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$2;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxView:Z

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    goto :goto_1
.end method

.method private getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    goto :goto_0
.end method

.method private isExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpansionDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasUserChangedExpansion()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSystemExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logExpansionEvent(ZZ)V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    if-eq p2, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLogger:Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLogger:Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLoggingKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;->logNotificationExpansion(Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method private setIconAnimationRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setIconAnimationRunningForChild(ZLandroid/view/View;)V
    .locals 3

    if-eqz p2, :cond_0

    const v2, 0x1020006

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconRunning(Landroid/widget/ImageView;Z)V

    const v2, 0x1020034

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconRunning(Landroid/widget/ImageView;Z)V

    :cond_0
    return-void
.end method

.method private setIconRunning(Landroid/widget/ImageView;Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0

    :cond_2
    instance-of v2, v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p2, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    goto :goto_0
.end method

.method private updateMaxExpandHeight()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getMaxHeight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged()V

    :cond_0
    return-void
.end method

.method private updateVetoButton()V
    .locals 4

    const/16 v1, 0x8

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxView:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public applyExpansionToLayout()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setActualHeight(I)V

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowMinHeight:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setActualHeight(I)V

    goto :goto_0
.end method

.method public changeBackgroundForDragDown()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getBackgroundForDragDown()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setBackgroundDragDown(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public enableKnoxView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxView:Z

    return-void
.end method

.method protected filterMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->filterMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHideUnlocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHideUnlocked:Z

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowMinHeight:I

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicForIntrinsicHeight:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowMinHeight:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v1

    goto :goto_0
.end method

.method public getMaxExpandHeight()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicForIntrinsicHeight:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowMinHeight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    goto :goto_0
.end method

.method public getMaxHeight()I
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMaxHeight()I

    move-result v1

    return v1
.end method

.method public getMinHeight()I
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight()I

    move-result v1

    return v1
.end method

.method public getRowMaxHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowMaxHeight:I

    return v0
.end method

.method public getStatusBarNotification()Landroid/service/notification/StatusBarNotification;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method public hasUserChangedExpansion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    return v0
.end method

.method public isClearable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContentExpandable()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->isContentExpandable()Z

    move-result v1

    return v1
.end method

.method public isExpandable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    return v0
.end method

.method public isMaxExpandHeightInitialized()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPublicShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    return v0
.end method

.method public isSystemExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemExpanded:Z

    return v0
.end method

.method public isUserExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    return v0
.end method

.method public isUserLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserLocked:Z

    return v0
.end method

.method public notifyContentUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->notifyContentUpdated()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->notifyContentUpdated()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onFinishInflate()V

    const v1, 0x7f0e03e8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationContentView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    const v1, 0x7f0e03e7

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationContentView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    const v1, 0x7f0e03e9

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationContentView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    const v1, 0x7f0e03eb

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    new-instance v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    const v1, 0x7f0e03ea

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mSwipeBlockNotification:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0e03df

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSidesLeftGroup:Landroid/view/View;

    const v1, 0x7f0e03e3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSidesRightGroup:Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    const/4 v1, 0x0

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onLayout(ZIIII)V

    iget v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mWasReset:Z

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateMaxExpandHeight()V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->applyExpansionToLayout()V

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mWasReset:Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->reset()V

    iput v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowMinHeight:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    iput v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowMaxHeight:I

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserLocked:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitive:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemExpanded:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpansionDisabled:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->reset(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->reset(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->reset(Z)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxView:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetHeight()V

    invoke-direct {p0, v3, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->logExpansionEvent(ZZ)V

    return-void
.end method

.method public resetHeight()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetActualHeight()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mWasReset:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onHeightReset()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->requestLayout()V

    return-void
.end method

.method public resetUserExpansion()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    return-void
.end method

.method public resizeNotificationHeight()V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsKeyguard:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isMiniCon()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowMinHeight:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    const v3, 0x109008f

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0307

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setActualHeight(IZ)V
    .locals 4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserLocked:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTempUserLocked:Z

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setActualHeight(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setActualHeight(I)V

    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserLocked:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTempUserLocked:Z

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mSwipeBlockNotification:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSidesLeftGroup:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSidesRightGroup:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSidesLeftGroup:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSidesRightGroup:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSidesLeftGroup:Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSidesRightGroup:Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setActualHeight(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/NotificationGuts;->setActualHeight(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->invalidate()V

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setActualHeight(IZ)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserLocked:Z

    invoke-virtual {v2, p1, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->setActualHeight(IZ)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserLocked:Z

    invoke-virtual {v2, p1, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->setActualHeight(IZ)V

    goto :goto_0
.end method

.method public setClipTopAmount(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setClipTopAmount(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipTopAmount(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipTopAmount(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationGuts;->setClipTopAmount(I)V

    :cond_0
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setDark(ZZJ)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationContentView;->setDark(ZZJ)V

    :cond_0
    return-void
.end method

.method public setExpandable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    return-void
.end method

.method public setExpansionDisabled(Z)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpansionDisabled:Z

    if-eq p1, v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpansionDisabled:Z

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->logExpansionEvent(ZZ)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged()V

    :cond_0
    return-void
.end method

.method public setExpansionLogger(Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLogger:Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;

    iput-object p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLoggingKey:Ljava/lang/String;

    return-void
.end method

.method public setHeadsUp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    return-void
.end method

.method public setHeightRange(II)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowMinHeight:I

    iput p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowMaxHeight:I

    return-void
.end method

.method public setHideSensitive(ZZJJ)V
    .locals 6

    const/16 v4, 0x8

    const/4 v2, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxView:Z

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getHideUnlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxView:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-ne v1, v0, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxView:Z

    if-eqz v1, :cond_4

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitive:Z

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxView:Z

    if-nez v1, :cond_6

    move v1, v3

    :goto_3
    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v1, :cond_7

    move v1, v4

    :goto_4
    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxView:Z

    if-eqz v5, :cond_8

    :goto_5
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->setVisibility(I)V

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateVetoButton()V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    goto :goto_1

    :cond_6
    move v1, v4

    goto :goto_3

    :cond_7
    move v1, v3

    goto :goto_4

    :cond_8
    move v3, v4

    goto :goto_5
.end method

.method public setHideSensitiveForIntrinsicHeight(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitive:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicForIntrinsicHeight:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHideUnlocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHideUnlocked:Z

    return-void
.end method

.method public setIconAnimationRunning(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V

    return-void
.end method

.method public setSensitive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitive:Z

    return-void
.end method

.method public setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateVetoButton()V

    return-void
.end method

.method public setSystemExpanded(Z)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemExpanded:Z

    if-eq p1, v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemExpanded:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->logExpansionEvent(ZZ)V

    :cond_0
    return-void
.end method

.method public setUserExpanded(Z)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->logExpansionEvent(ZZ)V

    goto :goto_0
.end method

.method public setUserLocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserLocked:Z

    return-void
.end method

.method public shouldExpand()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateKeyGuardState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsKeyguard:Z

    return-void
.end method
