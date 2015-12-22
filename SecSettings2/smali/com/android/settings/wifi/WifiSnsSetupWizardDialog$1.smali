.class Lcom/android/settings/wifi/WifiSnsSetupWizardDialog$1;
.super Ljava/lang/Object;
.source "WifiSnsSetupWizardDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->makeWifiSnsSetupWizardDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog$1;->this$0:Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog$1;->this$0:Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;

    # getter for: Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->access$000(Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_watchdog_poor_network_test_enabled"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v3, Lcom/android/settings/wifi/WifiSettings;->mShowSnsDialog:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    # getter for: Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->DBG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "WifiSnsSetupWizardDialog"

    const-string v4, "ENABLE Button Pressed, SNS Enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog$1;->this$0:Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;

    # getter for: Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->mWifiSnsSetupWizardDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->access$200(Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x4d

    iput v3, v2, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "feature"

    const-string v4, "SNSU"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "extra"

    const-string v4, "SETUPWIZARD_ON"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog$1;->this$0:Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;

    # getter for: Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->access$000(Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_1
    return-void
.end method
