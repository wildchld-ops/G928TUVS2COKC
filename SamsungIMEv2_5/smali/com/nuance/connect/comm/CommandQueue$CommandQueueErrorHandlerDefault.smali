.class public Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorHandlerDefault;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/comm/CommandQueue$CommandQueueErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/comm/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommandQueueErrorHandlerDefault"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceCommand()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceFamily()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionCommand()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionFamily()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAccountInvalidated()V
    .locals 0

    return-void
.end method

.method public onDeviceInvalidated()V
    .locals 0

    return-void
.end method

.method public onDeviceNotAvailable()V
    .locals 0

    return-void
.end method

.method public onQueuePaused(IILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSessionInvalidated()V
    .locals 0

    return-void
.end method

.method public onSessionNotAvailable()V
    .locals 0

    return-void
.end method

.method public onUnlicensed(I)V
    .locals 0

    return-void
.end method

.method public onValidateDeviceProperties()V
    .locals 0

    return-void
.end method
