.class public Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;
.super Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
.source "CoverCircleContactView.java"

# interfaces
.implements Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView$4;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mKeyguardManager:Landroid/app/KeyguardManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView$1;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mKeyguardManager:Landroid/app/KeyguardManager;

    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_swipearrow_contact:I

    iput v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mArrowResId:I

    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_contact_button:I

    iput v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mContentResId:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onFinishInflate()V

    return-void
.end method

.method public onUnlockExecuted()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onUnlockExecuted()V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isTPhoneEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_cover_popup_view_detail:I

    new-instance v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView$2;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView$2;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;)V

    invoke-virtual {v1, v2, v4, v3}, Lcom/sec/android/cover/manager/CoverPopupManager;->showPopupDialog(IILcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-static {}, Lcom/sec/android/cover/CoverUtils;->getTPhoneDialIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setPendingIntent(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "CS01"

    invoke-static {v1, v2}, Lcom/sec/android/cover/CoverUtils;->reportContextualSurvey(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$string;->s_view_cover_open_popup_favorite:I

    new-instance v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView$3;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView$3;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;)V

    invoke-virtual {v1, v2, v4, v3}, Lcom/sec/android/cover/manager/CoverPopupManager;->showPopupDialog(IILcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-static {}, Lcom/sec/android/cover/CoverUtils;->getFavoriteContactIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setPendingIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mPreviewAnimationController:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mPreviewAnimationController:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;

    invoke-interface {v1}, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;->resetPreviewView()V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->TAG:Ljava/lang/String;

    const-string v2, "onClick : Launching favorite"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mPreviewAnimationController:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mPreviewAnimationController:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-interface {v1, v2}, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;->startPreviewAnimation(Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/cover/CoverUtils;->getFavoriteContactIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->TAG:Ljava/lang/String;

    const-string v2, "showCoverUi : ActivityNotFoundException !!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onUnlockViewPressed()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onUnlockViewPressed()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mPreviewAnimationController:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mPreviewAnimationController:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;

    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;->Contact:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;

    invoke-interface {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;->setPreviewView(Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;)V

    :cond_0
    return-void
.end method

.method public refreshChildView()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mContentIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mContentIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->lock_btn_call_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setShortCutImageResource(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mContentIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView$4;->$SwitchMap$com$sec$android$cover$sviewcover$effect$CoverCircleView$ContentStates:[I

    invoke-virtual {p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->lock_btn_call_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->lock_btn_call_pressed:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleContactView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->lock_btn_call_swipe:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
