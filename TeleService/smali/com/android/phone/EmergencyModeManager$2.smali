.class Lcom/android/phone/EmergencyModeManager$2;
.super Ljava/lang/Object;
.source "EmergencyModeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyModeManager;->onChange(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyModeManager;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyModeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyModeManager$2;->this$0:Lcom/android/phone/EmergencyModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/android/phone/EmergencyModeManager$2;->this$0:Lcom/android/phone/EmergencyModeManager;

    # getter for: Lcom/android/phone/EmergencyModeManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/EmergencyModeManager;->access$000(Lcom/android/phone/EmergencyModeManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "backup_network_pref_mode"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/EmergencyModeManager$2;->this$0:Lcom/android/phone/EmergencyModeManager;

    invoke-virtual {v1}, Lcom/android/phone/EmergencyModeManager;->getEmergencyMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    # setter for: Lcom/android/phone/EmergencyModeManager;->mRetry:Z
    invoke-static {v1}, Lcom/android/phone/EmergencyModeManager;->access$202(Z)Z

    iget-object v1, p0, Lcom/android/phone/EmergencyModeManager$2;->this$0:Lcom/android/phone/EmergencyModeManager;

    # invokes: Lcom/android/phone/EmergencyModeManager;->emergencyModeRestoreNetworkMode()V
    invoke-static {v1}, Lcom/android/phone/EmergencyModeManager;->access$300(Lcom/android/phone/EmergencyModeManager;)V

    :cond_0
    return-void
.end method
