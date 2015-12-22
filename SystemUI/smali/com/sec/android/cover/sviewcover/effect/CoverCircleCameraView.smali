.class public Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;
.super Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
.source "CoverCircleCameraView.java"

# interfaces
.implements Lcom/sec/android/cover/sviewcover/effect/CoverUnlockEventHandler$UnlockCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView$1;-><init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_swipearrow_camera:I

    iput v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->mArrowResId:I

    sget v0, Lcom/sec/android/sviewcover/R$id;->s_view_cover_shortcut_camera_button:I

    iput v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->mContentResId:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onFinishInflate()V

    return-void
.end method

.method public onUnlockExecuted()V
    .locals 4

    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onUnlockExecuted()V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->mPreviewAnimationController:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->mPreviewAnimationController:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-interface {v1, v2}, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;->startPreviewAnimation(Landroid/animation/AnimatorListenerAdapter;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "CS02"

    invoke-static {v1, v2}, Lcom/sec/android/cover/CoverUtils;->reportContextualSurvey(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    invoke-static {v2}, Lcom/sec/android/cover/CoverUtils;->getCameraIntent(Z)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->TAG:Ljava/lang/String;

    const-string v2, "ActivityNotFoundException !!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onUnlockViewPressed()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onUnlockViewPressed()V

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->mPreviewAnimationController:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->mPreviewAnimationController:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;

    sget-object v1, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;->Camera:Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;

    invoke-interface {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController;->setPreviewView(Lcom/sec/android/cover/sviewcover/effect/PreviewAnimationController$PreviewType;)V

    :cond_0
    return-void
.end method

.method public refreshChildView()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->mContentIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->mContentIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$drawable;->lock_btn_camera_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setShortCutImageResource(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->mContentIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView$2;->$SwitchMap$com$sec$android$cover$sviewcover$effect$CoverCircleView$ContentStates:[I

    invoke-virtual {p1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$ContentStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->lock_btn_camera_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->lock_btn_camera_pressed:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleCameraView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->lock_btn_camera_swipe:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
