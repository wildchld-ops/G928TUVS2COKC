.class public Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;
.super Landroid/widget/FrameLayout;
.source "IncomingCallImageWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;
    }
.end annotation


# instance fields
.field private final END_CALL_IMAGE_WIDGET:Ljava/lang/String;

.field private final INCOMING_CALL_IMAGE_WIDGET:Ljava/lang/String;

.field private final IN_CALL_IMAGE_WIDGET:Ljava/lang/String;

.field private final LOG_TAG:Ljava/lang/String;

.field private final USE_HOVER_TO_ACTION:Ljava/lang/String;

.field protected final VIBRATE_LONG:J

.field protected final VIBRATE_SHORT:J

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mContext:Landroid/content/Context;

.field protected mGrabbedState:I

.field private mIsTriggered:Z

.field protected mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

.field protected mLeftHintTextView:Landroid/widget/TextView;

.field protected mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

.field protected mLeftTopHintTextView:Landroid/widget/TextView;

.field protected mOnTriggerListener:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;

.field private mRejectMsgHandleView:Landroid/view/View;

.field protected mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

.field protected mRightHintTextView:Landroid/widget/TextView;

.field private mTag:Ljava/lang/String;

.field protected mUseHoverToAction:Z

.field protected mUseVibate:Z

.field protected mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->LOG_TAG:Ljava/lang/String;

    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->INCOMING_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const-string v0, "InCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->IN_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const-string v0, "EndCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->END_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const-string v0, "useHoverToAction"

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->USE_HOVER_TO_ACTION:Ljava/lang/String;

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->VIBRATE_SHORT:J

    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->VIBRATE_LONG:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    iput v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    iput-boolean v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mIsTriggered:Z

    iput-object p1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->inflateHandle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->LOG_TAG:Ljava/lang/String;

    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->INCOMING_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const-string v0, "InCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->IN_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const-string v0, "EndCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->END_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const-string v0, "useHoverToAction"

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->USE_HOVER_TO_ACTION:Ljava/lang/String;

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->VIBRATE_SHORT:J

    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->VIBRATE_LONG:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    iput v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    iput-boolean v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mIsTriggered:Z

    iput-object p1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->inflateHandle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->LOG_TAG:Ljava/lang/String;

    const-string v0, "IncomingCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->INCOMING_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const-string v0, "InCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->IN_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const-string v0, "EndCallImageWidget"

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->END_CALL_IMAGE_WIDGET:Ljava/lang/String;

    const-string v0, "useHoverToAction"

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->USE_HOVER_TO_ACTION:Ljava/lang/String;

    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->VIBRATE_SHORT:J

    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->VIBRATE_LONG:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    iput v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    iput-boolean v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mIsTriggered:Z

    iput-object p1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->inflateHandle()V

    return-void
.end method

