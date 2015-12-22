.class public Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;
.super Lcom/android/keyguard/sec/SecKeyguardCircleView;
.source "SecKeyguardCircleCameraView.java"

# interfaces
.implements Lcom/android/keyguard/sec/KeyguardUnlockEventHandler$UnlockCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$2;
    }
.end annotation


# static fields
.field private static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final SECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final TAG:Ljava/lang/String; = "SecKeyguardCircleCameraView"


# instance fields
.field private mShortcutSetting:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/sec/SecKeyguardCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mShortcutSetting:I

    sget v0, Lcom/android/keyguard/R$id;->circle_arrow_camera:I

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mArrowResId:I

    sget v0, Lcom/android/keyguard/R$id;->camera_button:I

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mContentResId:I

    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;->CAMERA:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mType:Lcom/android/keyguard/sec/SecKeyguardCircleView$ShortcutType;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getCameraIntent()Landroid/content/Intent;
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    goto :goto_0
.end method

.method private launchActivity(Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "isSecure"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x34011000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawnTarget(Landroid/content/Intent;)V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    const-string v2, "SecKeyguardCircleCameraView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchActivity mShortcutSetting * "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mShortcutSetting:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v2, "CAMERA"

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->insertLog(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "SecKeyguardCircleCameraView"

    const-string v3, "launchActivity in secure "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    new-instance v3, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;Landroid/content/Intent;Z)V

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V

    goto :goto_0
.end method


# virtual methods
.method protected getShortcutReleasedTextResId()I
    .locals 2

    sget v0, Lcom/android/keyguard/R$string;->kg_shortcut_empty:I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDirectCallToEcc()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    sget v0, Lcom/android/keyguard/R$string;->kg_shortcut_camera:I

    :cond_2
    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mContentIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->keyguard_camera_shortcut_tts:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onUnlockExecuted()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onUnlockExecuted()V

    const-string v2, "SecKeyguardCircleCameraView"

    const-string v3, "onUnlockExecuted"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->startPreviewAnimation(Z)V

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    :cond_0
    iget v2, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mShortcutSetting:I

    if-ne v2, v4, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->launchActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onUnlockViewPressed()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/sec/SecKeyguardCircleView;->onUnlockViewPressed()V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviewShortcutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getCircleView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->showSwipeCircleEffect(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getCircleView()Lcom/android/keyguard/sec/effect/KeyguardEffectViewBase;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewNone;->showSwipeCircleEffect(Z)V

    goto :goto_0
.end method

.method public setShortCutImageResource(Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mContentIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mShortcutSetting:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView$2;->$SwitchMap$com$android$keyguard$sec$SecKeyguardCircleView$ContentStates:[I

    invoke-virtual {p1}, Lcom/android/keyguard/sec/SecKeyguardCircleView$ContentStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->camera_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->camera_press:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardCircleCameraView;->mContentIcon:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->camera_swipe:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
