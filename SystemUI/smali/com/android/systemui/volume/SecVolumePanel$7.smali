.class Lcom/android/systemui/volume/SecVolumePanel$7;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "SecVolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumePanel;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumePanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumePanel$7;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    const/4 v0, 0x1

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z
    invoke-static {}, Lcom/android/systemui/volume/SecVolumePanel;->access$400()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SecVolumePanel"

    const-string v2, "onCoverStateChanged : isCoverOpen = true, cover is opened"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel$7;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->mIsShowingSCoverWarning:Z
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumePanel;->access$600(Lcom/android/systemui/volume/SecVolumePanel;)Z

    move-result v1

    if-eqz v1, :cond_2

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z
    invoke-static {}, Lcom/android/systemui/volume/SecVolumePanel;->access$400()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SecVolumePanel"

    const-string v2, "onCoverStateChanged: remove warning popup on the s view cover"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel$7;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    const/4 v2, 0x0

    # invokes: Lcom/android/systemui/volume/SecVolumePanel;->sendCoverWarningMsgIntent(Z)V
    invoke-static {v1, v2}, Lcom/android/systemui/volume/SecVolumePanel;->access$1600(Lcom/android/systemui/volume/SecVolumePanel;Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel$7;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumePanel;->access$100(Lcom/android/systemui/volume/SecVolumePanel;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel$7;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumePanel;->access$100(Lcom/android/systemui/volume/SecVolumePanel;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z
    invoke-static {}, Lcom/android/systemui/volume/SecVolumePanel;->access$400()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "SecVolumePanel"

    const-string v2, "onCoverStateChanged : Call mDialog.dismiss() #1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel$7;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumePanel;->access$100(Lcom/android/systemui/volume/SecVolumePanel;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel$7;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->mUseCocktailFeature:Z
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumePanel;->access$1700(Lcom/android/systemui/volume/SecVolumePanel;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel$7;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # invokes: Lcom/android/systemui/volume/SecVolumePanel;->closeCocktail()V
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumePanel;->access$1800(Lcom/android/systemui/volume/SecVolumePanel;)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    const/4 v0, 0x0

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z
    invoke-static {}, Lcom/android/systemui/volume/SecVolumePanel;->access$400()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "SecVolumePanel"

    const-string v2, "onCoverStateChanged : isCoverOpen = false, cover is closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/systemui/volume/SecVolumePanel;->access$000()Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v1, "SecVolumePanel"

    const-string v2, "onCoverStateChanged :  call sSafetyWarning.dismiss()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/systemui/volume/SecVolumePanel;->access$000()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_8
    const-string v1, "SecVolumePanel"

    const-string v2, "onCoverStateChanged : call onDismissSafeVolumeWarning()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel$7;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    invoke-virtual {v1}, Lcom/android/systemui/volume/SecVolumePanel;->onDismissSafeVolumeWarning()V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel$7;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumePanel;->access$100(Lcom/android/systemui/volume/SecVolumePanel;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel$7;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumePanel;->access$100(Lcom/android/systemui/volume/SecVolumePanel;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z
    invoke-static {}, Lcom/android/systemui/volume/SecVolumePanel;->access$400()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "SecVolumePanel"

    const-string v2, "onCoverStateChanged : Call mDialog.dismiss() #2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel$7;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumePanel;->access$100(Lcom/android/systemui/volume/SecVolumePanel;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
