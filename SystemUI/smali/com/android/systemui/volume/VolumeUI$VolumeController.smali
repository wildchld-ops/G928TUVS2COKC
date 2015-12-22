.class final Lcom/android/systemui/volume/VolumeUI$VolumeController;
.super Landroid/media/IVolumeController$Stub;
.source "VolumeUI.java"

# interfaces
.implements Lcom/android/systemui/volume/VolumeComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-direct {p0}, Landroid/media/IVolumeController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeUI;Lcom/android/systemui/volume/VolumeUI$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeUI$VolumeController;-><init>(Lcom/android/systemui/volume/VolumeUI;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeUI$VolumeController;->dismissNow()V

    return-void
.end method

.method public dismissNow()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/SecVolumePanel;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$700(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/SecVolumePanel;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/volume/SecVolumePanel;->postDismiss(J)V

    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/SecVolumePanel;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$700(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/SecVolumePanel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/volume/SecVolumePanel;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public displaySafeVolumeWarning(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/SecVolumePanel;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$700(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/SecVolumePanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->postDisplaySafeVolumeWarning(I)V

    return-void
.end method

.method public getZenController()Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/SecVolumePanel;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$700(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/SecVolumePanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumePanel;->getZenController()Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v0

    return-object v0
.end method

.method public isSafeVolumeDialogShowing()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/SecVolumePanel;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$700(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/SecVolumePanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumePanel;->isSafeVolumeDialogShowing()Z

    move-result v0

    return v0
.end method

.method public masterMuteChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/SecVolumePanel;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$700(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/SecVolumePanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->postMasterMuteChanged(I)V

    return-void
.end method

.method public masterVolumeChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/SecVolumePanel;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$700(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/SecVolumePanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->postMasterVolumeChanged(I)V

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/SecVolumePanel;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$700(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/SecVolumePanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/SecVolumePanel;->postLayoutDirection(I)V

    return-void
.end method

.method public volumeChanged(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$VolumeController;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/SecVolumePanel;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$700(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/SecVolumePanel;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/volume/SecVolumePanel;->postVolumeChanged(II)V

    return-void
.end method
