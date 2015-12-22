.class Lcom/android/settings/fingerprint/RegisterFingerprint$9;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;->eventProcess(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

.field final synthetic val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iput-object p2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v8, 0x7

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v4, v4, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string v4, "RegisterTouchFingerprint"

    const-string v5, "eventId[EVENT_ENROLL_READY]"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiLevel:I
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$500(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v4

    if-ne v4, v12, :cond_1

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->isError:Z
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$600(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v4, v4, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    invoke-virtual {v4, v9}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setFingerStatus(I)V

    :cond_1
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v4, v4, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$700(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$700(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$800(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v4, v11}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$702(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/os/Handler;)Landroid/os/Handler;

    :cond_2
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftMsgShow:Z
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$900(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v4

    if-ne v4, v10, :cond_3

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v4, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$702(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-instance v5, Lcom/android/settings/fingerprint/RegisterFingerprint$9$1;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$9$1;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint$9;)V

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgRunnable:Ljava/lang/Runnable;
    invoke-static {v4, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$802(Lcom/android/settings/fingerprint/RegisterFingerprint;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$700(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$800(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x14a

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mLiftMsgShow:Z
    invoke-static {v4, v9}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$902(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v4, v4, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    invoke-virtual {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->interrupt()V

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iput-object v11, v4, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->getFingerRegisterText()I
    invoke-static {v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1000(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v5

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->setFingerGuideText(I)V
    invoke-static {v4, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1100(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    goto :goto_1

    :sswitch_1
    const-string v4, "RegisterTouchFingerprint"

    const-string v5, "eventId[EVENT_ENROLL_STARTED]"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->checkEnrollStarted:Z
    invoke-static {v4, v10}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1302(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->isFirstGuideShow:Z
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1400(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiLevel:I
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$500(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v4

    if-ne v4, v12, :cond_7

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const v5, 0x7f1001ca

    invoke-virtual {v4, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v5, 0x9

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V
    invoke-static {v4, v5, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1200(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mFirstGuideScreen:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1500(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/RelativeLayout;

    move-result-object v5

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V
    invoke-static {v4, v10, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1200(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    :goto_2
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterScreen:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1600(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/RelativeLayout;

    move-result-object v5

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V
    invoke-static {v4, v9, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1200(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->isFirstGuideShow:Z
    invoke-static {v4, v9}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1402(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mBackEnabled:Z
    invoke-static {v4, v9}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1702(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;
    invoke-static {v4, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1802(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-instance v5, Lcom/android/settings/fingerprint/RegisterFingerprint$9$2;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$9$2;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint$9;)V

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->pRunnable:Ljava/lang/Runnable;
    invoke-static {v4, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1902(Lcom/android/settings/fingerprint/RegisterFingerprint;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1800(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->pRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1900(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->isError:Z
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$600(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v4, v4, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    if-eqz v4, :cond_5

    const-string v4, "RegisterTouchFingerprint"

    const-string v5, "Remove_Error_Runnable_In_EVENT_ENROLL_STARTED"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v4, v4, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v5, v5, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v6, v6, Lcom/android/settings/fingerprint/RegisterFingerprint;->mErrorMessage:Landroid/widget/RelativeLayout;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V
    invoke-static {v4, v5, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1200(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V
    invoke-static {v4, v8, v11}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1200(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    :cond_6
    :goto_3
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiLevel:I
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$500(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v4

    if-ne v4, v12, :cond_9

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v4, v4, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    invoke-virtual {v4, v10}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setFingerStatus(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mFirstGuideScreen:Landroid/widget/RelativeLayout;
    invoke-static {v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1500(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/RelativeLayout;

    move-result-object v6

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V
    invoke-static {v4, v5, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1200(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    goto/16 :goto_2

    :cond_8
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mMsgHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$700(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/Handler;

    move-result-object v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->getFingerRegisterText()I
    invoke-static {v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1000(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v5

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->setFingerGuideText(I)V
    invoke-static {v4, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1100(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    goto :goto_3

    :cond_9
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2100(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v4, v4, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_View:Lcom/android/settings/fingerprint/FingerprintEffectView;

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2100(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/settings/fingerprint/FingerprintEffectView;->setPercent(I)V

    goto/16 :goto_0

    :sswitch_2
    const-string v4, "RegisterTouchFingerprint"

    const-string v5, "eventId[EVENT_ENROLL_SETTLED]"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v4, v4, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v4, v4, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    invoke-virtual {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->interrupt()V

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iput-object v11, v4, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    :cond_a
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-instance v5, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-direct {v5, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v5, v4, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v4, v4, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    invoke-virtual {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->start()V

    goto/16 :goto_0

    :sswitch_3
    const-string v4, "RegisterTouchFingerprint"

    const-string v5, "eventId[EVENT_FINGER_REMOVED]"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_4
    const-string v4, "RegisterTouchFingerprint"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "eventId[EVENT_ENROLL_STATUS] ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v6}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getProgress()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->checkEnrollStarted:Z
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->checkEnrollStarted:Z
    invoke-static {v4, v9}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1302(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v5}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getTotalSwipes()I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v6}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getBadSwipes()I

    move-result v6

    sub-int/2addr v5, v6

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mCount:I
    invoke-static {v4, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2202(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v4}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQuality()I

    move-result v0

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v4, v4, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    if-ne v4, v8, :cond_b

    const-string v4, "RegisterTouchFingerprint"

    const-string v5, "eventStatus[STATUS_SENSOR_ERROR]  => sensor is removed"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->sensorIsRemoved:Z
    invoke-static {v4, v10}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2302(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->showSensorErrorDialog(I)V
    invoke-static {v4, v9}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2400(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    goto/16 :goto_0

    :cond_b
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v4, v4, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v5, 0x79

    if-ne v4, v5, :cond_c

    const-string v4, "RegisterTouchFingerprint"

    const-string v5, "eventStatus[STATUS_IDENTIFY_FAILURE_SERVICE_FAILURE]"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->showGuidewithTipDialog()V
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2500(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    goto/16 :goto_0

    :cond_c
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v4, v4, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v5, 0x14

    if-ne v4, v5, :cond_d

    const-string v4, "RegisterTouchFingerprint"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "eventId[STATUS_CAPTURE_FAILED]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v6, v6, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v5}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getImageQualityFeedback()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->showErrorMessage(ILjava/lang/String;)V
    invoke-static {v4, v0, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2600(Lcom/android/settings/fingerprint/RegisterFingerprint;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v4}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getProgress()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-virtual {v5}, Lcom/samsung/android/fingerprint/FingerprintEvent;->getProgress()I

    move-result v5

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v4, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2102(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiLevel:I
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$500(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v4

    if-ne v4, v12, :cond_10

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v4, v4, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2100(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setPercent(I)V

    :goto_4
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mTxtVewProgress:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2700(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const v6, 0x7f0a10da

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v8}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2100(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->getFingerRegisterText()I
    invoke-static {v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1000(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v5

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->setFingerGuideText(I)V
    invoke-static {v4, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1100(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->isError:Z
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$600(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v6, v6, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideText:Landroid/widget/RelativeLayout;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->startViewAnimation(ILandroid/view/View;)V
    invoke-static {v4, v5, v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1200(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->isError:Z
    invoke-static {v4, v9}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$602(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    :cond_e
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2800(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/speech/tts/TextToSpeech;

    move-result-object v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2800(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/speech/tts/TextToSpeech;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const v6, 0x7f0a10d9

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v8}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2100(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v9, v11}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_f
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v4, v4, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    if-nez v4, :cond_0

    const-string v4, "RegisterTouchFingerprint"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "eventId[EVENT_ENROLL_STATUS] STATUS_GOOD : mCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mCount:I
    invoke-static {v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2200(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2100(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v4

    const/16 v5, 0x50

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->isLastGuideShow:Z
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2900(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mUiLevel:I
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$500(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v4

    if-eq v4, v12, :cond_0

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;
    invoke-static {v4, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1802(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-instance v5, Lcom/android/settings/fingerprint/RegisterFingerprint$9$3;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$9$3;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint$9;)V

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->pRunnable:Ljava/lang/Runnable;
    invoke-static {v4, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1902(Lcom/android/settings/fingerprint/RegisterFingerprint;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1800(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->pRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$1900(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x15e

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3200(Lcom/android/settings/fingerprint/RegisterFingerprint;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->pauseEnroll()Z

    goto/16 :goto_0

    :cond_10
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v4, v4, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_View:Lcom/android/settings/fingerprint/FingerprintEffectView;

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mEventProgressBarCount:I
    invoke-static {v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2100(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/fingerprint/FingerprintEffectView;->setPercent(I)V

    goto/16 :goto_4

    :sswitch_5
    const-string v4, "RegisterTouchFingerprint"

    const-string v5, "eventId[EVENT_ENROLL_FINISHED]"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v4, v4, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v4, v4, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    invoke-virtual {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->interrupt()V

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iput-object v11, v4, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    :cond_11
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v4, v4, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_19

    const-string v4, "RegisterTouchFingerprint"

    const-string v5, "eventResult[RESULT_FAILED]"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v4, v4, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v5, 0x33

    if-ne v4, v5, :cond_12

    const-string v4, "RegisterTouchFingerprint"

    const-string v5, "eventStatus[STATUS_OPERATION_DENIED]"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->showSensorErrorDialog(I)V
    invoke-static {v4, v9}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2400(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    goto/16 :goto_0

    :cond_12
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v4, v4, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    if-ne v4, v10, :cond_13

    const-string v4, "RegisterTouchFingerprint"

    const-string v5, "eventStatus[STATUS_ALREADY_REGISTERED]"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v5, 0x65

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->showGuideDialog(I)V
    invoke-static {v4, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3300(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    goto/16 :goto_0

    :cond_13
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v4, v4, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v5, 0xc

    if-ne v4, v5, :cond_14

    const-string v4, "RegisterTouchFingerprint"

    const-string v5, "eventStatus[STATUS_QUALITY_FAILED]"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->showSensorErrorDialog(I)V
    invoke-static {v4, v9}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2400(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    goto/16 :goto_0

    :cond_14
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v4, v4, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_15

    const-string v4, "RegisterTouchFingerprint"

    const-string v5, "eventStatus[STATUS_USER_CANCELLED]"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_15
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v4, v4, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v5, 0x6e

    if-ne v4, v5, :cond_16

    const-string v4, "RegisterTouchFingerprint"

    const-string v5, "eventStatus[STATUS_DEVICE_NEED_RECAL]"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v5, 0x6e

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->showSensorErrorDialog(I)V
    invoke-static {v4, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2400(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    goto/16 :goto_0

    :cond_16
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v4, v4, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    if-ne v4, v8, :cond_18

    const-string v4, "RegisterTouchFingerprint"

    const-string v5, "eventStatus[STATUS_SENSOR_ERROR] => sensor is not found"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->sensorIsRemoved:Z
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2300(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v4

    if-nez v4, :cond_17

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->showSensorErrorDialog(I)V
    invoke-static {v4, v9}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2400(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    goto/16 :goto_0

    :cond_17
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->sensorIsRemoved:Z
    invoke-static {v4, v9}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2302(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    goto/16 :goto_0

    :cond_18
    const-string v4, "RegisterTouchFingerprint"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "There is no reason any other reason!!![evt.eventStatus] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v6, v6, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->showGuidewithTipDialog()V
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2500(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    goto/16 :goto_0

    :cond_19
    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->val$evt:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v4, v4, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v4, :cond_0

    const-string v4, "RegisterTouchFingerprint"

    const-string v5, "eventResult[RESULT_SUCCESS]"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mTxtVewProgress:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2700(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const v6, 0x7f0a10da

    new-array v7, v10, [Ljava/lang/Object;

    const/16 v8, 0x64

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->startCompleteEffect()V
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3400(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3200(Lcom/android/settings/fingerprint/RegisterFingerprint;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I
    invoke-static {v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3500(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v6}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a10c1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->selectedFingerIndex:I
    invoke-static {v8}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3500(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/fingerprint/FingerprintManager;->setIndexName(ILjava/lang/String;)Z

    new-instance v3, Lcom/android/settings/fingerprint/RegisterFingerprint$9$4;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$9$4;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint$9;)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :sswitch_6
    const-string v4, "RegisterTouchFingerprint"

    const-string v5, "eventId[EVENT_SERVICE_DIED]"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$9;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterFingerprint;->showSensorErrorDialog(I)V
    invoke-static {v4, v9}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$2400(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_2
        0x3f3 -> :sswitch_3
        0x186a0 -> :sswitch_6
    .end sparse-switch
.end method
