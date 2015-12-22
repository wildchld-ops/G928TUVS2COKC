.class Lcom/android/server/telecom/operator/usa/TelecomExtensionManager$1;
.super Landroid/telephony/PhoneStateListener;
.source "TelecomExtensionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager$1;->this$0:Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager$1;->this$0:Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;

    # getter for: Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;->mServiceState:I
    invoke-static {v2}, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;->access$000(Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;)I

    move-result v2

    if-eq v2, v0, :cond_0

    invoke-static {v0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->setServiceState(I)V

    :cond_0
    invoke-static {v1}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->setRoaming(Z)V

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager$1;->this$0:Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;

    # setter for: Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;->mServiceState:I
    invoke-static {v1, v0}, Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;->access$002(Lcom/android/server/telecom/operator/usa/TelecomExtensionManager;I)I

    return-void
.end method
