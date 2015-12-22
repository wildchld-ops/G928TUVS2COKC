.class Lcom/android/keyguard/EmergencyButton$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "EmergencyButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/EmergencyButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/EmergencyButton;


# direct methods
.method constructor <init>(Lcom/android/keyguard/EmergencyButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton$1;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$1;->this$0:Lcom/android/keyguard/EmergencyButton;

    # invokes: Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V
    invoke-static {v0}, Lcom/android/keyguard/EmergencyButton;->access$000(Lcom/android/keyguard/EmergencyButton;)V

    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButton$1;->this$0:Lcom/android/keyguard/EmergencyButton;

    # invokes: Lcom/android/keyguard/EmergencyButton;->updateEmergencyCallButton()V
    invoke-static {v0}, Lcom/android/keyguard/EmergencyButton;->access$000(Lcom/android/keyguard/EmergencyButton;)V

    return-void
.end method
