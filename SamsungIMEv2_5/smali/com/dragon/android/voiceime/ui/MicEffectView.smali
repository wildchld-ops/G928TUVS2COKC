.class public Lcom/dragon/android/voiceime/ui/MicEffectView;
.super Landroid/widget/LinearLayout;
.source "MicEffectView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/dragon/android/voiceime/ui/VoiceStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dragon/android/voiceime/ui/MicEffectView$SineEaseOut;
    }
.end annotation


# static fields
.field private static final ANIM_FRAME_RATE:D = 33.333333333333336

.field private static final DEBUG:Z = false

.field private static final SINE_OUT:Landroid/view/animation/Interpolator;

.field private static final TAG:Ljava/lang/String; = "MicEffectView"

.field private static mAnimatorListening01:Landroid/view/ViewPropertyAnimator;

.field private static mAnimatorListening02:Landroid/view/ViewPropertyAnimator;

.field private static mAnimatorListening03:Landroid/view/ViewPropertyAnimator;

.field private static mAnimatorListening04:Landroid/view/ViewPropertyAnimator;

.field private static mAnimatorRecognizing:Landroid/view/ViewPropertyAnimator;


# instance fields
.field private final CRITICAL_AUDIO_VALUE:F

.field private final FULL_SIZE_RATIO:F

.field private final MAX_AUDIO_VALUE:F

.field private final ORIDINAL_SIZE_RATIO:F

.field private animationPreparing:Landroid/graphics/drawable/AnimationDrawable;

.field private mAudioLevelArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field private mButtonViewAnimationRecognizing:Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;

.field mCheck:Z

.field private mImageButtonMicrophoneCircle:Landroid/widget/ImageButton;

.field private mImageViewAnimationListening01:Landroid/widget/ImageView;

.field private mImageViewAnimationListening02:Landroid/widget/ImageView;

.field private mImageViewAnimationListening03:Landroid/widget/ImageView;

.field private mImageViewAnimationListening04:Landroid/widget/ImageView;

.field private mImageViewMicrophone:Landroid/widget/ImageView;

.field private mImageViewQue:Landroid/widget/ImageButton;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

.field private mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;

.field private mSoundCorrect:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mTextViewMessage:Landroid/widget/TextView;

.field private mUIThread:Lcom/dragon/android/voiceime/ui/VoiceUIHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dragon/android/voiceime/ui/MicEffectView$SineEaseOut;

    invoke-direct {v0}, Lcom/dragon/android/voiceime/ui/MicEffectView$SineEaseOut;-><init>()V

    sput-object v0, Lcom/dragon/android/voiceime/ui/MicEffectView;->SINE_OUT:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mInputManager:Lcom/ime/framework/common/InputManager;

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mCheck:Z

    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->MAX_AUDIO_VALUE:F

    const v0, 0x3f0ccccd    # 0.55f

    iput v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->CRITICAL_AUDIO_VALUE:F

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->ORIDINAL_SIZE_RATIO:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->FULL_SIZE_RATIO:F

    return-void
.end method

.method private setListenViewVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening01:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening01:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening02:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening02:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening03:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening03:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening04:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening04:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private startScaleAnimation01(FJLandroid/view/animation/Interpolator;)V
    .locals 2

    const v1, 0x3f19999a    # 0.6f

    sget-object v0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAnimatorListening01:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening01:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening01:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening01:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_0
    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening01:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening01:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sput-object v0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAnimatorListening01:Landroid/view/ViewPropertyAnimator;

    sget-object v0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAnimatorListening01:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    sget-object v0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAnimatorListening01:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method private startScaleAnimation02(FJLandroid/view/animation/Interpolator;)V
    .locals 2

    const v1, 0x3f19999a    # 0.6f

    sget-object v0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAnimatorListening02:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening02:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening02:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening02:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_0
    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening02:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening02:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sput-object v0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAnimatorListening02:Landroid/view/ViewPropertyAnimator;

    sget-object v0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAnimatorListening02:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    sget-object v0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAnimatorListening02:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method private startScaleAnimation03(FJLandroid/view/animation/Interpolator;)V
    .locals 2

    const v1, 0x3f19999a    # 0.6f

    sget-object v0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAnimatorListening03:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening03:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening03:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening03:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_0
    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening03:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening03:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sput-object v0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAnimatorListening03:Landroid/view/ViewPropertyAnimator;

    sget-object v0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAnimatorListening03:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    sget-object v0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAnimatorListening03:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method private startScaleAnimation04(FJLandroid/view/animation/Interpolator;)V
    .locals 2

    const v1, 0x3f19999a    # 0.6f

    sget-object v0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAnimatorListening04:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening04:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening04:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening04:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_0
    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening04:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening04:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sput-object v0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAnimatorListening04:Landroid/view/ViewPropertyAnimator;

    sget-object v0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAnimatorListening04:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    sget-object v0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAnimatorListening04:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mTextViewMessage:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->animationPreparing:Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening01:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening02:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening03:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening04:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mButtonViewAnimationRecognizing:Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewMicrophone:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageButtonMicrophoneCircle:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewQue:Landroid/widget/ImageButton;

    return-void
