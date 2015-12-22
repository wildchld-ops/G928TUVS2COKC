.class Lcom/android/settings/wifi/SetupWizardWifiScreen$9;
.super Ljava/lang/Object;
.source "SetupWizardWifiScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/SetupWizardWifiScreen;->showAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$9;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const-string v0, "com.samsung.settings.wifi.CAPTIVE_PORTAL_WEBVIEW_ACTIVITY"

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$9;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    # getter for: Lcom/android/settings/wifi/SetupWizardWifiScreen;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->access$1500(Lcom/android/settings/wifi/SetupWizardWifiScreen;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.vzw.huxhtmlviewer"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    const-string v4, "SetupWizard --> SetupWizardWifiScreen"

    const-string v5, "Hux extension installed."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.vzw.action.CAPTIVE_PORTAL_WEBVIEW_ACTIVITY"
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_1
    iget-object v4, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$9;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v3, v5}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string v4, "SetupWizard --> SetupWizardWifiScreen"

    const-string v5, "Hux extension not installed."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v4, "SetupWizard --> SetupWizardWifiScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActivityNotFoundException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
