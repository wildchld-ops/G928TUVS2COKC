.class Lcom/android/incallui/SecTabletBroadcastReceiver$1;
.super Landroid/os/Handler;
.source "SecTabletBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecTabletBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletBroadcastReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletBroadcastReceiver$1;->this$0:Lcom/android/incallui/SecTabletBroadcastReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/SecTabletBroadcastReceiver$1;->this$0:Lcom/android/incallui/SecTabletBroadcastReceiver;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/android/incallui/SecTabletBroadcastReceiver;->sendEvents(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/incallui/SecTabletBroadcastReceiver;->access$000(Lcom/android/incallui/SecTabletBroadcastReceiver;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
