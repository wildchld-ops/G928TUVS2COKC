.class Lcom/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog$2;
.super Ljava/lang/Object;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog$2;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog$2;->this$0:Lcom/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSecSetupActivity;

    const-string v1, "WifiSecSetupActivity"

    const-string v2, "Skip anyway!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSecSetupActivity;->setResult(I)V

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSecSetupActivity;->finish()V

    return-void
.end method
