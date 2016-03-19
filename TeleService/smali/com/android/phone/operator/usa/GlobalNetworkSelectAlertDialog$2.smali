.class Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$2;
.super Ljava/lang/Object;
.source "GlobalNetworkSelectAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$2;->this$0:Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->getInstance()Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->resetSendGlobalNetworkDialogMessageDelayed()V

    iget-object v0, p0, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$2;->this$0:Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;

    invoke-virtual {v0}, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
