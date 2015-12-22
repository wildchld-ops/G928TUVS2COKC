.class Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$1;
.super Landroid/content/BroadcastReceiver;
.source "VoWiFiStatusController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$1;->this$0:Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oem.smartwifisupport.VOWIFI_STATUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController$1;->this$0:Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;

    # invokes: Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->updateVoWiFi(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v1, p1, p2}, Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;->access$000(Lcom/android/systemui/statusbar/phone/VoWiFiStatusController;Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
