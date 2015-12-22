.class final Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VolumePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SecondaryIconTransition"
.end annotation


# static fields
.field private static final ANIMATION_TIME:I = 0x190

.field private static final WAIT_FOR_SWITCH_TIME:I = 0x3e8


# instance fields
.field private final mAnimationTime:I

.field private final mDelayTime:I

.field private final mFadeOutTime:I

.field private final mIconInterpolator:Landroid/view/animation/Interpolator;

.field private mTarget:Lcom/android/systemui/volume/VolumePanel$StreamControl;

.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/high16 v0, 0x43c80000    # 400.0f

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mAnimationTime:I

    iget v0, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mAnimationTime:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mFadeOutTime:I

    iget v0, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mAnimationTime:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mDelayTime:I

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->this$0:Lcom/android/systemui/volume/VolumePanel;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mIconInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mTarget:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mTarget:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    iget-object v3, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->secondaryIcon:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mTarget:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    iget-object v3, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mTarget:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    iget-object v3, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mTarget:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    iget-object v3, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->secondaryIcon:Landroid/widget/ImageView;

    if-eq v1, v3, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mTarget:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    iget-object v3, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->secondaryIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mTarget:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    iget-object v3, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->secondaryIcon:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mTarget:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mTarget:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mTarget:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mTarget:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    # getter for: Lcom/android/systemui/volume/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/android/systemui/volume/VolumePanel;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$2200(Lcom/android/systemui/volume/VolumePanel;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Secondary icon animation complete, show notification slider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$800(Lcom/android/systemui/volume/VolumePanel;)Landroid/media/AudioManager;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->NotificationStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    iget v1, v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$800(Lcom/android/systemui/volume/VolumePanel;)Landroid/media/AudioManager;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->NotificationStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    iget v1, v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0
.end method

.method public start(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V
    .locals 6

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_0
    # getter for: Lcom/android/systemui/volume/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/android/systemui/volume/VolumePanel;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/volume/VolumePanel;->access$2200(Lcom/android/systemui/volume/VolumePanel;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Secondary icon animation start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mTarget:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->cancel()V

    :cond_2
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mTarget:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->this$0:Lcom/android/systemui/volume/VolumePanel;

    iget v4, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mAnimationTime:I

    add-int/lit16 v4, v4, 0x3e8

    # setter for: Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I
    invoke-static {v3, v4}, Lcom/android/systemui/volume/VolumePanel;->access$2302(Lcom/android/systemui/volume/VolumePanel;I)I

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # invokes: Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V
    invoke-static {v3}, Lcom/android/systemui/volume/VolumePanel;->access$1200(Lcom/android/systemui/volume/VolumePanel;)V

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mTarget:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    iget-object v3, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->secondaryIcon:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mTarget:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    iget-object v3, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mTarget:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    iget-object v3, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mTarget:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    iget-object v3, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->secondaryIcon:Landroid/widget/ImageView;

    if-eq v1, v3, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mFadeOutTime:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mTarget:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    iget-object v3, v3, Lcom/android/systemui/volume/VolumePanel$StreamControl;->secondaryIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mTarget:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    iget-object v4, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mTarget:Lcom/android/systemui/volume/VolumePanel$StreamControl;

    iget-object v5, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->secondaryIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mIconInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mDelayTime:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mAnimationTime:I

    iget v5, p0, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->mDelayTime:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