.end method

.method public finishVoicePanel()V
    .locals 0

    invoke-virtual {p0}, Lcom/dragon/android/voiceime/ui/MicEffectView;->updateToIdle()V

    invoke-virtual {p0}, Lcom/dragon/android/voiceime/ui/MicEffectView;->killSoundPoolPlayer()V

    return-void
.end method

.method public getAudioLevel()V
    .locals 4

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;

    invoke-virtual {v0}, Lcom/dragon/android/voiceime/RecognizerWrapper;->getState()Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    move-result-object v0

    sget-object v1, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;->LISTENING:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;

    invoke-virtual {v0}, Lcom/dragon/android/voiceime/RecognizerWrapper;->getRecognizer()Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAudioLevelArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAudioLevelArray:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAudioLevelArray:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;

    invoke-virtual {v1}, Lcom/dragon/android/voiceime/RecognizerWrapper;->getRecognizer()Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v1

    invoke-interface {v1}, Lcom/nuance/nmdp/speechkit/Recognizer;->getAudioLevel()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mUIThread:Lcom/dragon/android/voiceime/ui/VoiceUIHandler;

    const/4 v1, 0x7

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/dragon/android/voiceime/ui/VoiceUIHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public getUIHandler()Lcom/dragon/android/voiceime/ui/VoiceUIHandler;
    .locals 1

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mUIThread:Lcom/dragon/android/voiceime/ui/VoiceUIHandler;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    const v0, 0x7f10011c

    invoke-virtual {p0, v0}, Lcom/dragon/android/voiceime/ui/MicEffectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mTextViewMessage:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mTextViewMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f10011a

    invoke-virtual {p0, v0}, Lcom/dragon/android/voiceime/ui/MicEffectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewMicrophone:Landroid/widget/ImageView;

    const v0, 0x7f10011b

    invoke-virtual {p0, v0}, Lcom/dragon/android/voiceime/ui/MicEffectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageButtonMicrophoneCircle:Landroid/widget/ImageButton;

    const v0, 0x7f100119

    invoke-virtual {p0, v0}, Lcom/dragon/android/voiceime/ui/MicEffectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewQue:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewQue:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    const v0, 0x7f100114

    invoke-virtual {p0, v0}, Lcom/dragon/android/voiceime/ui/MicEffectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening01:Landroid/widget/ImageView;

    const v0, 0x7f100115

    invoke-virtual {p0, v0}, Lcom/dragon/android/voiceime/ui/MicEffectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening02:Landroid/widget/ImageView;

    const v0, 0x7f100116

    invoke-virtual {p0, v0}, Lcom/dragon/android/voiceime/ui/MicEffectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening03:Landroid/widget/ImageView;

    const v0, 0x7f100117

    invoke-virtual {p0, v0}, Lcom/dragon/android/voiceime/ui/MicEffectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewAnimationListening04:Landroid/widget/ImageView;

    const v0, 0x7f100118

    invoke-virtual {p0, v0}, Lcom/dragon/android/voiceime/ui/MicEffectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mButtonViewAnimationRecognizing:Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/dragon/android/voiceime/ui/MicEffectView;->setListenViewVisibility(I)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageButtonMicrophoneCircle:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mButtonViewAnimationRecognizing:Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;

    invoke-virtual {v0, p0}, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAudioManager:Landroid/media/AudioManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAudioLevelArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/dragon/android/voiceime/ui/MicEffectView;->killSoundPoolPlayer()V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x5

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mSoundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mSoundPool:Landroid/media/SoundPool;

    const v1, 0x7f06000c

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mSoundCorrect:I

    :cond_0
    new-instance v0, Lcom/dragon/android/voiceime/ui/VoiceUIHandler;

    invoke-direct {v0, p0}, Lcom/dragon/android/voiceime/ui/VoiceUIHandler;-><init>(Lcom/dragon/android/voiceime/ui/VoiceStateListener;)V

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mUIThread:Lcom/dragon/android/voiceime/ui/VoiceUIHandler;

    return-void
.end method