.method private getDistanceCompareTwoViews(Landroid/view/View;Landroid/view/View;Z)[I
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x2

    new-array v2, v3, [I

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    if-eqz p3, :cond_2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    aput v3, v2, v5

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    aput v3, v2, v6

    goto :goto_0

    :cond_2
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    aput v3, v2, v5

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    aput v3, v2, v6

    goto :goto_0
.end method

.method private hasCoverTag()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->isClearCover(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->isSViewCover(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hideHint()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->hideRightHint()V

    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->hideLeftHint()V

    const-string v0, "incoming_call_widget_for_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->hasCoverTag()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->hideLeftTopHint()V

    :cond_0
    return-void
.end method

.method private hideLeftHint()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideLeftTopHint()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHintTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideRightHint()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private isClearCover(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "clear_cover_incoming"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "clear_cover_incall"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "clear_cover_redial_call"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private isSViewCover(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "sview_cover_incoming"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sview_cover_incall"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sview_cover_redial_call"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "IncomingCallImageWidget"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private makeHintView()V
    .locals 9

    const v8, 0x7f0400a8

    const/4 v7, 0x0

    const/4 v6, -0x2

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {v0, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    const v4, 0x7f0400a9

    invoke-virtual {v0, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v1, v6, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x55

    invoke-direct {v3, v6, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "incoming_call_widget_for_volte"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSVideoCall()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->hasCoverTag()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHintTextView:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x53

    invoke-direct {v2, v6, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHintTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private removeHintWhenTriggered()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mIsTriggered:Z

    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->hideHint()V

    return-void
.end method

.method private setViewStatePostAnimation(Landroid/view/View;F)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/animation/Animator;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private showHint()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const-string v0, "incoming_call_widget_for_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSVideoCall()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->hasCoverTag()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private updateHintText()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v2, "updateHintText"

    invoke-direct {p0, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getTabCircle()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getTabCircle()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3, v9}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getDistanceCompareTwoViews(Landroid/view/View;Landroid/view/View;Z)[I

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateHintText : leftHandle distance :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLeft()I

    move-result v3

    aget v4, v0, v8

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTop()I

    move-result v4

    aget v5, v0, v9

    add-int/2addr v4, v5

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getRight()I

    move-result v5

    aget v6, v0, v8

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getBottom()I

    move-result v6

    aget v7, v0, v9

    add-int/2addr v6, v7

    sub-int/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getTabCircle()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getTabCircle()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3, v8}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getDistanceCompareTwoViews(Landroid/view/View;Landroid/view/View;Z)[I

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateHintText : rightHandle distance :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLeft()I

    move-result v3

    aget v4, v0, v8

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTop()I

    move-result v4

    aget v5, v0, v9

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getRight()I

    move-result v5

    aget v6, v0, v8

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getBottom()I

    move-result v6

    aget v7, v0, v9

    add-int/2addr v6, v7

    add-int/2addr v6, v1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public clearDrawable()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->clearDrawable()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->clearDrawable()V

    :cond_2
    return-void
.end method

.method public dispatchTriggerEvent(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchTriggerEvent : whichHandle - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->log(Ljava/lang/String;)V

    const-wide/16 v0, 0x28

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->vibrate(J)V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public enableArrowAnimation(IZ)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAnimatorForAnswerCall(I)Landroid/animation/AnimatorSet;
    .locals 24

    new-instance v19, Landroid/animation/AnimatorSet;

    invoke-direct/range {v19 .. v19}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    if-nez p1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getTabCircleView()Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "window"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/WindowManager;

    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v10, v0, [I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getTabCircleView()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    const/16 v19, 0x0

    aget v19, v10, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getTabCircleView()Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    add-int v14, v19, v20

    iget v0, v5, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    div-int/lit8 v6, v19, 0x2

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    iget v0, v5, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x4

    add-int v6, v6, v19

    :cond_0
    sub-int v19, v6, v14

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v19, v0

    sget-object v20, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v17, v21, v22

    invoke-static/range {v19 .. v21}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    new-instance v19, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/16 v19, 0x1

    aget v19, v10, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getTabCircleView()Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    add-int v15, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a0180

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a0195

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    :cond_1
    iget v0, v5, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    sub-int v19, v19, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getTabCircleView()Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v7, v19, v20

    sub-int v19, v7, v15

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v19, v0

    sget-object v20, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v18, v21, v22

    invoke-static/range {v19 .. v21}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    new-instance v19, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getConversionAnimator()Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v19, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v19, v0

    sget-object v20, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    aput v23, v21, v22

    invoke-static/range {v19 .. v21}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    new-instance v19, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v19, v0

    sget-object v20, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    aput v23, v21, v22

    invoke-static/range {v19 .. v21}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    new-instance v19, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_4
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->removeHintWhenTriggered()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v19, v0

    return-object v19

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getTabCircleView()Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "window"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/WindowManager;

    invoke-interface/range {v19 .. v19}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v10, v0, [I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getTabCircleView()Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    const/16 v19, 0x0

    aget v19, v10, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getTabCircleView()Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    add-int v14, v19, v20

    iget v0, v5, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    div-int/lit8 v6, v19, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    iget v0, v5, Landroid/graphics/Point;->x:I

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x4

    add-int v6, v6, v19

    :cond_6
    sub-int v19, v6, v14

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v19, v0

    sget-object v20, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v17, v21, v22

    invoke-static/range {v19 .. v21}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    new-instance v19, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/16 v19, 0x1

    aget v19, v10, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getTabCircleView()Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    add-int v15, v19, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a0180

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0a0195

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    :cond_7
    iget v0, v5, Landroid/graphics/Point;->y:I

    move/from16 v19, v0

    sub-int v19, v19, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getTabCircleView()Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    sub-int v7, v19, v20

    sub-int v19, v7, v15

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v19, v0

    sget-object v20, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v18, v21, v22

    invoke-static/range {v19 .. v21}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    new-instance v19, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getConversionAnimator()Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_8

    new-instance v19, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v19, v0

    sget-object v20, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    aput v23, v21, v22

    invoke-static/range {v19 .. v21}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-instance v19, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v19, v0

    sget-object v20, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    aput v23, v21, v22

    invoke-static/range {v19 .. v21}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    new-instance v19, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_0
.end method

.method public getAnimatorForAnswerCallforWithHardkey()Landroid/animation/AnimatorSet;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->removeHintWhenTriggered()V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mAnimatorSet:Landroid/animation/AnimatorSet;

    return-object v2
.end method

.method protected inflateHandle()V
    .locals 10

    const/16 v9, 0x53

    const/4 v8, 0x0

    const/4 v7, -0x2

    const-string v4, "inflateHandle..."

    invoke-direct {p0, v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->initHandle()V

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->addExtraTouchArea()V

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->addExtraTouchArea()V

    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "useHoverToAction"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mUseHoverToAction:Z

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4, p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setParent(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;)V

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4, v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setWidgetTypeTag(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4, p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setParent(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;)V

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4, v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setWidgetTypeTag(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->updateHandle()V

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->updateHandle()V

    const-string v5, "InCallImageWidget"

    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v5, "EndCallImageWidget"

    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4, v8}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setEasyTouchModeEnabled(Z)V

    :cond_1
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x55

    invoke-direct {v2, v7, v7, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {p0, v4, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {p0, v4, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "incoming_call_widget_for_volte"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSVideoCall()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->hasCoverTag()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    iget-object v5, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4, p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setParent(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;)V

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4, v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setWidgetTypeTag(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->updateHandle()V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v7, v7, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {p0, v4, v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOnEnhanced()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->hasCoverTag()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->makeHintView()V

    :cond_3
    iput-boolean v8, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mIsTriggered:Z

    return-void
.end method

.method initHandle()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->isClearCover(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    new-instance v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v3, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    const-string v0, "clear_cover_incall"

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setHandleImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setContentDescription(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    const v1, 0x7f02006e

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setHandleImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->isSViewCover(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    new-instance v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v3, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    const-string v0, "sview_cover_incall"

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    const v1, 0x7f020332

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setHandleImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    const v1, 0x7f020336

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setHandleImageResource(I)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    new-instance v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    goto :goto_0
.end method

.method protected notifyTargetProximityRatio(F)V
    .locals 4

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v1, v3, p1

    const v2, 0x3d4ccccd    # 0.05f

    add-float/2addr v1, v2

    sub-float v0, v3, v1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setAlphaForDeactive(F)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setAlphaForDeactive(F)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setAlphaForDeactive(F)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRejectMsgHandleView:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setViewStatePostAnimation(Landroid/view/View;F)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->updateLayout()V

    return-void
.end method

.method public removeArrowMsg()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->removeArrowMsg()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->removeArrowMsg()V

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    :cond_1
    const-string v0, "incoming_call_widget_for_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSVideoCall()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->hasCoverTag()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->enableArrowAnimation(Z)V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    :cond_2
    return-void
.end method

.method public resetAnswerCallAnimator()V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "incoming_call_widget_for_volte"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->resetConversionAnimator()V

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v1, v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v1, v5}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setTranslationX(F)V

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v1, v5}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v1, v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->resetConversionAnimator()V

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v1, v5}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setTranslationX(F)V

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v1, v5}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v1, v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setAlpha(F)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRejectMsgHandleView:Landroid/view/View;

    invoke-direct {p0, v1, v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setViewStatePostAnimation(Landroid/view/View;F)V

    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->reset()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->resetConversionAnimator()V

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v1, v5}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setTranslationX(F)V

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v1, v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v1, v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v1, v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setAlpha(F)V

    goto :goto_1
.end method

.method setContentDescription(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d017f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0180

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->hasCoverTag()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "clear_cover_incoming"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "sview_cover_incoming"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0231

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0232

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyInteraction()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isUniversalSwitchEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v2, v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v2, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :cond_4
    const-string v2, "clear_cover_incall"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "sview_cover_incall"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0233

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0234

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected setGrabbedState(I)V
    .locals 2

    iget v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    iget v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRejectMsgHandleView:Landroid/view/View;

    iget v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    if-nez v0, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setViewStatePostAnimation(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;

    iget v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    :cond_2
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOnEnhanced()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->hideHint()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    :cond_3
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOnEnhanced()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->hideHint()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOnEnhanced()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->hideHint()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    :cond_4
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOnEnhanced()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mIsTriggered:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->showHint()V

    goto/16 :goto_0

    :cond_5
    const/high16 v0, 0x3f000000    # 0.5f

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setOnTriggerListener(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mOnTriggerListener:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget$OnTriggerListener;

    return-void
.end method

.method public setRejectMsgHandleView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRejectMsgHandleView:Landroid/view/View;

    return-void
.end method

.method public setTouchVibationMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mUseVibate:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->reset()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public setVisibility(II)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v0, p2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected updateLayout()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    if-nez v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0080

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v9, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0081

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v10, v14

    const-string v14, "support_dialpad_by_hardkey"

    invoke-static {v14}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOnEnhanced()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0084

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v10, v14

    :cond_2
    :goto_1
    const-string v14, "clear_cover_incoming"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "clear_cover_incall"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a03d9

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v9, v14

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v14}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getLeft()I

    move-result v14

    sub-int v6, v14, v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v14}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getTop()I

    move-result v14

    add-int v7, v14, v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v14}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getRight()I

    move-result v14

    add-int v12, v14, v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v14}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getTop()I

    move-result v14

    add-int v13, v14, v10

    const/4 v8, 0x0

    const-string v14, "incoming_call_widget_for_volte"

    invoke-static {v14}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSVideoCall()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->hasCoverTag()Z

    move-result v14

    if-nez v14, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0085

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v11, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0086

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v5, v14

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a02e0

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v11, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a02e1

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v5, v14

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v14}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getTop()I

    move-result v14

    add-int v7, v14, v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v14}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getTop()I

    move-result v14

    add-int/2addr v14, v11

    div-int/lit8 v15, v5, 0x2

    sub-int v13, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v14}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getTop()I

    move-result v14

    add-int/2addr v14, v11

    sub-int v8, v14, v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v15}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getWidth()I

    move-result v15

    add-int/2addr v15, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getHeight()I

    move-result v16

    add-int v16, v16, v8

    move/from16 v0, v16

    invoke-virtual {v14, v6, v8, v15, v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setVisibility(I)V

    :cond_6
    :goto_3
    const-string v14, "sview_cover_redial_call"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a03b3

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v9, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v14}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getLeft()I

    move-result v14

    add-int v6, v14, v9

    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v15}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getWidth()I

    move-result v15

    add-int/2addr v15, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getHeight()I

    move-result v16

    add-int v16, v16, v7

    move/from16 v0, v16

    invoke-virtual {v14, v6, v7, v15, v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v15}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getWidth()I

    move-result v15

    sub-int v15, v12, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getHeight()I

    move-result v16

    add-int v16, v16, v13

    move/from16 v0, v16

    invoke-virtual {v14, v15, v13, v12, v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->layout(IIII)V

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOnEnhanced()Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "incoming_call_widget_for_volte"

    invoke-static {v14}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSVideoCall()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->hasCoverTag()Z

    move-result v14

    if-nez v14, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a04a3

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v2, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a04a4

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v3, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a04a5

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v4, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a04a6

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v1, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHintTextView:Landroid/widget/TextView;

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHintTextView:Landroid/widget/TextView;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v1, v2, v15, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHintTextView:Landroid/widget/TextView;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v1, v3, v15, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mRightHintTextView:Landroid/widget/TextView;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0083

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v10, v14

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOnEnhanced()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0082

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v10, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "syh : updateLayout - enhanced easymode for novel, marginDeltaBottom: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    const-string v14, "sview_cover_incoming"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    const-string v14, "sview_cover_incall"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a03ba

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v9, v14

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftTopHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setVisibility(I)V

    goto/16 :goto_3

    :cond_f
    const-string v14, "clear_cover_redial_call"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mTag:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a03d8

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v9, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mLeftHandle:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v14}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getLeft()I

    move-result v14

    add-int v6, v14, v9

    goto/16 :goto_4

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->updateHintText()V

    goto/16 :goto_0
.end method

.method public declared-synchronized vibrate(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mUseVibate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x1e

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
