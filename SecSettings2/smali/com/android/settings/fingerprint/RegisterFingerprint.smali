.class public Lcom/android/settings/fingerprint/RegisterFingerprint;
.super Landroid/app/Activity;
.source "RegisterFingerprint.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;
    }
.end annotation


# instance fields
.field private DoNotRemoveByForce:Z

.field private animID:Landroid/graphics/drawable/AnimationDrawable;

.field private checkEnrollStarted:Z

.field private conf:Landroid/content/res/Configuration;

.field private errorImg:Landroid/widget/ImageView;

.field private finger:Landroid/widget/ImageView;

.field private first_line_text:Landroid/widget/TextView;

.field private fromSetupWizard:Z

.field private fromShowGuidewithTipDialog:Z

.field private isBackSecond:Z

.field private isEnrolled:Z

.field private isError:Z

.field private isFirstGuideShow:Z

.field private isForODE:Z

.field private isKeyboardMounted:Z

.field private isLastGuideShow:Z

.field private isReturn:Z

.field private isSharedDevice:Z

.field private keyboardDialog:Landroid/app/AlertDialog;

.field private mBackEnabled:Z

.field private mBackHandler:Landroid/os/Handler;

.field private mConfirmedDisclaimer:Z

.field private mCount:I

.field mErrorMessage:Landroid/widget/RelativeLayout;

.field mErrorText:Landroid/widget/TextView;

.field private mEventProgressBarCount:I

.field private mExitToast:Landroid/widget/Toast;

.field mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

.field mFinger_View:Lcom/android/settings/fingerprint/FingerprintEffectView;

.field private mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mFirstGuideScreen:Landroid/widget/RelativeLayout;

.field mGuideText:Landroid/widget/RelativeLayout;

.field private mHandler:Landroid/os/Handler;

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mIsFromKnoxOtherCases:Z

.field private mIsFromKnoxSetupWizard:Z

.field private mLastGuideScreen:Landroid/widget/RelativeLayout;

.field private mLiftMsgShow:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMsgHandler:Landroid/os/Handler;

.field private mMsgRunnable:Ljava/lang/Runnable;

.field private mOwnName:Ljava/lang/String;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mPreviousStage:Ljava/lang/String;

.field mRegisterErrorHandler:Landroid/os/Handler;

.field mRegisterErrorRunnable:Ljava/lang/Runnable;

.field private mRegisterScreen:Landroid/widget/RelativeLayout;

.field private mRequestedQuality:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mTextureView:Landroid/view/TextureView;

.field private mTipDialog:Landroid/app/AlertDialog;

.field private mToken:Landroid/os/IBinder;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mTxtVewProgress:Landroid/widget/TextView;

.field private mUiLevel:I

.field private pRunnable:Ljava/lang/Runnable;

.field private second_line_text:Landroid/widget/TextView;

.field private selectedFingerIndex:I

.field private sensorIsRemoved:Z

.field tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

.field vib:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRequestedQuality:I

    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinLength:I

    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMaxLength:I

    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinLetters:I

    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinUpperCase:I

    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinLowerCase:I

    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinNumeric:I

    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinSymbols:I

    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinNonLetter:I

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTipDialog:Landroid/app/AlertDialog;

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolled:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mConfirmedDisclaimer:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->fromSetupWizard:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isForODE:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->sensorIsRemoved:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->fromShowGuidewithTipDialog:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->DoNotRemoveByForce:Z

    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackEnabled:Z

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_View:Lcom/android/settings/fingerprint/FingerprintEffectView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isError:Z

    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mCount:I

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isFirstGuideShow:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isLastGuideShow:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->checkEnrollStarted:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftMsgShow:Z

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgRunnable:Ljava/lang/Runnable;

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isReturn:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isKeyboardMounted:Z

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->keyboardDialog:Landroid/app/AlertDialog;

    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiLevel:I

    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$1;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$2;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isBackSecond:Z

    new-instance v0, Lcom/android/settings/fingerprint/RegisterFingerprint$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$3;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackHandler:Landroid/os/Handler;

    return-void
.end method

.method private DisableSystemKey()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0xbb

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->requestSystemKeyEvent(IZ)Z

    return-void
.end method

