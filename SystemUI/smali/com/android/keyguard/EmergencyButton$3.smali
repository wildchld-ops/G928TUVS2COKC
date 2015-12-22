.class Lcom/android/keyguard/EmergencyButton$3;
.super Landroid/telephony/PhoneStateListener;
.source "EmergencyButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/EmergencyButton;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/EmergencyButton;


# direct methods
.method constructor <init>(Lcom/android/keyguard/EmergencyButton;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    const-string v0, "EmergencyButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceStateChanged(SLOT1) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    # setter for: Lcom/android/keyguard/EmergencyButton;->mServiceState:I
    invoke-static {v0, v1}, Lcom/android/keyguard/EmergencyButton;->access$102(Lcom/android/keyguard/EmergencyButton;I)I

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    # invokes: Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V
    invoke-static {v0}, Lcom/android/keyguard/EmergencyButton;->access$000(Lcom/android/keyguard/EmergencyButton;)V

    return-void
.end method
