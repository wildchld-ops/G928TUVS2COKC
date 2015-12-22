.class Lcom/android/systemui/volume/VolumePanel$10;
.super Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$10;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEffectsSupressorChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$10;->this$0:Lcom/android/systemui/volume/VolumePanel;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$10;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$2100(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v1

    # setter for: Lcom/android/systemui/volume/VolumePanel;->mNotificationEffectsSuppressor:Landroid/content/ComponentName;
    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->access$2002(Lcom/android/systemui/volume/VolumePanel;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$10;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onZenAvailableChanged(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$10;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const/16 v3, 0xd

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