.method public killSoundPoolPlayer()V
    .locals 1

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;

    invoke-virtual {v1}, Lcom/dragon/android/voiceime/RecognizerWrapper;->getState()Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sget-object v1, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;->IDLE:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;

    invoke-virtual {v1}, Lcom/dragon/android/voiceime/RecognizerWrapper;->startRecognizer()V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;->LISTENING:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;

    invoke-virtual {v1}, Lcom/dragon/android/voiceime/RecognizerWrapper;->stopRecording()V

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;->RECOGNIZING:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAudioLevelArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mButtonViewAnimationRecognizing:Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mButtonViewAnimationRecognizing:Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;

    invoke-virtual {v1}, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->stop()V

    :cond_2
    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;

    invoke-virtual {v1}, Lcom/dragon/android/voiceime/RecognizerWrapper;->cancelRecognizer()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f100118
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    iget-object v4, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    invoke-virtual {p0}, Lcom/dragon/android/voiceime/ui/MicEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v4, 0x8

    if-ne v0, v4, :cond_0

    const v4, 0x7f090b83

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    iget-object v4, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getKeyboardViewHeight()I

    move-result v1

    :goto_0
    const-string v4, "MicEffectView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "measuredWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    :cond_0
    const v4, 0x7f0907d7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    iget-object v4, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getKeyboardViewHeight()I

    move-result v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setRecognizer(Lcom/dragon/android/voiceime/RecognizerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;

    return-void
.end method

.method public updateRms()V
    .locals 10

    const-wide/16 v8, 0x64

    const/4 v6, 0x6

    const-wide/16 v4, 0xfa

    iget-object v2, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;

    invoke-virtual {v2}, Lcom/dragon/android/voiceime/RecognizerWrapper;->getState()Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    move-result-object v2

    sget-object v3, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;->LISTENING:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;

    invoke-virtual {v2}, Lcom/dragon/android/voiceime/RecognizerWrapper;->getRecognizer()Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;

    invoke-virtual {v2}, Lcom/dragon/android/voiceime/RecognizerWrapper;->getRecognizer()Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v2

    invoke-interface {v2}, Lcom/nuance/nmdp/speechkit/Recognizer;->getAudioLevel()F

    move-result v0

    const/high16 v2, 0x41f00000    # 30.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    const/high16 v0, 0x41f00000    # 30.0f

    :cond_2
    iget-boolean v2, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mCheck:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mCheck:Z

    const/high16 v2, 0x42b40000    # 90.0f

    div-float v1, v0, v2

    const v2, 0x3f0ccccd    # 0.55f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    sget-object v2, Lcom/dragon/android/voiceime/ui/MicEffectView;->SINE_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v5, v2}, Lcom/dragon/android/voiceime/ui/MicEffectView;->startScaleAnimation01(FJLandroid/view/animation/Interpolator;)V

    sget-object v2, Lcom/dragon/android/voiceime/ui/MicEffectView;->SINE_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v5, v2}, Lcom/dragon/android/voiceime/ui/MicEffectView;->startScaleAnimation02(FJLandroid/view/animation/Interpolator;)V

    sget-object v2, Lcom/dragon/android/voiceime/ui/MicEffectView;->SINE_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v5, v2}, Lcom/dragon/android/voiceime/ui/MicEffectView;->startScaleAnimation03(FJLandroid/view/animation/Interpolator;)V

    sget-object v2, Lcom/dragon/android/voiceime/ui/MicEffectView;->SINE_OUT:Landroid/view/animation/Interpolator;

    invoke-direct {p0, v1, v4, v5, v2}, Lcom/dragon/android/voiceime/ui/MicEffectView;->startScaleAnimation04(FJLandroid/view/animation/Interpolator;)V

    iget-object v2, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mUIThread:Lcom/dragon/android/voiceime/ui/VoiceUIHandler;

    invoke-virtual {v2, v6, v8, v9}, Lcom/dragon/android/voiceime/ui/VoiceUIHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    const v1, 0x3f19999a    # 0.6f

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mCheck:Z

    iget-object v2, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mUIThread:Lcom/dragon/android/voiceime/ui/VoiceUIHandler;

    invoke-virtual {v2, v6, v8, v9}, Lcom/dragon/android/voiceime/ui/VoiceUIHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public updateToErrorInfo(Ljava/lang/String;)V
    .locals 6

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAudioLevelArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mButtonViewAnimationRecognizing:Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mButtonViewAnimationRecognizing:Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;

    invoke-virtual {v1}, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->stop()V

    :cond_0
    invoke-virtual {p0}, Lcom/dragon/android/voiceime/ui/MicEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d03a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mTextViewMessage:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mTextViewMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mUIThread:Lcom/dragon/android/voiceime/ui/VoiceUIHandler;

    const/4 v2, 0x3

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v2, v4, v5}, Lcom/dragon/android/voiceime/ui/VoiceUIHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public updateToIdle()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    const-string v0, "MicEffectView"

    const-string v1, "updateToIdle"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3}, Lcom/dragon/android/voiceime/ui/MicEffectView;->setListenViewVisibility(I)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAudioLevelArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mButtonViewAnimationRecognizing:Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mButtonViewAnimationRecognizing:Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;

    invoke-virtual {v0}, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mTextViewMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mTextViewMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dragon/android/voiceime/ui/MicEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d039c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewMicrophone:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewMicrophone:Landroid/widget/ImageView;

    const v1, 0x7f020735

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewMicrophone:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageButtonMicrophoneCircle:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageButtonMicrophoneCircle:Landroid/widget/ImageButton;

    const v1, 0x7f020016

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageButtonMicrophoneCircle:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageButtonMicrophoneCircle:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageButtonMicrophoneCircle:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewQue:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewQue:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mButtonViewAnimationRecognizing:Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mButtonViewAnimationRecognizing:Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;

    invoke-virtual {v0, v3}, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public updateToListening()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->animationPreparing:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->animationPreparing:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mTextViewMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mTextViewMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dragon/android/voiceime/ui/MicEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d039e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewQue:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewQue:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewMicrophone:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewMicrophone:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewMicrophone:Landroid/widget/ImageView;

    const v1, 0x7f020736

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewMicrophone:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    :cond_3
    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageButtonMicrophoneCircle:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageButtonMicrophoneCircle:Landroid/widget/ImageButton;

    const v1, 0x7f020017

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageButtonMicrophoneCircle:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->bringToFront()V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageButtonMicrophoneCircle:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageButtonMicrophoneCircle:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    :cond_4
    invoke-direct {p0, v4}, Lcom/dragon/android/voiceime/ui/MicEffectView;->setListenViewVisibility(I)V

    iput-boolean v5, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mCheck:Z

    sput-object v3, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAnimatorListening01:Landroid/view/ViewPropertyAnimator;

    sput-object v3, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAnimatorListening02:Landroid/view/ViewPropertyAnimator;

    sput-object v3, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAnimatorListening03:Landroid/view/ViewPropertyAnimator;

    sput-object v3, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAnimatorListening04:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Lcom/dragon/android/voiceime/ui/MicEffectView;->updateRms()V

    return-void
