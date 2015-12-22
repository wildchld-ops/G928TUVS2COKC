.class Lcom/android/systemui/volume/SecVolumePanel$4;
.super Ljava/lang/Object;
.source "SecVolumePanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumePanel$4;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$4;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    invoke-virtual {v0, v2}, Lcom/android/systemui/volume/SecVolumePanel;->setSeekbarSlidingAnimation(Z)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$4;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    const/4 v1, -0x1

    # setter for: Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I
    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumePanel;->access$802(Lcom/android/systemui/volume/SecVolumePanel;I)I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$4;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # setter for: Lcom/android/systemui/volume/SecVolumePanel;->mDemoIcon:I
    invoke-static {v0, v2}, Lcom/android/systemui/volume/SecVolumePanel;->access$902(Lcom/android/systemui/volume/SecVolumePanel;I)I

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$4;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumePanel;->access$700(Lcom/android/systemui/volume/SecVolumePanel;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumePanel$4;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->mActiveStreamType:I
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumePanel;->access$800(Lcom/android/systemui/volume/SecVolumePanel;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$4;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->mMoreButton:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumePanel;->access$1000(Lcom/android/systemui/volume/SecVolumePanel;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z
    invoke-static {}, Lcom/android/systemui/volume/SecVolumePanel;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SecVolumePanel"

    const-string v1, "setOnDismissListener : onDismiss : call insertLog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumePanel$4;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    const-string v1, "com.android.systemui.volume"

    const-string v2, "FWVP"

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumePanel$4;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->mExtraForRingerMode:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumePanel;->access$1100(Lcom/android/systemui/volume/SecVolumePanel;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumePanel$4;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->mValueForHwSwKey:J
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumePanel;->access$1200(Lcom/android/systemui/volume/SecVolumePanel;)J

    move-result-wide v4

    # invokes: Lcom/android/systemui/volume/SecVolumePanel;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/volume/SecVolumePanel;->access$1300(Lcom/android/systemui/volume/SecVolumePanel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
