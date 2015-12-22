.class Lcom/android/settings/powersavingmode/PowerSavingModeUltra$2;
.super Landroid/telephony/PhoneStateListener;
.source "PowerSavingModeUltra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/PowerSavingModeUltra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/PowerSavingModeUltra;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/PowerSavingModeUltra;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra$2;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeUltra;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra$2;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeUltra;

    # getter for: Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->access$100(Lcom/android/settings/powersavingmode/PowerSavingModeUltra;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    const-string v3, "video"

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "PowerSavingModeUltra"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreciseCallStateChanged state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isVideo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "PowerSavingModeUltra"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mWasVideo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra$2;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeUltra;

    # getter for: Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mWasVideo:Z
    invoke-static {v4}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->access$200(Lcom/android/settings/powersavingmode/PowerSavingModeUltra;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra$2;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeUltra;

    # getter for: Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mWasVideo:Z
    invoke-static {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->access$200(Lcom/android/settings/powersavingmode/PowerSavingModeUltra;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra$2;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeUltra;

    # getter for: Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->access$000(Lcom/android/settings/powersavingmode/PowerSavingModeUltra;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra$2;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeUltra;

    # getter for: Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->access$000(Lcom/android/settings/powersavingmode/PowerSavingModeUltra;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra$2;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeUltra;

    # getter for: Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->isSharedDevice:Z
    invoke-static {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->access$300(Lcom/android/settings/powersavingmode/PowerSavingModeUltra;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra$2;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeUltra;

    # getter for: Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->access$000(Lcom/android/settings/powersavingmode/PowerSavingModeUltra;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra$2;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeUltra;

    # getter for: Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->access$000(Lcom/android/settings/powersavingmode/PowerSavingModeUltra;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra$2;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeUltra;

    # getter for: Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->access$000(Lcom/android/settings/powersavingmode/PowerSavingModeUltra;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setFocusable(Z)V

    const-string v1, "PowerSavingModeUltra"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SharedDevice: disableButton "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra$2;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeUltra;

    # getter for: Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->isSharedDevice:Z
    invoke-static {v3}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->access$300(Lcom/android/settings/powersavingmode/PowerSavingModeUltra;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/settings/powersavingmode/PowerSavingModeUltra$2;->this$0:Lcom/android/settings/powersavingmode/PowerSavingModeUltra;

    # setter for: Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->mWasVideo:Z
    invoke-static {v1, v0}, Lcom/android/settings/powersavingmode/PowerSavingModeUltra;->access$202(Lcom/android/settings/powersavingmode/PowerSavingModeUltra;Z)Z

    :cond_1
    return-void

    :cond_2
    move v1, v2

    goto :goto_0
.end method
