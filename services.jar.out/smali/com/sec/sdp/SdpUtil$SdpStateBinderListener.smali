.class Lcom/sec/sdp/SdpUtil$SdpStateBinderListener;
.super Lcom/sec/sdp/ISdpListener$Stub;
.source "SdpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sdp/SdpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpStateBinderListener"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field mListener:Lcom/sec/sdp/SdpStateListener;

.field final synthetic this$0:Lcom/sec/sdp/SdpUtil;


# direct methods
.method private constructor <init>(Lcom/sec/sdp/SdpUtil;Lcom/sec/sdp/SdpStateListener;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/sdp/SdpUtil$SdpStateBinderListener;->this$0:Lcom/sec/sdp/SdpUtil;

    invoke-direct {p0}, Lcom/sec/sdp/ISdpListener$Stub;-><init>()V

    iput-object p2, p0, Lcom/sec/sdp/SdpUtil$SdpStateBinderListener;->mListener:Lcom/sec/sdp/SdpStateListener;

    new-instance v0, Lcom/sec/sdp/SdpUtil$SdpStateBinderListener$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/sdp/SdpUtil$SdpStateBinderListener$1;-><init>(Lcom/sec/sdp/SdpUtil$SdpStateBinderListener;Lcom/sec/sdp/SdpUtil;)V

    iput-object v0, p0, Lcom/sec/sdp/SdpUtil$SdpStateBinderListener;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/sdp/SdpUtil;Lcom/sec/sdp/SdpStateListener;Lcom/sec/sdp/SdpUtil$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/sdp/SdpUtil$SdpStateBinderListener;-><init>(Lcom/sec/sdp/SdpUtil;Lcom/sec/sdp/SdpStateListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/sdp/SdpUtil$SdpStateBinderListener;)Lcom/sec/sdp/SdpStateListener;
    .locals 1

    invoke-direct {p0}, Lcom/sec/sdp/SdpUtil$SdpStateBinderListener;->getListener()Lcom/sec/sdp/SdpStateListener;

    move-result-object v0

    return-object v0
.end method

.method private getListener()Lcom/sec/sdp/SdpStateListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/sdp/SdpUtil$SdpStateBinderListener;->mListener:Lcom/sec/sdp/SdpStateListener;

    return-object v0
.end method


# virtual methods
.method public onEngineRemoved()V
    .locals 1

    iget-object v0, p0, Lcom/sec/sdp/SdpUtil$SdpStateBinderListener;->mListener:Lcom/sec/sdp/SdpStateListener;

    invoke-virtual {v0}, Lcom/sec/sdp/SdpStateListener;->onEngineRemoved()V

    return-void
.end method

.method public onStateChange(I)V
    .locals 3

    new-instance v0, Lcom/sec/sdp/SdpUtil$StateChangeEvent;

    iget-object v1, p0, Lcom/sec/sdp/SdpUtil$SdpStateBinderListener;->this$0:Lcom/sec/sdp/SdpUtil;

    invoke-direct {v0, v1, p1}, Lcom/sec/sdp/SdpUtil$StateChangeEvent;-><init>(Lcom/sec/sdp/SdpUtil;I)V

    iget-object v1, p0, Lcom/sec/sdp/SdpUtil$SdpStateBinderListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/sec/sdp/SdpUtil$StateChangeEvent;->getMessage()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/sec/sdp/SdpUtil$SdpStateBinderListener;->mListener:Lcom/sec/sdp/SdpStateListener;

    invoke-virtual {v1, p1}, Lcom/sec/sdp/SdpStateListener;->onStateChange(I)V

    return-void
.end method
