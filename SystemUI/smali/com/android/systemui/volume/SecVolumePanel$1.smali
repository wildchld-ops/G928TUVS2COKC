.class Lcom/android/systemui/volume/SecVolumePanel$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SecVolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumePanel;
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

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumePanel$1;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff(I)V
    .locals 5

    const/4 v4, 0x5

    const-string v0, "SecVolumePanel"

    const-string v1, "onScreenTurnedOff()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/systemui/volume/SecVolumePanel;->access$000()Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/systemui/volume/SecVolumePanel;->access$000()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SecVolumePanel"

    const-string v1, "mCoverBroadcastReceiver :  call sSafetyWarning.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/systemui/volume/SecVolumePanel;->access$000()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$1;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumePanel;->access$100(Lcom/android/systemui/volume/SecVolumePanel;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$1;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumePanel;->access$100(Lcom/android/systemui/volume/SecVolumePanel;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SecVolumePanel"

    const-string v1, "mCoverBroadcastReceiver :  call mDialog.dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$1;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumePanel;->access$100(Lcom/android/systemui/volume/SecVolumePanel;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    const-string v0, "SecVolumePanel"

    const-string v1, "mCoverBroadcastReceiver : call onDismissSafeVolumeWarning() #1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$1;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumePanel;->onDismissSafeVolumeWarning()V

    const-string v0, "SecVolumePanel"

    const-string v1, "mCoverBroadcastReceiver: Screen OFF end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$1;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    invoke-virtual {v0, v4}, Lcom/android/systemui/volume/SecVolumePanel;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$1;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/systemui/volume/SecVolumePanel;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
