.class Lcom/android/services/telephony/TelephonyConferenceController$1;
.super Landroid/telecom/Connection$Listener;
.source "TelephonyConferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/TelephonyConferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/TelephonyConferenceController;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/TelephonyConferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/TelephonyConferenceController$1;->this$0:Lcom/android/services/telephony/TelephonyConferenceController;

    invoke-direct {p0}, Landroid/telecom/Connection$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyed(Landroid/telecom/Connection;)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConferenceController$1;->this$0:Lcom/android/services/telephony/TelephonyConferenceController;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/TelephonyConferenceController;->remove(Landroid/telecom/Connection;)V

    return-void
.end method

.method public onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConferenceController$1;->this$0:Lcom/android/services/telephony/TelephonyConferenceController;

    # invokes: Lcom/android/services/telephony/TelephonyConferenceController;->recalculate()V
    invoke-static {v0}, Lcom/android/services/telephony/TelephonyConferenceController;->access$000(Lcom/android/services/telephony/TelephonyConferenceController;)V

    return-void
.end method

.method public onStateChanged(Landroid/telecom/Connection;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConferenceController$1;->this$0:Lcom/android/services/telephony/TelephonyConferenceController;

    # invokes: Lcom/android/services/telephony/TelephonyConferenceController;->recalculate()V
    invoke-static {v0}, Lcom/android/services/telephony/TelephonyConferenceController;->access$000(Lcom/android/services/telephony/TelephonyConferenceController;)V

    return-void
.end method
