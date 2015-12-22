.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;
.super Ljava/lang/Object;
.source "CurrentPositionRequestRunner.java"

# interfaces
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;
.implements Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
    }
.end annotation


# static fields
.field private static final LOCATION_MODE_SLOCATION:I = 0x2


# instance fields
.field private final mCurrentPosition:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

.field private mListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;

.field private final mPosition:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-direct {v0, p1, p2, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/manager/ICurrrentPositionObserver;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mCurrentPosition:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    return-void
.end method


# virtual methods
.method public getPosition()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    return-object v0
.end method

.method public final getRequestType()I
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;->REQUEST_CURRENT_POSITION:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;

    iget-byte v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;->value:B

    return v0
.end method

.method public final notifyObserver(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;

    invoke-interface {v0, p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;->updatePosition(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;)V

    :cond_0
    return-void
.end method

.method public final parse([BI)I
    .locals 5

    move v2, p2

    array-length v4, p1

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_0

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v3, -0x1

    :goto_0
    return v3

    :cond_0
    const/4 v1, 0x2

    add-int/lit8 v3, v2, 0x1

    aget-byte v4, p1, v2

    mul-int/lit8 v0, v4, 0xa

    iget-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mCurrentPosition:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-virtual {v4, v1, v0}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->enable(II)V

    move v2, v3

    goto :goto_0
.end method

.method public final registerObserver(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;

    return-void
.end method

.method public final unregisterObserver()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;

    return-void
.end method

.method public final updateCurrentPosition(I[IDDDDFFI)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    # setter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->type:I
    invoke-static {v0, p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->access$002(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;I)I

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    # setter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->utcTime:[I
    invoke-static {v0, p2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->access$102(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;[I)[I

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    # setter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->latitude:D
    invoke-static {v0, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->access$202(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)D

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    # setter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->longitude:D
    invoke-static {v0, p5, p6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->access$302(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)D

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    # setter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->altitude:D
    invoke-static {v0, p7, p8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->access$402(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)D

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    # setter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->distance:D
    invoke-static {v0, p9, p10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->access$502(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)D

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    # setter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->speed:F
    invoke-static {v0, p11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->access$602(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;F)F

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    # setter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->accuracy:F
    invoke-static {v0, p12}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->access$702(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;F)F

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    # setter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->satelliteCount:I
    invoke-static {v0, p13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->access$802(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;I)I

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->notifyObserver(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;)V

    return-void
.end method
