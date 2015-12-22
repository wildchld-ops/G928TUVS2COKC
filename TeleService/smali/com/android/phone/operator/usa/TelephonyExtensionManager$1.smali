.class Lcom/android/phone/operator/usa/TelephonyExtensionManager$1;
.super Landroid/os/Handler;
.source "TelephonyExtensionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/usa/TelephonyExtensionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/TelephonyExtensionManager;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/TelephonyExtensionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$1;->this$0:Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$1;->this$0:Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    # invokes: Lcom/android/phone/operator/usa/TelephonyExtensionManager;->handleBatteryChanged()V
    invoke-static {v0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->access$000(Lcom/android/phone/operator/usa/TelephonyExtensionManager;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$1;->this$0:Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    # invokes: Lcom/android/phone/operator/usa/TelephonyExtensionManager;->handleLowBatterySound()V
    invoke-static {v0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->access$100(Lcom/android/phone/operator/usa/TelephonyExtensionManager;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$1;->this$0:Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    iget-object v1, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$1;->this$0:Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    # invokes: Lcom/android/phone/operator/usa/TelephonyExtensionManager;->getIntent(Landroid/os/Message;)Landroid/content/Intent;
    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->access$200(Lcom/android/phone/operator/usa/TelephonyExtensionManager;Landroid/os/Message;)Landroid/content/Intent;

    move-result-object v1

    # invokes: Lcom/android/phone/operator/usa/TelephonyExtensionManager;->cscChameleonUpdateCallSettings(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->access$300(Lcom/android/phone/operator/usa/TelephonyExtensionManager;Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$1;->this$0:Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    iget-object v1, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$1;->this$0:Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    # invokes: Lcom/android/phone/operator/usa/TelephonyExtensionManager;->getIntent(Landroid/os/Message;)Landroid/content/Intent;
    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->access$200(Lcom/android/phone/operator/usa/TelephonyExtensionManager;Landroid/os/Message;)Landroid/content/Intent;

    move-result-object v1

    # invokes: Lcom/android/phone/operator/usa/TelephonyExtensionManager;->chameleonPreconfig(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->access$400(Lcom/android/phone/operator/usa/TelephonyExtensionManager;Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$1;->this$0:Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    iget-object v1, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$1;->this$0:Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    # invokes: Lcom/android/phone/operator/usa/TelephonyExtensionManager;->getIntent(Landroid/os/Message;)Landroid/content/Intent;
    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->access$200(Lcom/android/phone/operator/usa/TelephonyExtensionManager;Landroid/os/Message;)Landroid/content/Intent;

    move-result-object v1

    # invokes: Lcom/android/phone/operator/usa/TelephonyExtensionManager;->handleShowDialogDataRoamingGuard(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->access$500(Lcom/android/phone/operator/usa/TelephonyExtensionManager;Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$1;->this$0:Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    # invokes: Lcom/android/phone/operator/usa/TelephonyExtensionManager;->handleCloseDialogDataRoamingGuard()V
    invoke-static {v0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->access$600(Lcom/android/phone/operator/usa/TelephonyExtensionManager;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$1;->this$0:Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    # invokes: Lcom/android/phone/operator/usa/TelephonyExtensionManager;->handleRoamingSettingsDBUpdated()V
    invoke-static {v0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->access$700(Lcom/android/phone/operator/usa/TelephonyExtensionManager;)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$1;->this$0:Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    # invokes: Lcom/android/phone/operator/usa/TelephonyExtensionManager;->handleGlobalNetowrkDialog()V
    invoke-static {v0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->access$800(Lcom/android/phone/operator/usa/TelephonyExtensionManager;)V

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$1;->this$0:Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    # invokes: Lcom/android/phone/operator/usa/TelephonyExtensionManager;->handleToastAllowDataAccess()V
    invoke-static {v0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->access$900(Lcom/android/phone/operator/usa/TelephonyExtensionManager;)V

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$1;->this$0:Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    # invokes: Lcom/android/phone/operator/usa/TelephonyExtensionManager;->handleNofityAllowDataAccess()V
    invoke-static {v0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->access$1000(Lcom/android/phone/operator/usa/TelephonyExtensionManager;)V

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$1;->this$0:Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    # invokes: Lcom/android/phone/operator/usa/TelephonyExtensionManager;->handleSetSecureSettingDataRoaming()V
    invoke-static {v0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->access$1100(Lcom/android/phone/operator/usa/TelephonyExtensionManager;)V

    goto :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$1;->this$0:Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    # invokes: Lcom/android/phone/operator/usa/TelephonyExtensionManager;->handleDataRoamingDisconnected()V
    invoke-static {v0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->access$1200(Lcom/android/phone/operator/usa/TelephonyExtensionManager;)V

    goto :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$1;->this$0:Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    # invokes: Lcom/android/phone/operator/usa/TelephonyExtensionManager;->handleDataRoamingOk()V
    invoke-static {v0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->access$1300(Lcom/android/phone/operator/usa/TelephonyExtensionManager;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x64 -> :sswitch_7
        0x65 -> :sswitch_8
        0x66 -> :sswitch_9
        0x67 -> :sswitch_a
        0x6e -> :sswitch_b
        0x6f -> :sswitch_c
    .end sparse-switch
.end method
