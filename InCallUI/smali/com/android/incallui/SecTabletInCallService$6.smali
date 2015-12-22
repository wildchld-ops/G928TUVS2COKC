.class Lcom/android/incallui/SecTabletInCallService$6;
.super Landroid/os/Handler;
.source "SecTabletInCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecTabletInCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletInCallService;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletInCallService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletInCallService$6;->this$0:Lcom/android/incallui/SecTabletInCallService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService$6;->this$0:Lcom/android/incallui/SecTabletInCallService;

    # invokes: Lcom/android/incallui/SecTabletInCallService;->delayedStop()V
    invoke-static {v0}, Lcom/android/incallui/SecTabletInCallService;->access$1200(Lcom/android/incallui/SecTabletInCallService;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
