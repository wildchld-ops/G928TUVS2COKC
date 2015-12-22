.class Lcom/android/settings/wifi/mobileap/WifiApSettings$26;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$26;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const-string v0, "WifiApSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDismiss configuration dialog, user selects open?  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$26;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiApDialog;->getOpenWarningFlag()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VZW"

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$26;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->getOpenWarningFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$26;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$26;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getTempConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$4602(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$26;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    const/4 v1, 0x7

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$4700(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$26;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsFromHelp:Z
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$4200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$26;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "VZW"

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SPRINT"

    const-string v1, "TMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$26;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$700(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$26;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$700(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$26;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep1Dialog()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$300(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$26;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$26;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showHelpDialog(Lcom/android/settings/helpdialog/TwHelpDialog;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$26;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApSettings;->createHelpStep1Dialog()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$300(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$26;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings$26;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSettings;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->access$400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showHelpDialog(Lcom/android/settings/helpdialog/TwHelpDialog;)V

    goto :goto_0
.end method
