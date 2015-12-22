.class public abstract Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;
.super Lcom/samsung/android/contextaware/dataprovider/DataProvider;
.source "SensorHubProvider.java"

# interfaces
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubCmdProtocol;
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider$1;
    }
.end annotation


# static fields
.field public static final I2C_COMM_ERROR:I = -0x5

.field public static final NOT_RECEIVE_ACK:I = -0xb


# instance fields
.field private mFaultDetectionResult:I

.field private final mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method protected final addRequestParser(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected final checkFaultDetectionResult()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->clear()V

    return-void
.end method

.method public disable()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getDataPacketToUnregisterLib()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstructionForDisable()B

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CMD_PACKET_CREATION_FAULT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstructionForDisable()B

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCmdToSensorHub(BB[B)V

    goto :goto_0
.end method

.method protected final disableForRestore()V
    .locals 0

    return-void
.end method

.method public enable()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getDataPacketToRegisterLib()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v1

    if-ltz v1, :cond_0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CMD_PACKET_CREATION_FAULT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstructionForEnable()B

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCmdToSensorHub(BB[B)V

    goto :goto_0
.end method

.method protected final enableForRestore()V
    .locals 0

    return-void
.end method

.method public getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Action"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getDataPacketToRegisterLib()[B
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    return-object v0
.end method

.method protected getDataPacketToUnregisterLib()[B
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->checkFaultDetectionResult()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract getInstLibType()B
.end method

.method protected abstract getInstructionForDisable()B
.end method

.method protected abstract getInstructionForEnable()B
.end method

.method protected getParseSyntaxTable()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final initializeManager()V
    .locals 0

    return-void
.end method

.method public parse([BI)I
    .locals 32

    move/from16 v23, p2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getParseSyntaxTable()Ljava/util/ArrayList;

    move-result-object v20

    if-eqz v20, :cond_12

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-eqz v26, :cond_12

    const/16 v21, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-result-object v26

    sget-object v27, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->MESSAGE_TYPE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v26, v0

    sub-int v26, v26, v23

    add-int/lit8 v26, v26, -0x1

    if-gez v26, :cond_0

    sget-object v26, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v26, -0x1

    :goto_0
    return v26

    :cond_0
    add-int/lit8 v24, v23, 0x1

    aget-byte v15, p1, v23

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->messageType()B

    move-result v26

    move/from16 v0, v26

    if-ne v0, v15, :cond_1

    move-object/from16 v21, v13

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    :cond_2
    if-nez v21, :cond_3

    sget-object v26, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_EMPTY_REQUEST_LIST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v23, -0x1

    move/from16 v26, v23

    move/from16 v23, v24

    goto :goto_0

    :cond_3
    move/from16 v23, v24

    :goto_1
    const/4 v4, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_15

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v26, v0

    sub-int v26, v26, v23

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->size()B

    move-result v27

    sub-int v26, v26, v27

    if-gez v26, :cond_6

    sget-object v26, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v26, -0x1

    goto/16 :goto_0

    :cond_5
    const/16 v26, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    goto :goto_1

    :cond_6
    sget-object v26, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider$1;->$SwitchMap$com$samsung$android$contextaware$dataprovider$sensorhubprovider$SensorHubSyntax$DATATYPE:[I

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v27

    aget v26, v26, v27

    packed-switch v26, :pswitch_data_0

    :goto_2
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    const-string v27, "DataSize"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_7

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    const-string v27, "DataCount"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    :cond_7
    move/from16 v4, v22

    :cond_8
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->repeatList()Ljava/util/ArrayList;

    move-result-object v19

    if-eqz v19, :cond_4

    const/16 v25, 0x0

    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v26, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider$1;->$SwitchMap$com$samsung$android$contextaware$dataprovider$sensorhubprovider$SensorHubSyntax$DATATYPE:[I

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v27

    aget v26, v26, v27

    packed-switch v26, :pswitch_data_1

    :goto_4
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->size()B

    move-result v26

    add-int v25, v25, v26

    goto :goto_3

    :pswitch_0
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    add-int/lit8 v24, v23, 0x1

    aget-byte v26, p1, v23

    if-nez v26, :cond_9

    const/16 v26, 0x0

    :goto_5
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Z)V

    move/from16 v23, v24

    goto :goto_2

    :cond_9
    const/16 v26, 0x1

    goto :goto_5

    :pswitch_1
    add-int/lit8 v24, v23, 0x1

    aget-byte v22, p1, v23

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v26

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    div-int v28, v22, v28

    invoke-virtual/range {v26 .. v28}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    move/from16 v23, v24

    goto/16 :goto_2

    :pswitch_2
    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput-byte v28, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aput-byte v28, v26, v27

    const/16 v27, 0x2

    add-int/lit8 v24, v23, 0x1

    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x3

    add-int/lit8 v23, v24, 0x1

    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v22

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v26

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    div-int v28, v22, v28

    invoke-virtual/range {v26 .. v28}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    goto/16 :goto_2

    :pswitch_3
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v26

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput-byte v30, v28, v29

    const/16 v29, 0x1

    add-int/lit8 v24, v23, 0x1

    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    const/16 v29, 0x2

    add-int/lit8 v23, v24, 0x1

    aget-byte v30, p1, v24

    aput-byte v30, v28, v29

    const/16 v29, 0x3

    add-int/lit8 v24, v23, 0x1

    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v28

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v29, v0

    div-int v28, v28, v29

    invoke-virtual/range {v26 .. v28}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    move/from16 v23, v24

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    const-string v27, "TimeStamp"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_a

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v26

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v28

    const/16 v29, 0x8

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    aput-byte v31, v29, v30

    const/16 v30, 0x1

    const/16 v31, 0x0

    aput-byte v31, v29, v30

    const/16 v30, 0x2

    const/16 v31, 0x0

    aput-byte v31, v29, v30

    const/16 v30, 0x3

    const/16 v31, 0x0

    aput-byte v31, v29, v30

    const/16 v30, 0x4

    add-int/lit8 v24, v23, 0x1

    aget-byte v31, p1, v23

    aput-byte v31, v29, v30

    const/16 v30, 0x5

    add-int/lit8 v23, v24, 0x1

    aget-byte v31, p1, v24

    aput-byte v31, v29, v30

    const/16 v30, 0x6

    add-int/lit8 v24, v23, 0x1

    aget-byte v31, p1, v23

    aput-byte v31, v29, v30

    const/16 v30, 0x7

    add-int/lit8 v23, v24, 0x1

    aget-byte v31, p1, v24

    aput-byte v31, v29, v30

    invoke-static/range {v29 .. v29}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(J)J

    move-result-wide v28

    invoke-virtual/range {v26 .. v29}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    goto/16 :goto_2

    :cond_a
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v26

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    add-int/lit8 v24, v23, 0x1

    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    const/16 v29, 0x1

    add-int/lit8 v23, v24, 0x1

    aget-byte v30, p1, v24

    aput-byte v30, v28, v29

    const/16 v29, 0x2

    add-int/lit8 v24, v23, 0x1

    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    const/16 v29, 0x3

    add-int/lit8 v23, v24, 0x1

    aget-byte v30, p1, v24

    aput-byte v30, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v28

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v29, v0

    div-int v28, v28, v29

    invoke-virtual/range {v26 .. v28}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    goto/16 :goto_2

    :pswitch_5
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v26

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x8

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    add-int/lit8 v24, v23, 0x1

    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    const/16 v29, 0x1

    add-int/lit8 v23, v24, 0x1

    aget-byte v30, p1, v24

    aput-byte v30, v28, v29

    const/16 v29, 0x2

    add-int/lit8 v24, v23, 0x1

    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    const/16 v29, 0x3

    add-int/lit8 v23, v24, 0x1

    aget-byte v30, p1, v24

    aput-byte v30, v28, v29

    const/16 v29, 0x4

    add-int/lit8 v24, v23, 0x1

    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    const/16 v29, 0x5

    add-int/lit8 v23, v24, 0x1

    aget-byte v30, p1, v24

    aput-byte v30, v28, v29

    const/16 v29, 0x6

    add-int/lit8 v24, v23, 0x1

    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    const/16 v29, 0x7

    add-int/lit8 v23, v24, 0x1

    aget-byte v30, p1, v24

    aput-byte v30, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v28

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    div-long v28, v28, v30

    invoke-virtual/range {v26 .. v29}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    goto/16 :goto_2

    :pswitch_6
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v26

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput-byte v30, v28, v29

    const/16 v29, 0x1

    const/16 v30, 0x0

    aput-byte v30, v28, v29

    const/16 v29, 0x2

    add-int/lit8 v24, v23, 0x1

    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    const/16 v29, 0x3

    add-int/lit8 v23, v24, 0x1

    aget-byte v30, p1, v24

    aput-byte v30, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v29, v0

    div-float v28, v28, v29

    invoke-virtual/range {v26 .. v28}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    goto/16 :goto_2

    :pswitch_7
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v26

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput-byte v30, v28, v29

    const/16 v29, 0x1

    add-int/lit8 v24, v23, 0x1

    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    const/16 v29, 0x2

    add-int/lit8 v23, v24, 0x1

    aget-byte v30, p1, v24

    aput-byte v30, v28, v29

    const/16 v29, 0x3

    add-int/lit8 v24, v23, 0x1

    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v29, v0

    div-float v28, v28, v29

    invoke-virtual/range {v26 .. v28}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    move/from16 v23, v24

    goto/16 :goto_2

    :pswitch_8
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v26

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    add-int/lit8 v24, v23, 0x1

    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    const/16 v29, 0x1

    add-int/lit8 v23, v24, 0x1

    aget-byte v30, p1, v24

    aput-byte v30, v28, v29

    const/16 v29, 0x2

    add-int/lit8 v24, v23, 0x1

    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    const/16 v29, 0x3

    add-int/lit8 v23, v24, 0x1

    aget-byte v30, p1, v24

    aput-byte v30, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v29, v0

    div-float v28, v28, v29

    invoke-virtual/range {v26 .. v28}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    goto/16 :goto_2

    :pswitch_9
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v26

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput-byte v30, v28, v29

    const/16 v29, 0x1

    const/16 v30, 0x0

    aput-byte v30, v28, v29

    const/16 v29, 0x2

    add-int/lit8 v24, v23, 0x1

    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    const/16 v29, 0x3

    add-int/lit8 v23, v24, 0x1

    aget-byte v30, p1, v24

    aput-byte v30, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v28

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    div-double v28, v28, v30

    invoke-virtual/range {v26 .. v29}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    goto/16 :goto_2

    :pswitch_a
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v26

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput-byte v30, v28, v29

    const/16 v29, 0x1

    add-int/lit8 v24, v23, 0x1

    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    const/16 v29, 0x2

    add-int/lit8 v23, v24, 0x1

    aget-byte v30, p1, v24

    aput-byte v30, v28, v29

    const/16 v29, 0x3

    add-int/lit8 v24, v23, 0x1

    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v28

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    div-double v28, v28, v30

    invoke-virtual/range {v26 .. v29}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    move/from16 v23, v24

    goto/16 :goto_2

    :pswitch_b
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v26

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    add-int/lit8 v24, v23, 0x1

    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    const/16 v29, 0x1

    add-int/lit8 v23, v24, 0x1

    aget-byte v30, p1, v24

    aput-byte v30, v28, v29

    const/16 v29, 0x2

    add-int/lit8 v24, v23, 0x1

    aget-byte v30, p1, v23

    aput-byte v30, v28, v29

    const/16 v29, 0x3

    add-int/lit8 v23, v24, 0x1

    aget-byte v30, p1, v24

    aput-byte v30, v28, v29

    invoke-static/range {v28 .. v28}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v28

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v30

    div-double v28, v28, v30

    invoke-virtual/range {v26 .. v29}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    const-string v27, "TimeStampArray"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    new-array v0, v4, [J

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_b
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    new-array v0, v4, [I

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_d
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    new-array v0, v4, [J

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_e
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    new-array v0, v4, [F

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_f
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    new-array v0, v4, [D

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v26, v0

    sub-int v26, v26, v23

    mul-int v27, v25, v4

    sub-int v26, v26, v27

    if-gez v26, :cond_d

    sget-object v26, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v26, -0x1

    goto/16 :goto_0

    :cond_d
    const/4 v12, 0x0

    :goto_6
    if-ge v12, v4, :cond_10

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v26, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider$1;->$SwitchMap$com$samsung$android$contextaware$dataprovider$sensorhubprovider$SensorHubSyntax$DATATYPE:[I

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v27

    aget v26, v26, v27

    packed-switch v26, :pswitch_data_2

    goto :goto_7

    :pswitch_10
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [I

    move-object/from16 v11, v26

    check-cast v11, [I

    add-int/lit8 v24, v23, 0x1

    aget-byte v26, p1, v23

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    div-int v26, v26, v27

    aput v26, v11, v12

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v23, v24

    goto :goto_7

    :pswitch_11
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [I

    move-object/from16 v11, v26

    check-cast v11, [I

    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput-byte v28, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aput-byte v28, v26, v27

    const/16 v27, 0x2

    add-int/lit8 v24, v23, 0x1

    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x3

    add-int/lit8 v23, v24, 0x1

    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v26

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    div-int v26, v26, v27

    aput v26, v11, v12

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :pswitch_12
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [I

    move-object/from16 v11, v26

    check-cast v11, [I

    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput-byte v28, v26, v27

    const/16 v27, 0x1

    add-int/lit8 v24, v23, 0x1

    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x2

    add-int/lit8 v23, v24, 0x1

    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    const/16 v27, 0x3

    add-int/lit8 v24, v23, 0x1

    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v26

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    div-int v26, v26, v27

    aput v26, v11, v12

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v23, v24

    goto/16 :goto_7

    :pswitch_13
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    const-string v27, "TimeStampArray"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [J

    move-object/from16 v14, v26

    check-cast v14, [J

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v26

    const/16 v27, 0x8

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput-byte v29, v27, v28

    const/16 v28, 0x1

    const/16 v29, 0x0

    aput-byte v29, v27, v28

    const/16 v28, 0x2

    const/16 v29, 0x0

    aput-byte v29, v27, v28

    const/16 v28, 0x3

    const/16 v29, 0x0

    aput-byte v29, v27, v28

    const/16 v28, 0x4

    add-int/lit8 v24, v23, 0x1

    aget-byte v29, p1, v23

    aput-byte v29, v27, v28

    const/16 v28, 0x5

    add-int/lit8 v23, v24, 0x1

    aget-byte v29, p1, v24

    aput-byte v29, v27, v28

    const/16 v28, 0x6

    add-int/lit8 v24, v23, 0x1

    aget-byte v29, p1, v23

    aput-byte v29, v27, v28

    const/16 v28, 0x7

    add-int/lit8 v23, v24, 0x1

    aget-byte v29, p1, v24

    aput-byte v29, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(J)J

    move-result-wide v26

    aput-wide v26, v14, v12

    goto/16 :goto_7

    :cond_e
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [I

    move-object/from16 v11, v26

    check-cast v11, [I

    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    add-int/lit8 v24, v23, 0x1

    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x1

    add-int/lit8 v23, v24, 0x1

    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    const/16 v27, 0x2

    add-int/lit8 v24, v23, 0x1

    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x3

    add-int/lit8 v23, v24, 0x1

    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v26

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    div-int v26, v26, v27

    aput v26, v11, v12

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :pswitch_14
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [J

    move-object/from16 v14, v26

    check-cast v14, [J

    const/16 v26, 0x8

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    add-int/lit8 v24, v23, 0x1

    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x1

    add-int/lit8 v23, v24, 0x1

    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    const/16 v27, 0x2

    add-int/lit8 v24, v23, 0x1

    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x3

    add-int/lit8 v23, v24, 0x1

    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    const/16 v27, 0x4

    add-int/lit8 v24, v23, 0x1

    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x5

    add-int/lit8 v23, v24, 0x1

    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    const/16 v27, 0x6

    add-int/lit8 v24, v23, 0x1

    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x7

    add-int/lit8 v23, v24, 0x1

    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v26

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    div-long v26, v26, v28

    aput-wide v26, v14, v12

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :pswitch_15
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [F

    move-object/from16 v7, v26

    check-cast v7, [F

    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput-byte v28, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aput-byte v28, v26, v27

    const/16 v27, 0x2

    add-int/lit8 v24, v23, 0x1

    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x3

    add-int/lit8 v23, v24, 0x1

    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    aput v26, v7, v12

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :pswitch_16
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [F

    move-object/from16 v7, v26

    check-cast v7, [F

    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput-byte v28, v26, v27

    const/16 v27, 0x1

    add-int/lit8 v24, v23, 0x1

    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x2

    add-int/lit8 v23, v24, 0x1

    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    const/16 v27, 0x3

    add-int/lit8 v24, v23, 0x1

    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    aput v26, v7, v12

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v23, v24

    goto/16 :goto_7

    :pswitch_17
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [F

    move-object/from16 v7, v26

    check-cast v7, [F

    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    add-int/lit8 v24, v23, 0x1

    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x1

    add-int/lit8 v23, v24, 0x1

    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    const/16 v27, 0x2

    add-int/lit8 v24, v23, 0x1

    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x3

    add-int/lit8 v23, v24, 0x1

    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    aput v26, v7, v12

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :pswitch_18
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [D

    move-object/from16 v6, v26

    check-cast v6, [D

    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput-byte v28, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aput-byte v28, v26, v27

    const/16 v27, 0x2

    add-int/lit8 v24, v23, 0x1

    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x3

    add-int/lit8 v23, v24, 0x1

    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    div-double v26, v26, v28

    aput-wide v26, v6, v12

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :pswitch_19
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [D

    move-object/from16 v6, v26

    check-cast v6, [D

    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput-byte v28, v26, v27

    const/16 v27, 0x1

    add-int/lit8 v24, v23, 0x1

    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x2

    add-int/lit8 v23, v24, 0x1

    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    const/16 v27, 0x3

    add-int/lit8 v24, v23, 0x1

    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    div-double v26, v26, v28

    aput-wide v26, v6, v12

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v23, v24

    goto/16 :goto_7

    :pswitch_1a
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [D

    move-object/from16 v6, v26

    check-cast v6, [D

    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v26, v0

    const/16 v27, 0x0

    add-int/lit8 v24, v23, 0x1

    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x1

    add-int/lit8 v23, v24, 0x1

    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    const/16 v27, 0x2

    add-int/lit8 v24, v23, 0x1

    aget-byte v28, p1, v23

    aput-byte v28, v26, v27

    const/16 v27, 0x3

    add-int/lit8 v23, v24, 0x1

    aget-byte v28, p1, v24

    aput-byte v28, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->scale()D

    move-result-wide v28

    div-double v26, v26, v28

    aput-wide v26, v6, v12

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_6

    :cond_10
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v26, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider$1;->$SwitchMap$com$samsung$android$contextaware$dataprovider$sensorhubprovider$SensorHubSyntax$DATATYPE:[I

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->dataType()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->ordinal()I

    move-result v27

    aget v26, v26, v27

    packed-switch v26, :pswitch_data_3

    goto :goto_8

    :pswitch_1b
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    const-string v27, "TimeStampArray"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_11

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [J

    check-cast v26, [J

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    goto :goto_8

    :cond_11
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [I

    check-cast v26, [I

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    goto :goto_8

    :pswitch_1c
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [J

    check-cast v26, [J

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    goto/16 :goto_8

    :pswitch_1d
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [F

    check-cast v26, [F

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    goto/16 :goto_8

    :pswitch_1e
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v27

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;->name()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [D

    check-cast v26, [D

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    goto/16 :goto_8

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aget-object v16, v26, v27

    if-eqz v16, :cond_13

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_13

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v26, v0

    sub-int v26, v26, v23

    add-int/lit8 v26, v26, -0x1

    if-gez v26, :cond_14

    :cond_13
    const/16 v26, -0x1

    goto/16 :goto_0

    :cond_14
    add-int/lit8 v24, v23, 0x1

    aget-byte v5, p1, v23

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    move/from16 v23, v24

    :cond_15
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->notifyObserver()V

    move/from16 v26, v23

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method

.method public final parseForRequestType([BI)I
    .locals 7

    const/4 v5, -0x1

    move v3, p2

    array-length v6, p1

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_0

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return v5

    :cond_0
    add-int/lit8 v4, v3, 0x1

    aget-byte v2, p1, v3

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_EMPTY_REQUEST_LIST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v3, v4

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;

    invoke-interface {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;->getRequestType()I

    move-result v5

    if-ne v2, v5, :cond_3

    invoke-interface {v1, p1, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;->parse([BI)I

    move-result v3

    :goto_1
    move v5, v3

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1
.end method

.method public final pause()V
    .locals 0

    return-void
.end method

.method protected final removeRequestParser(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected final reset()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->enable()V

    return-void
.end method

.method public final resume()V
    .locals 0

    return-void
.end method

.method public final sendCmdToSensorHub(BB[B)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    const/4 v2, 0x1

    aput-byte p2, v1, v2

    invoke-virtual {v0, p3, v1}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    return-void
.end method

.method protected final sendCommonValueToSensorHub(B[B)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [B

    const/16 v5, -0x3f

    aput-byte v5, v4, v1

    aput-byte p1, v4, v2

    invoke-virtual {v3, p2, v4}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v3

    if-eq v0, v3, :cond_0

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method protected final sendPropertyValueToSensorHub(BBB[B)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [B

    const/16 v5, -0x3f

    aput-byte v5, v4, v1

    aput-byte p1, v4, v2

    const/4 v5, 0x2

    aput-byte p2, v4, v5

    const/4 v5, 0x3

    aput-byte p3, v4, v5

    invoke-virtual {v3, p4, v4}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v3

    if-eq v0, v3, :cond_0

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method protected final sendPropertyValueToSensorHub(BB[B)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [B

    const/16 v5, -0x3f

    aput-byte v5, v4, v1

    aput-byte p1, v4, v2

    const/4 v5, 0x2

    aput-byte p2, v4, v5

    invoke-virtual {v3, p3, v4}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v3

    if-eq v0, v3, :cond_0

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method protected final terminateManager()V
    .locals 0

    return-void
.end method
