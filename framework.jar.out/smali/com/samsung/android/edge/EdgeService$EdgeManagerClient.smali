.class Lcom/samsung/android/edge/EdgeService$EdgeManagerClient;
.super Lcom/samsung/android/edge/IEdgeManagerClient$Stub;
.source "EdgeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edge/EdgeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeManagerClient"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EdgeService.EdgeManagerClient"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edge/EdgeService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/edge/EdgeService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/edge/EdgeService$EdgeManagerClient;->this$0:Lcom/samsung/android/edge/EdgeService;

    invoke-direct {p0}, Lcom/samsung/android/edge/IEdgeManagerClient$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/edge/EdgeService;Lcom/samsung/android/edge/EdgeService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/edge/EdgeService$EdgeManagerClient;-><init>(Lcom/samsung/android/edge/EdgeService;)V

    return-void
.end method


# virtual methods
.method public onDisconnected()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v1, "EdgeService.EdgeManagerClient"

    const-string/jumbo v2, "onDisconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/samsung/android/edge/EdgeService$EdgeManagerClient;->this$0:Lcom/samsung/android/edge/EdgeService;

    # getter for: Lcom/samsung/android/edge/EdgeService;->mHandler:Lcom/samsung/android/edge/EdgeService$EdgeServiceHandler;
    invoke-static {v1}, Lcom/samsung/android/edge/EdgeService;->access$200(Lcom/samsung/android/edge/EdgeService;)Lcom/samsung/android/edge/EdgeService$EdgeServiceHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/edge/EdgeService$EdgeServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEdgeConfigurationChanged(Landroid/os/Bundle;)V
    .locals 4

    const-string v1, "EdgeService.EdgeManagerClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEdgeConfigurationChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/edge/EdgeService$EdgeManagerClient;->this$0:Lcom/samsung/android/edge/EdgeService;

    # getter for: Lcom/samsung/android/edge/EdgeService;->mHandler:Lcom/samsung/android/edge/EdgeService$EdgeServiceHandler;
    invoke-static {v1}, Lcom/samsung/android/edge/EdgeService;->access$200(Lcom/samsung/android/edge/EdgeService;)Lcom/samsung/android/edge/EdgeService$EdgeServiceHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/edge/EdgeService$EdgeServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onExtraChanged(Landroid/os/Bundle;)V
    .locals 4

    const-string v1, "EdgeService.EdgeManagerClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onExtraChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/edge/EdgeService$EdgeManagerClient;->this$0:Lcom/samsung/android/edge/EdgeService;

    # getter for: Lcom/samsung/android/edge/EdgeService;->mHandler:Lcom/samsung/android/edge/EdgeService$EdgeServiceHandler;
    invoke-static {v1}, Lcom/samsung/android/edge/EdgeService;->access$200(Lcom/samsung/android/edge/EdgeService;)Lcom/samsung/android/edge/EdgeService$EdgeServiceHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/edge/EdgeService$EdgeServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSwipeFromEdge(I)V
    .locals 4

    const-string v1, "EdgeService.EdgeManagerClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSwipeFromEdge:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/samsung/android/edge/EdgeService$EdgeManagerClient;->this$0:Lcom/samsung/android/edge/EdgeService;

    # getter for: Lcom/samsung/android/edge/EdgeService;->mHandler:Lcom/samsung/android/edge/EdgeService$EdgeServiceHandler;
    invoke-static {v1}, Lcom/samsung/android/edge/EdgeService;->access$200(Lcom/samsung/android/edge/EdgeService;)Lcom/samsung/android/edge/EdgeService$EdgeServiceHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/edge/EdgeService$EdgeServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
