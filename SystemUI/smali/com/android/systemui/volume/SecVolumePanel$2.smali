.class Lcom/android/systemui/volume/SecVolumePanel$2;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumePanel$2;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->LOGD:Z
    invoke-static {}, Lcom/android/systemui/volume/SecVolumePanel;->access$400()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SecVolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCoverBroadcastReceiver: onReceive() start : intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "state"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_4

    :goto_0
    const-string v2, "SecVolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCoverBroadcastReceiver: EarJack bPluged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel$2;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->mIsShowingSCoverWarning:Z
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumePanel;->access$600(Lcom/android/systemui/volume/SecVolumePanel;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SecVolumePanel"

    const-string v3, "EarJack plug-out, remove waring popup on the s view cover"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel$2;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    invoke-virtual {v2}, Lcom/android/systemui/volume/SecVolumePanel;->onDismissSafeVolumeWarning()V

    :cond_1
    const-string v2, "android.view.volumepanel.CLICK_BUTTON1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "SecVolumePanel"

    const-string v3, "mCoverBroadcastReceiver : call onDismissSafeVolumeWarning() #2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel$2;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    invoke-virtual {v2}, Lcom/android/systemui/volume/SecVolumePanel;->onDismissSafeVolumeWarning()V

    :cond_2
    const-string v2, "android.view.volumepanel.CLICK_BUTTON2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel$2;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    # getter for: Lcom/android/systemui/volume/SecVolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumePanel;->access$700(Lcom/android/systemui/volume/SecVolumePanel;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->disableSafeMediaVolume()V

    const-string v2, "SecVolumePanel"

    const-string v3, "mCoverBroadcastReceiver : call onDismissSafeVolumeWarning() #3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumePanel$2;->this$0:Lcom/android/systemui/volume/SecVolumePanel;

    invoke-virtual {v2}, Lcom/android/systemui/volume/SecVolumePanel;->onDismissSafeVolumeWarning()V

    :cond_3
    const-string v2, "SecVolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCoverBroadcastReceiver: onReceive() end : intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    move v1, v2

    goto :goto_0
.end method
