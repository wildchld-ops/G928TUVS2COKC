.class Lcom/android/keyguard/KeyguardUniversalLockView$5;
.super Landroid/os/Handler;
.source "KeyguardUniversalLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUniversalLockView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUniversalLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUniversalLockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # invokes: Lcom/android/keyguard/KeyguardUniversalLockView;->clearDots()V
    invoke-static {v5}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$200(Lcom/android/keyguard/KeyguardUniversalLockView;)V

    iget v5, p1, Landroid/os/Message;->what:I

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->WRONG_PASSWORD_DETECTED:I
    invoke-static {}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$500()I

    move-result v6

    if-ne v5, v6, :cond_5

    const-string v5, "KeyguardUniversalLockView"

    const-string v6, "In handleMessage()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # setter for: Lcom/android/keyguard/KeyguardUniversalLockView;->isChecking:Z
    invoke-static {v5, v8}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$402(Lcom/android/keyguard/KeyguardUniversalLockView;Z)Z

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$000(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$000(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # operator++ for: Lcom/android/keyguard/KeyguardUniversalLockView;->mTotalFailedUniversalLockAttempts:I
    invoke-static {v5}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1608(Lcom/android/keyguard/KeyguardUniversalLockView;)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$800(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    invoke-interface {v5, v8}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # invokes: Lcom/android/keyguard/KeyguardUniversalLockView;->isDeviceDisabledForMaxFailedAttempt()Z
    invoke-static {v5}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1700(Lcom/android/keyguard/KeyguardUniversalLockView;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1900(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1800(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v6, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v0

    rsub-int/lit8 v4, v0, 0x5

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # invokes: Lcom/android/keyguard/KeyguardUniversalLockView;->updateErrorText(I)Ljava/lang/String;
    invoke-static {v6, v4}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2100(Lcom/android/keyguard/KeyguardUniversalLockView;I)Ljava/lang/String;

    move-result-object v6

    # setter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mErrorMessage:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2002(Lcom/android/keyguard/KeyguardUniversalLockView;Ljava/lang/String;)Ljava/lang/String;

    sget-boolean v5, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v5, :cond_0

    if-eqz v4, :cond_2

    :cond_0
    rem-int/lit8 v5, v0, 0x5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1800(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v2

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # invokes: Lcom/android/keyguard/KeyguardUniversalLockView;->handleAttemptLockout(J)V
    invoke-static {v5, v2, v3}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2200(Lcom/android/keyguard/KeyguardUniversalLockView;J)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUniversalLockView;->reset()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->playVoice:Z
    invoke-static {v5}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2300(Lcom/android/keyguard/KeyguardUniversalLockView;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2400(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2600(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/speech/tts/TextToSpeech;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mErrorMessage:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2000(Lcom/android/keyguard/KeyguardUniversalLockView;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mHashMap:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2500(Lcom/android/keyguard/KeyguardUniversalLockView;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v5, v6, v8, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_3
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1300(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mErrorTextEnterAnim:Landroid/view/animation/Animation;
    invoke-static {v6}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2700(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mVibraterService:Landroid/os/Vibrator;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2800(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/os/Vibrator;

    move-result-object v5

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # invokes: Lcom/android/keyguard/KeyguardUniversalLockView;->disableDevicePermanently()V
    invoke-static {v5}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$2900(Lcom/android/keyguard/KeyguardUniversalLockView;)V

    goto :goto_0

    :cond_5
    iget v5, p1, Landroid/os/Message;->what:I

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->RIGHT_PASSWORD_DETECTED:I
    invoke-static {}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$600()I

    move-result v6

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$800(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    invoke-interface {v5, v7}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # setter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mTotalFailedUniversalLockAttempts:I
    invoke-static {v5, v8}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1602(Lcom/android/keyguard/KeyguardUniversalLockView;I)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUniversalLockView$5;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$800(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v5

    invoke-interface {v5, v7}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_0
.end method
