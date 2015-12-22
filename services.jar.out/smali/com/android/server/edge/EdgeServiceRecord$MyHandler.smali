.class Lcom/android/server/edge/EdgeServiceRecord$MyHandler;
.super Landroid/os/Handler;
.source "EdgeServiceRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/edge/EdgeServiceRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field static final NOTIFY_EDGE_CONFIGURATION_CHANGED:I = 0x2

.field static final NOTIFY_EXTRA:I = 0x1

.field static final NOTIFY_SWIPE_FROM_EDGE:I


# instance fields
.field final synthetic this$0:Lcom/android/server/edge/EdgeServiceRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/edge/EdgeServiceRecord;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/edge/EdgeServiceRecord$MyHandler;->this$0:Lcom/android/server/edge/EdgeServiceRecord;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/edge/EdgeServiceRecord$MyHandler;->this$0:Lcom/android/server/edge/EdgeServiceRecord;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/edge/EdgeServiceRecord;->notifySwipeFromEdge(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/edge/EdgeServiceRecord$MyHandler;->this$0:Lcom/android/server/edge/EdgeServiceRecord;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Lcom/android/server/edge/EdgeServiceRecord;->notifyExtra(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/edge/EdgeServiceRecord$MyHandler;->this$0:Lcom/android/server/edge/EdgeServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/edge/EdgeServiceRecord;->notifyEdgeConfigurationChanged()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
