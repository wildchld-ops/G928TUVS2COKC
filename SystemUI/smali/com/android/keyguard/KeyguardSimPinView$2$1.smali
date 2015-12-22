.class Lcom/android/keyguard/KeyguardSimPinView$2$1;
.super Ljava/lang/Object;
.source "KeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPinView$2;->onSimCheckResponse(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

.field final synthetic val$attemptsRemaining:I

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPinView$2;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iput p2, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->val$result:I

    iput p3, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->val$attemptsRemaining:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->hide()V

    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v5, v9}, Lcom/android/keyguard/KeyguardSimPinView;->resetPasswordText(Z)V

    iget v5, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->val$result:I

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v6, v6, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # getter for: Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I
    invoke-static {v6}, Lcom/android/keyguard/KeyguardSimPinView;->access$000(Lcom/android/keyguard/KeyguardSimPinView;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v10}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequest(Z)V

    invoke-static {v10}, Lcom/android/keyguard/sec/MultiSimUtils;->setPINPUKRequestMode(I)V

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # getter for: Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardSimPinView;->access$100(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "DSNETWORK"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v5, "KeyguardSimPinView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "verifyPasswordAndUnlock--DSNETWORK VALUE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v7, v7, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # getter for: Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/keyguard/KeyguardSimPinView;->access$200(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "DSNETWORK"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v5, "ACTION_UNLOCK_PIN"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "PINPUKUnlock"

    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v5, v9}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    :cond_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSIMToastEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # getter for: Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardSimPinView;->access$300(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v6, 0x10900fd

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    const v7, 0x1020365

    invoke-virtual {v5, v7}, Lcom/android/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v1, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v5, 0x102000b

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget v5, Lcom/android/keyguard/R$string;->keyguard_pin_accepted:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    new-instance v4, Landroid/widget/Toast;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    # getter for: Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardSimPinView;->access$400(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v9}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {v4, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_5
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iput-boolean v10, v5, Lcom/android/keyguard/KeyguardSimPinView;->mSimCheckInProgress:Z

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    const/4 v6, 0x0

    # setter for: Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;
    invoke-static {v5, v6}, Lcom/android/keyguard/KeyguardSimPinView;->access$602(Lcom/android/keyguard/KeyguardSimPinView;Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;)Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    return-void

    :cond_6
    iget v5, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->val$result:I

    if-ne v5, v9, :cond_9

    iget v5, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->val$attemptsRemaining:I

    # getter for: Lcom/android/keyguard/KeyguardSimPinView;->maxPinRetry:I
    invoke-static {}, Lcom/android/keyguard/KeyguardSimPinView;->access$500()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-gt v5, v6, :cond_8

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget v6, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->val$attemptsRemaining:I

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardSimPinView;->getSimRemainingAttemptsDialog(I)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardSimPinView;->isHintMessageArea()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardSimPinView;->setNullHintMessage()V

    :cond_7
    :goto_1
    const-string v5, "KeyguardSimPinView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "verifyPasswordAndUnlock  CheckSimPin.onSimCheckResponse: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->val$result:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " attemptsRemaining="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->val$attemptsRemaining:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v5, v9}, Lcom/android/keyguard/KeyguardSimPinView;->resetPasswordText(Z)V

    goto :goto_0

    :cond_8
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v6, v6, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget v7, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->val$attemptsRemaining:I

    invoke-virtual {v6, v7}, Lcom/android/keyguard/KeyguardSimPinView;->getPinPasswordErrorMessage(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v7, v7, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardSimPinView;->getSimIconResId()I

    move-result v7

    invoke-interface {v5, v6, v7, v9}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;IZ)V

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v6, v6, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$string;->kg_password_pin_failed:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v7, v7, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardSimPinView;->getSimIconResId()I

    move-result v7

    invoke-interface {v5, v6, v7, v9}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;IZ)V

    goto :goto_1

    :cond_a
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v6, v6, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x10408f7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object v7, v7, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardSimPinView;->getSimIconResId()I

    move-result v7

    invoke-interface {v5, v6, v7, v9}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_1
.end method
