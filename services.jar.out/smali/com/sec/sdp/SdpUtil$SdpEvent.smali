.class Lcom/sec/sdp/SdpUtil$SdpEvent;
.super Ljava/lang/Object;
.source "SdpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sdp/SdpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpEvent"
.end annotation


# static fields
.field static final ON_ENGINE_REMOVED:I = 0x2

.field static final ON_STATE_CHANGED:I = 0x1


# instance fields
.field private mMessage:Landroid/os/Message;

.field final synthetic this$0:Lcom/sec/sdp/SdpUtil;


# direct methods
.method public constructor <init>(Lcom/sec/sdp/SdpUtil;I)V
    .locals 1

    iput-object p1, p0, Lcom/sec/sdp/SdpUtil$SdpEvent;->this$0:Lcom/sec/sdp/SdpUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/sdp/SdpUtil$SdpEvent;->mMessage:Landroid/os/Message;

    iget-object v0, p0, Lcom/sec/sdp/SdpUtil$SdpEvent;->mMessage:Landroid/os/Message;

    iput p2, v0, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/sec/sdp/SdpUtil$SdpEvent;->mMessage:Landroid/os/Message;

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getMessage()Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/sec/sdp/SdpUtil$SdpEvent;->mMessage:Landroid/os/Message;

    return-object v0
.end method