.method private EnableSystemKey()V
    .locals 4

    const/16 v3, 0xbb

    const/4 v2, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->requestSystemKeyEvent(IZ)Z

    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v3, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->requestSystemKeyEvent(IZ)Z

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/RegisterFingerprint;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->eventProcess(Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getFingerRegisterText()I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isBackSecond:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setFingerGuideText(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->checkEnrollStarted:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->checkEnrollStarted:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isFirstGuideShow:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isFirstGuideShow:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterScreen:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackEnabled:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->pRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/settings/fingerprint/RegisterFingerprint;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->pRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/view/ViewGroup;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setViewVisibility(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isKeyboardMounted:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mCount:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mCount:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->sensorIsRemoved:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->sensorIsRemoved:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showSensorErrorDialog(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showGuidewithTipDialog()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/settings/fingerprint/RegisterFingerprint;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showErrorMessage(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTxtVewProgress:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isLastGuideShow:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setGuideVideo(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLastGuideScreen:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/settings/fingerprint/RegisterFingerprint;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showGuideDialog(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startCompleteEffect()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showLDUDialog()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolled:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->DoNotRemoveByForce:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->fromSetupWizard:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isForODE:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->putKnoxPasswordPolicy(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getPreferenceForSetupWizard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setPreferenceForSetupWizard(Z)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->enableFingerprintLock()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->animID:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->initRegisterfingerprint()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/fingerprint/RegisterFingerprint;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiLevel:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->fromShowGuidewithTipDialog:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isError:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isError:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/fingerprint/RegisterFingerprint;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftMsgShow:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftMsgShow:Z

    return p1
.end method

.method private enableFingerprintLock()V
    .locals 12

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x1

    const-string v7, "device_policy"

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    const-string v7, "enterprise_policy"

    invoke-virtual {p0, v7}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceManager;

    const-string v7, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string v8, "isBiometricAuthenticationEnabled"

    new-array v9, v5, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {p0, v7, v8, v9}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {v2, v11}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    :goto_0
    return-void

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, v11}, Landroid/app/admin/DevicePolicyManager;->isSupportFingerprintForODE(Landroid/content/ComponentName;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v2, v11}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v7

    if-lez v7, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2, v11}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "true"

    const-string v8, "isKioskModeEnabled"

    invoke-static {p0, v8}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "isKioskModeEnabled"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v1, v5

    :goto_1
    if-nez v1, :cond_7

    iget-object v7, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v7

    if-nez v7, :cond_7

    iget-boolean v7, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->fromSetupWizard:Z

    if-eqz v7, :cond_5

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showFingerprintLockDialog()V

    goto :goto_0

    :cond_3
    move v1, v6

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto :goto_0

    :cond_5
    iget-boolean v7, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isSharedDevice:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprint()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0a13b9

    invoke-static {v7, v8, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.samsung.settings.SECURITY_WARNING_CLEAR"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->sendBroadcast(Landroid/content/Intent;)V

    iput-boolean v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isSharedDevice:Z

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showFingerprintLockDialog()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto/16 :goto_0
.end method

.method private eventProcess(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 2

    move-object v0, p1

    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$9;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint$9;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getFingerRegisterText()I
    .locals 2

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private getFingerState(I)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v0

    const-string v2, "RegisterTouchFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFingerState [fingerIndex] ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[fingerstatus] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private getPreferenceForSetupWizard()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "fingerprint_register_setupwizard"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    :goto_0
    const-string v1, "RegisterTouchFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreferenceForSetupWizard : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private initRegisterfingerprint()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "RegisterTouchFingerprint"

    const-string v1, "initRegisterfingerprint"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I

    iput v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mCount:I

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isLastGuideShow:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTxtVewProgress:Landroid/widget/TextView;

    const v1, 0x7f0a10da

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiLevel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->reset()V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getFingerRegisterText()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setFingerGuideText(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_View:Lcom/android/settings/fingerprint/FingerprintEffectView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_View:Lcom/android/settings/fingerprint/FingerprintEffectView;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintEffectView;->reset()V

    goto :goto_0
.end method

.method private isSystemKeyEventRequested(I)Z
    .locals 5

    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v2, "RegisterTouchFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSystemKeyEventRequested - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private putKnoxPasswordPolicy(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "isFromKnoxSetupWizard"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "lockscreen.password_min"

    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinLength:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "lockscreen.password_max"

    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMaxLength:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "lockscreen.password_type"

    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRequestedQuality:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRequestedQuality:I

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    const-string v0, "lockscreen.password_min_letters"

    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinLetters:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "lockscreen.password_min_lowercase"

    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinLowerCase:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "lockscreen.password_min_uppercase"

    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinUpperCase:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "lockscreen.password_min_numeric"

    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinNumeric:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "lockscreen.password_min_symbols"

    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinSymbols:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "lockscreen.password_min_nonletter"

    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinNonLetter:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private registerClient()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->setOwnName(Ljava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->build()Landroid/os/Bundle;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    const-string v3, "system"

    invoke-direct {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->build()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 5

    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v2, "RegisterTouchFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestSystemKeyEvent - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setFingerGuideText(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->first_line_text:Landroid/widget/TextView;

    const v1, 0x7f0a13aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->second_line_text:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->first_line_text:Landroid/widget/TextView;

    const v1, 0x7f0a13b2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->second_line_text:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->first_line_text:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->second_line_text:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->first_line_text:Landroid/widget/TextView;

    const v1, 0x7f0a13b3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->second_line_text:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setGuideVideo(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->destroyDrawingCache()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    iput-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setFocusable(Z)V

    :cond_2
    return-void

    :pswitch_0
    iput-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isFirstGuideShow:Z

    const v0, 0x7f1001c7

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFirstGuideScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f1001c9

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    goto :goto_0

    :pswitch_1
    iput-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isLastGuideShow:Z

    const v0, 0x7f1001cc

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLastGuideScreen:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLastGuideScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v0, 0x7f1001cd

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTextureView:Landroid/view/TextureView;

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    const v1, 0x7f0a13b6

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setPolicyFromKnox(Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRequestedQuality:I

    const-string v1, "lockscreen.password_type"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRequestedQuality:I

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinLength:I

    const-string v1, "lockscreen.password_min"

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinLength:I

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMaxLength:I

    const-string v1, "lockscreen.password_max"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMaxLength:I

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRequestedQuality:I

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinLetters:I

    const-string v1, "lockscreen.password_min_letters"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinLetters:I

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinUpperCase:I

    const-string v1, "lockscreen.password_min_uppercase"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinUpperCase:I

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinLowerCase:I

    const-string v1, "lockscreen.password_min_lowercase"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinLowerCase:I

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinNumeric:I

    const-string v1, "lockscreen.password_min_numeric"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinNumeric:I

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinSymbols:I

    const-string v1, "lockscreen.password_min_symbols"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinSymbols:I

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinNonLetter:I

    const-string v1, "lockscreen.password_min_nonletter"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPasswordMinNonLetter:I

    :cond_0
    return-void
.end method

.method private setPreferenceForSetupWizard(Z)V
    .locals 3

    const-string v0, "RegisterTouchFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreferenceForSetupWizard : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fingerprint_register_setupwizard"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setViewVisibility(Landroid/view/ViewGroup;Z)V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private showErrorMessage(ILjava/lang/String;)V
    .locals 6

    invoke-static {p1, p0}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityAnimation(ILandroid/content/Context;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->animID:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->animID:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v2, :cond_1

    const-string v2, "RegisterTouchFingerprint"

    const-string v3, "showErrorMessage : animID == null "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->errorImg:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->animID:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->animID:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :try_start_0
    const-string v2, "RegisterTouchFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imageQuality["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isError:Z

    if-nez v2, :cond_2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideText:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isError:Z

    :cond_2
    const-wide/16 v2, 0x82

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mErrorMessage:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/fingerprint/RegisterFingerprint$13;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$13;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    const-string v2, "RegisterTouchFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Run_Runnable_ErrorMSG : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v3, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :goto_1
    const-string v2, "RegisterTouchFingerprint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "undefined imageQuality: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showGuidewithTipDialog()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private showFingerprintDisclaimerDialog()V
    .locals 3

    const-string v1, "RegisterTouchFingerprint"

    const-string v2, "showFingerprintDisclaimerDialog"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;

    invoke-direct {v0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->setFingerprintDisclaimerDialogListener(Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog$FingerprintDisclaimerDialogListener;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "FingerprintDisclaimerDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintDisclaimerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showFingerprintKeyboardDialog(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a13c4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/fingerprint/RegisterFingerprint$5;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$5;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$4;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->keyboardDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->keyboardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showFingerprintLockDialog()V
    .locals 5

    const v2, 0x7f0a13b8

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a10bd

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a10fa

    new-instance v4, Lcom/android/settings/fingerprint/RegisterFingerprint$8;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$8;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a13cb

    new-instance v4, Lcom/android/settings/fingerprint/RegisterFingerprint$7;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$7;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/fingerprint/RegisterFingerprint$6;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$6;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showGuideDialog(I)V
    .locals 6

    const-string v3, "RegisterTouchFingerprint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showGuideDialog [reason] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a13ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a13af

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/fingerprint/RegisterFingerprint$15;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$15;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/fingerprint/RegisterFingerprint$14;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$14;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showGuidewithTipDialog()V
    .locals 4

    const-string v1, "RegisterTouchFingerprint"

    const-string v2, "showGuidewithTipDialog"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a10a4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a10a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fingerprint/RegisterFingerprint$19;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$19;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/RegisterFingerprint$18;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$18;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showLDUDialog()V
    .locals 5

    const v2, 0x7f0a10bf

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a13af

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/fingerprint/RegisterFingerprint$12;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$12;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/fingerprint/RegisterFingerprint$11;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$11;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showSensorErrorDialog(I)V
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    :cond_0
    packed-switch p1, :pswitch_data_0

    const-string v2, "VZW"

    const-string v3, "TMO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a10a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a10a0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/fingerprint/RegisterFingerprint$17;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$17;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/fingerprint/RegisterFingerprint$16;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$16;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a10a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a10a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_0
    .end packed-switch
.end method

.method private startCompleteEffect()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mErrorMessage:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v2, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setViewVisibility(Landroid/view/ViewGroup;Z)V

    iget v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiLevel:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$20;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$20;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    const v2, 0x7f1001bb

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->finger:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->finger:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$21;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$21;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private startOncreate()V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "RegisterTouchFingerprint"

    const-string v2, "startOncreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->DoNotRemoveByForce:Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fingerIndex"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    const-string v1, "isSharedDevice"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isSharedDevice:Z

    const-string v1, "RegisterTouchFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[selectedFingerIndex] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "previousStage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    const-string v1, "RegisterTouchFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[previousStage] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    :cond_0
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getFingerState(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v1

    if-nez v1, :cond_2

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolled:Z

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->updateRegisterFingerprint()V

    return-void

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolled:Z

    goto :goto_0
.end method

.method private startViewAnimation(ILandroid/view/View;)V
    .locals 20

    if-eqz p2, :cond_0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_2
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v6, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_3
    new-instance v19, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const v10, 0x3cf5c28f    # 0.03f

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v6, 0x104

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v6, 0x104

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v6, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v6}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v6, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v6, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_4
    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    new-instance v18, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const v9, 0x3cf5c28f    # 0.03f

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v6, 0x104

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v6, 0x104

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v6, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v6}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :pswitch_5
    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    new-instance v15, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    invoke-direct {v15, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v6, 0x1

    invoke-virtual {v15, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :pswitch_6
    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const v10, 0x3dcccccd    # 0.1f

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v6, 0x14a

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v6, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v6}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :pswitch_7
    new-instance v17, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v5, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const v13, 0x3dcccccd    # 0.1f

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v6, 0x14a

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v6, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v6}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v6, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v6, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3d4ccccd    # 0.05f

    invoke-direct {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v6, 0x190

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTxtVewProgress:Landroid/widget/TextView;

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiLevel:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    invoke-virtual {v6}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->showErrorEffect()V

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_View:Lcom/android/settings/fingerprint/FingerprintEffectView;

    invoke-virtual {v6}, Lcom/android/settings/fingerprint/FingerprintEffectView;->showErrorEffect()V

    goto/16 :goto_0

    :sswitch_1
    new-instance v14, Landroid/view/animation/AlphaAnimation;

    const v6, 0x3d4ccccd    # 0.05f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v6, 0x190

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTxtVewProgress:Landroid/widget/TextView;

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiLevel:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    invoke-virtual {v6}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->removeFingerMark()V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_View:Lcom/android/settings/fingerprint/FingerprintEffectView;

    invoke-virtual {v6}, Lcom/android/settings/fingerprint/FingerprintEffectView;->removeFingerMark()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method private unregisterClient()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterClient(Landroid/os/IBinder;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    :cond_0
    return-void
.end method

.method private updateRegisterFingerprint()V
    .locals 9

    const v8, 0x7f1001ba

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const-string v3, "fingerprint_setup_wizard"

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iput-boolean v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->fromSetupWizard:Z

    const-string v3, "#00b081"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiLevel:I

    if-ne v3, v5, :cond_4

    const v3, 0x7f0400b6

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setContentView(I)V

    :goto_0
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, -0x80000000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    const v3, 0x7f1001c1

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->errorImg:Landroid/widget/ImageView;

    const v3, 0x7f1001b9

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterScreen:Landroid/widget/RelativeLayout;

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiLevel:I

    if-ne v3, v5, :cond_7

    invoke-virtual {p0, v8}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    :goto_2
    const v3, 0x7f1001bd

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideText:Landroid/widget/RelativeLayout;

    const v3, 0x7f1001be

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->first_line_text:Landroid/widget/TextView;

    const v3, 0x7f1001bf

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->second_line_text:Landroid/widget/TextView;

    const v3, 0x7f1001bc

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTxtVewProgress:Landroid/widget/TextView;

    invoke-direct {p0, v7}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setFingerGuideText(I)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTxtVewProgress:Landroid/widget/TextView;

    const v4, 0x7f0a10da

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f1001c0

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mErrorMessage:Landroid/widget/RelativeLayout;

    const v3, 0x7f1001c2

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mErrorText:Landroid/widget/TextView;

    const-string v3, "VZW"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f1001ca

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0a13c9

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-static {p0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Landroid/speech/tts/TextToSpeech;

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v3, p0, v4}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    :cond_3
    invoke-direct {p0, v7}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setGuideVideo(I)V

    return-void

    :cond_4
    const v3, 0x7f0400b4

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setContentView(I)V

    goto/16 :goto_0

    :cond_5
    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiLevel:I

    if-ne v3, v5, :cond_6

    const v3, 0x7f0400b5

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setContentView(I)V

    :goto_3
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto/16 :goto_1

    :cond_6
    const v3, 0x7f0400b3

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setContentView(I)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v8}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fingerprint/FingerprintEffectView;

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_View:Lcom/android/settings/fingerprint/FingerprintEffectView;

    goto/16 :goto_2
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "RegisterTouchFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    iput-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isReturn:Z

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    :goto_1
    return-void

    :sswitch_0
    if-ne p2, v4, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getPreferenceForSetupWizard()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setPreferenceForSetupWizard(Z)V

    :cond_1
    const-string v0, "ChooseLockGeneric"

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "applicationFingerprint"

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->enableFingerprintLock()V

    goto :goto_1

    :sswitch_1
    if-ne p2, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a13b9

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3ec -> :sswitch_1
    .end sparse-switch
.end method

.method public onCanceDisclaimerDialog()V
    .locals 2

    const-string v0, "RegisterTouchFingerprint"

    const-string v1, "onCanceDisclaimerDialog: "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    return-void
.end method

.method public onClickContinue(Landroid/view/View;)V
    .locals 6

    const v4, 0x7f1001cf

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, v4, :cond_1

    const-string v1, "RegisterTouchFingerprint"

    const-string v2, "continue last guide"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLastGuideScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterScreen:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v3, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->resumeEnroll()Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->pRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$10;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$10;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->pRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->pRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    const v6, 0x7f0a109b

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->conf:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v1, v4, :cond_1

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isKeyboardMounted:Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->pauseEnroll()Z

    const v1, 0x7f0a13c3

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showFingerprintKeyboardDialog(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isKeyboardMounted:Z

    if-eqz v1, :cond_0

    iput-boolean v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isKeyboardMounted:Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->resumeEnroll()Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->keyboardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "RegisterTouchFingerprint"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.fingerprint_ui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiLevel:I

    const-string v1, "RegisterTouchFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate[Level] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setRequestedOrientation(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->requestFeature(I)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->conf:Landroid/content/res/Configuration;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "fingerprint_disclaimer_noti"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mConfirmedDisclaimer:Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fingerIndex"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    const-string v1, "isSharedDevice"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isSharedDevice:Z

    const-string v1, "RegisterTouchFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[selectedFingerIndex] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "previousStage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    const-string v1, "RegisterTouchFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[previousStage] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ownName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;

    const-string v1, "RegisterTouchFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ownName] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "for_ode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isForODE:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;

    const-string v1, "isFromKnoxSetupWizard"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    const-string v1, "is_knox"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    const-string v1, "RegisterTouchFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFromKnoxCases - RegisterFingerprint OnCreate(),"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    if-eqz v1, :cond_0

    const-string v1, "RegisterTouchFingerprint"

    const-string v2, "isFromKnoxSetupWizard - RegisterFingerprint OnCreate()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setPolicyFromKnox(Landroid/content/Intent;)V

    :cond_0
    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    :cond_1
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mOwnName:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getFingerState(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v1

    if-nez v1, :cond_4

    iput-boolean v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolled:Z

    :goto_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->updateRegisterFingerprint()V

    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->vib:Landroid/os/Vibrator;

    const v1, 0x7f0a13b7

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mExitToast:Landroid/widget/Toast;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void

    :cond_3
    iput-boolean v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mConfirmedDisclaimer:Z

    goto/16 :goto_0

    :cond_4
    iput-boolean v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isEnrolled:Z

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 4

    const-string v1, "RegisterTouchFingerprint"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.knox.kss.PASSWORD_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "RegisterTouchFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error shutting down TTS engine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    if-eqz v2, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.knox.kss.PASSWORD_RESET"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->DoNotRemoveByForce:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "enrollResult"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mExitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackEnabled:Z

    if-nez v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isBackSecond:Z

    if-nez v2, :cond_2

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isBackSecond:Z

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mExitToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    iput-boolean v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isBackSecond:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->DoNotRemoveByForce:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "enrollResult"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v6, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mExitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startOncreate()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    :goto_0
    return v1

    :pswitch_0
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->DoNotRemoveByForce:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "enrollResult"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "RegisterTouchFingerprint"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->closeTransaction(Landroid/os/IBinder;)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->unregisterClient()V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->EnableSystemKey()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    const-string v1, "RegisterTouchFingerprint"

    const-string v2, "mMediaPlayer.release()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->DoNotRemoveByForce:Z

    if-nez v1, :cond_3

    const-string v1, "RegisterTouchFingerprint"

    const-string v2, "DoNotRemoveByForce == false"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    if-nez v1, :cond_3

    const-string v1, "RegisterTouchFingerprint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsFromKnoxOtherCases :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "enrollResult"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v4, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "RegisterTouchFingerprint"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mConfirmedDisclaimer:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->showFingerprintDisclaimerDialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isReturn:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->registerClient()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    const-string v2, "com.android.settings.permission.unlock"

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->enroll(Landroid/os/IBinder;Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->openTransaction(Landroid/os/IBinder;)Z

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->DisableSystemKey()V

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 6

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v2, 0x0

    :try_start_0
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isFirstGuideShow:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.resource://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/raw/fingerprint_center"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_1
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v4, 0x9c4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setParameter(II)Z

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v4, Lcom/android/settings/fingerprint/RegisterFingerprint$22;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$22;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-boolean v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->isLastGuideShow:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.resource://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/raw/fingerprint_one_hand"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "RegisterTouchFingerprint"

    const-string v4, "IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v3, "RegisterTouchFingerprint"

    const-string v4, "SecurityException"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v3, "RegisterTouchFingerprint"

    const-string v4, "IllegalStateException"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception v0

    const-string v3, "RegisterTouchFingerprint"

    const-string v4, "IOException"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const-string v0, "RegisterTouchFingerprint"

    const-string v1, "Remove_Error_Runnable"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startDisclaimerFromRegister()V
    .locals 4

    const/4 v2, 0x1

    const-string v0, "RegisterTouchFingerprint"

    const-string v1, "startDisclaimerFromRegister: "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mConfirmedDisclaimer:Z

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->registerClient()Z

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    const-string v2, "com.android.settings.permission.unlock"

    iget v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->enroll(Landroid/os/IBinder;Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->openTransaction(Landroid/os/IBinder;)Z

    invoke-direct {p0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->DisableSystemKey()V

    :cond_0
    return-void
.end method
