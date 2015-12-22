.class final Lcom/samsung/android/edge/EdgeService$EdgeServiceHandler;
.super Landroid/os/Handler;
.source "EdgeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edge/EdgeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EdgeServiceHandler"
.end annotation


# static fields
.field public static final MSG_CONFIGURATION_CHANGED:I = 0x1

.field public static final MSG_DISCONNECTED:I = 0x4

.field public static final MSG_EXTRA_CHANGED:I = 0x2

.field public static final MSG_SWIPE_FROM_EDGE:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edge/EdgeService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/edge/EdgeService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/edge/EdgeService$EdgeServiceHandler;->this$0:Lcom/samsung/android/edge/EdgeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/edge/EdgeService;Lcom/samsung/android/edge/EdgeService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/edge/EdgeService$EdgeServiceHandler;-><init>(Lcom/samsung/android/edge/EdgeService;)V

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
    iget-object v1, p0, Lcom/samsung/android/edge/EdgeService$EdgeServiceHandler;->this$0:Lcom/samsung/android/edge/EdgeService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Lcom/samsung/android/edge/EdgeService;->onEdgeConfigurationChanged(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/edge/EdgeService$EdgeServiceHandler;->this$0:Lcom/samsung/android/edge/EdgeService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Lcom/samsung/android/edge/EdgeService;->onExtraChanged(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/edge/EdgeService$EdgeServiceHandler;->this$0:Lcom/samsung/android/edge/EdgeService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/edge/EdgeService;->onSwipeFromEdge(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/edge/EdgeService$EdgeServiceHandler;->this$0:Lcom/samsung/android/edge/EdgeService;

    invoke-virtual {v0}, Lcom/samsung/android/edge/EdgeService;->onDisconnected()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
