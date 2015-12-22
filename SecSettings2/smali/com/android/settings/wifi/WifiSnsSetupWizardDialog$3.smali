.class Lcom/android/settings/wifi/WifiSnsSetupWizardDialog$3;
.super Ljava/lang/Object;
.source "WifiSnsSetupWizardDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog$3;->this$0:Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    # getter for: Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->DBG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiSnsSetupWizardDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    sget-object v0, Lcom/android/settings/wifi/WifiSettings;->mShowSnsDialog:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog$3;->this$0:Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;

    # getter for: Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->mWifiSnsSetupWizardDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->access$200(Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    # getter for: Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->DBG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiSnsSetupWizardDialog;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WifiSnsSetupWizardDialog"

    const-string v1, "CANCEL Pressed, SNS Disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v3
.end method
