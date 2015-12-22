.class Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/samsung/android/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService$PickupPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/NotificationManagerService$PickupPlayer;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService$PickupPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1;->this$1:Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Lcom/samsung/android/motion/MREvent;)V
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/motion/MREvent;->getMotion()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v1, "NotificationService"

    const-string v2, "Pickup - MREvent.REACTIVE_ALERT"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1;->this$1:Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$7300(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1$1;-><init>(Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method
