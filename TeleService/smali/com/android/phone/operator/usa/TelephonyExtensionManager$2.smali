.class Lcom/android/phone/operator/usa/TelephonyExtensionManager$2;
.super Landroid/telephony/PhoneStateListener;
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

    iput-object p1, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$2;->this$0:Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1    # Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$2;->this$0:Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    # invokes: Lcom/android/phone/operator/usa/TelephonyExtensionManager;->setOneTripState(Landroid/telephony/ServiceState;)V
    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->access$1600(Lcom/android/phone/operator/usa/TelephonyExtensionManager;Landroid/telephony/ServiceState;)V

    iget-object v1, p0, Lcom/android/phone/operator/usa/TelephonyExtensionManager$2;->this$0:Lcom/android/phone/operator/usa/TelephonyExtensionManager;

    # invokes: Lcom/android/phone/operator/usa/TelephonyExtensionManager;->cancelAllowDataAccess(Landroid/telephony/ServiceState;)V
    invoke-static {v1, p1}, Lcom/android/phone/operator/usa/TelephonyExtensionManager;->access$1700(Lcom/android/phone/operator/usa/TelephonyExtensionManager;Landroid/telephony/ServiceState;)V

    :cond_0
    return-void
.end method
