.class Lcom/android/server/telecom/secutils/TeleBroadcastReceiver$2;
.super Lcom/android/server/telecom/Call$ListenerBase;
.source "TeleBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->handleNotifyMissedCall(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver$2;->this$0:Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;

    invoke-direct {p0}, Lcom/android/server/telecom/Call$ListenerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallerInfoChanged(Lcom/android/server/telecom/Call;)V
    .locals 1

    invoke-virtual {p1, p0}, Lcom/android/server/telecom/Call;->removeListener(Lcom/android/server/telecom/Call$Listener;)V

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getMissedCallNotifier()Lcom/android/server/telecom/MissedCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotification(Lcom/android/server/telecom/Call;)V

    return-void
.end method