.end method

.method public updateToPreparing()V
    .locals 7

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAudioLevelArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mButtonViewAnimationRecognizing:Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mButtonViewAnimationRecognizing:Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;

    invoke-virtual {v0}, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mSoundCorrect:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mTextViewMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mTextViewMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dragon/android/voiceime/ui/MicEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d039f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewQue:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewQue:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewQue:Landroid/widget/ImageButton;

    const v1, 0x7f020734

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_2
    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewMicrophone:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewMicrophone:Landroid/widget/ImageView;

    const v1, 0x7f020737

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewMicrophone:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mButtonViewAnimationRecognizing:Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mButtonViewAnimationRecognizing:Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageButtonMicrophoneCircle:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageButtonMicrophoneCircle:Landroid/widget/ImageButton;

    const v1, 0x7f020018

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageButtonMicrophoneCircle:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageButtonMicrophoneCircle:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewQue:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewQue:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->animationPreparing:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->animationPreparing:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_6
    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void
.end method

.method public updateToProcessing()V
    .locals 1

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mButtonViewAnimationRecognizing:Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mButtonViewAnimationRecognizing:Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;

    invoke-virtual {v0}, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->play()V

    :cond_0
    return-void
.end method

.method public updateToRecognizing()V
    .locals 4

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAudioLevelArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mTextViewMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mTextViewMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dragon/android/voiceime/ui/MicEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d03a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewMicrophone:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageViewMicrophone:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mButtonViewAnimationRecognizing:Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mButtonViewAnimationRecognizing:Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;

    invoke-virtual {v0}, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->bringToFront()V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mButtonViewAnimationRecognizing:Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dragon/android/voiceime/ui/sandglass/ButtonView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageButtonMicrophoneCircle:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageButtonMicrophoneCircle:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mImageButtonMicrophoneCircle:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    :cond_3
    invoke-direct {p0, v3}, Lcom/dragon/android/voiceime/ui/MicEffectView;->setListenViewVisibility(I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/dragon/android/voiceime/ui/MicEffectView;->mAnimatorRecognizing:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Lcom/dragon/android/voiceime/ui/MicEffectView;->updateToProcessing()V

    return-void
.end method
