.class Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$6;
.super Ljava/lang/Object;
.source "GlobalNetworkSelectAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

.field final synthetic val$telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;Landroid/telephony/TelephonyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$6;->this$0:Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;

    iput-object p2, p0, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$6;->val$telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$6;->val$telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$6;->this$0:Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;

    # getter for: Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;
    invoke-static {v1}, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;->access$100(Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog$6;->this$0:Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;

    invoke-virtual {v0}, Lcom/android/phone/operator/usa/GlobalNetworkSelectAlertDialog;->finish()V

    return-void
.end method
