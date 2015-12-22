.class Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcOsaifukeitaiSettingsSBM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$1;->this$0:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const-string v6, "[NfcOsaifukeitaiSettingsSBM]"

    const-string v7, "[S] onReceiveSBM"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$1;->this$0:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;

    # getter for: Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    invoke-static {v6}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->access$000(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getCLFLockStatus()I

    move-result v1

    iget-object v6, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$1;->this$0:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;

    # getter for: Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->mNfcOsaifuSettingsData:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    invoke-static {v6}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->access$000(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getUIMLockStatus()I

    move-result v5

    const-string v6, "[NfcOsaifukeitaiSettingsSBM]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[*] onReceive : [ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ] is received"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "android.intent.action.ACTION_EF_LOCK_UPDATED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "responseType"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "efLockUser"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "efLockRemote"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v6, "[NfcOsaifukeitaiSettingsSBM]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get SIM Lock Status iresponsetype = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "[NfcOsaifukeitaiSettingsSBM]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get SIM Lock Status ilockUser = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "[NfcOsaifukeitaiSettingsSBM]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get SIM Lock Status ilockremote = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_0

    if-nez v3, :cond_1

    xor-int/lit8 v5, v5, 0x2

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$1;->this$0:Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;

    # invokes: Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->list_items_update(II)V
    invoke-static {v6, v1, v5}, Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->access$100(Lcom/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;II)V

    const-string v6, "[NfcOsaifukeitaiSettingsSBM]"

    const-string v7, "[E] onReceiveSBM"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    or-int/lit8 v5, v5, 0x2

    goto :goto_0
.end method
