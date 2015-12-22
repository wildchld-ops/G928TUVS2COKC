.class Lcom/android/server/usb/UsbHostRestrictor$3;
.super Landroid/os/UEventObserver;
.source "UsbHostRestrictor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbHostRestrictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbHostRestrictor;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 9

    const-string v6, "UsbHostRestrictor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USB HOST UEVENT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "ACTION"

    invoke-virtual {p1, v6}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "DEVPATH"

    invoke-virtual {p1, v6}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "STATE"

    invoke-virtual {p1, v6}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "SWITCH_NAME"

    invoke-virtual {p1, v6}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "SWITCH_STATE"

    invoke-virtual {p1, v6}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->getPowerManager()V
    invoke-static {v6}, Lcom/android/server/usb/UsbHostRestrictor;->access$500(Lcom/android/server/usb/UsbHostRestrictor;)V

    iget-object v6, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->turnOnLcd()V
    invoke-static {v6}, Lcom/android/server/usb/UsbHostRestrictor;->access$600(Lcom/android/server/usb/UsbHostRestrictor;)V

    const-string v6, "change"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    const-string v6, "/devices/virtual/host_notify"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    :try_start_0
    const-string v6, "BLOCK"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "UsbHostRestrictor"

    const-string v7, "USB HOST is BLOCKED, but OTG CABLE is CONNECTED. Show a POPUP!!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/usb/UsbHostRestrictor$3;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    # invokes: Lcom/android/server/usb/UsbHostRestrictor;->showAlertDialog()V
    invoke-static {v6}, Lcom/android/server/usb/UsbHostRestrictor;->access$700(Lcom/android/server/usb/UsbHostRestrictor;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string v6, "UsbHostRestrictor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not parse state or devPath from event "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
