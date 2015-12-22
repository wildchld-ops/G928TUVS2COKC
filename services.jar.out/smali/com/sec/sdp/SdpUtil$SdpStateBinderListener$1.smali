.class Lcom/sec/sdp/SdpUtil$SdpStateBinderListener$1;
.super Landroid/os/Handler;
.source "SdpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/sdp/SdpUtil$SdpStateBinderListener;-><init>(Lcom/sec/sdp/SdpUtil;Lcom/sec/sdp/SdpStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/sdp/SdpUtil$SdpStateBinderListener;

.field final synthetic val$this$0:Lcom/sec/sdp/SdpUtil;


# direct methods
.method constructor <init>(Lcom/sec/sdp/SdpUtil$SdpStateBinderListener;Lcom/sec/sdp/SdpUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/sdp/SdpUtil$SdpStateBinderListener$1;->this$1:Lcom/sec/sdp/SdpUtil$SdpStateBinderListener;

    iput-object p2, p0, Lcom/sec/sdp/SdpUtil$SdpStateBinderListener$1;->val$this$0:Lcom/sec/sdp/SdpUtil;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/sdp/SdpUtil$SdpEvent;

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/sec/sdp/SdpUtil$StateChangeEvent;

    iget-object v2, p0, Lcom/sec/sdp/SdpUtil$SdpStateBinderListener$1;->this$1:Lcom/sec/sdp/SdpUtil$SdpStateBinderListener;

    iget-object v2, v2, Lcom/sec/sdp/SdpUtil$SdpStateBinderListener;->mListener:Lcom/sec/sdp/SdpStateListener;

    iget v3, v1, Lcom/sec/sdp/SdpUtil$StateChangeEvent;->state:I

    invoke-virtual {v2, v3}, Lcom/sec/sdp/SdpStateListener;->onStateChange(I)V

    :goto_0
    return-void

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/sdp/SdpUtil$SdpStateBinderListener$1;->this$1:Lcom/sec/sdp/SdpUtil$SdpStateBinderListener;

    iget-object v2, v2, Lcom/sec/sdp/SdpUtil$SdpStateBinderListener;->mListener:Lcom/sec/sdp/SdpStateListener;

    invoke-virtual {v2}, Lcom/sec/sdp/SdpStateListener;->onEngineRemoved()V

    goto :goto_0

    :cond_1
    const-string v2, "SdpUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
