.class Lcom/sec/sdp/SdpUtil$EngineRemovedEvent;
.super Lcom/sec/sdp/SdpUtil$SdpEvent;
.source "SdpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sdp/SdpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EngineRemovedEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/sdp/SdpUtil;


# direct methods
.method public constructor <init>(Lcom/sec/sdp/SdpUtil;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/sdp/SdpUtil$EngineRemovedEvent;->this$0:Lcom/sec/sdp/SdpUtil;

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/sec/sdp/SdpUtil$SdpEvent;-><init>(Lcom/sec/sdp/SdpUtil;I)V

    return-void
.end method
