.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "SLocationRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;
    }
.end annotation


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    return-void
.end method

.method public final disable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    return-void
.end method

.method protected display()V
    .locals 0

    return-void
.end method

.method public final enable()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SLOCATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "GeoFenceId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "GeoFenceStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "TotalGpsCount"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "SuccessGpsCount"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Distance"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Accuracy"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "FunctionType"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ErrorCode"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "EventTypeArray"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "EventStatusArray"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "DataArray"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "TimeStampArray"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "DataCount"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    const/16 v0, 0x37

    return v0
.end method

.method public getParseSyntaxTable()Ljava/util/ArrayList;
    .locals 14
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

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->GeoFenceId:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->GeoFenceStatus:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->DOUBLE4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide v12, 0x416312d000000000L    # 1.0E7

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Latitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->DOUBLE4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide v12, 0x416312d000000000L    # 1.0E7

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Longitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Accuracy:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/4 v10, 0x2

    invoke-direct {v9, v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->GeoFenceId:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->TotalGpsCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->SuccessGpsCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/4 v10, 0x3

    invoke-direct {v9, v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/4 v10, 0x4

    invoke-direct {v9, v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->FLOAT4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Distance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->LONG:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Timestamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->DOUBLE4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide v12, 0x416312d000000000L    # 1.0E7

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Latitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->DOUBLE4:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide v12, 0x416312d000000000L    # 1.0E7

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Longitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->Accuracy:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/4 v10, 0x5

    invoke-direct {v9, v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->FunctionType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->ErrorCode:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->GeoFenceId:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    const/4 v10, 0x6

    invoke-direct {v9, v10}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(B)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->SHORT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->EventTypeArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->BYTE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->EventStatusArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->DataArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    sget-object v10, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;->INTEGER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->TimestampArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->val:B
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner$ContextName;)B

    move-result v11

    aget-object v11, v6, v11

    invoke-direct {v9, v10, v12, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax$DATATYPE;DLjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;

    invoke-direct {v9, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubSyntax;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v7
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    return-object p0
.end method

.method protected final getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .locals 0

    return-object p0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    const/4 v10, 0x1

    const/16 v11, 0x44

    move/from16 v0, p1

    if-ne v0, v11, :cond_1

    const-string v11, "Add"

    invoke-static {v11}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    move-object v3, v11

    check-cast v3, [I

    array-length v11, v3

    const/4 v12, 0x6

    if-eq v11, v12, :cond_0

    const-string/jumbo v11, "missing data"

    invoke-static {v11}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_0
    array-length v11, v3

    mul-int/lit8 v11, v11, 0x4

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v11, 0x2

    array-length v12, v1

    invoke-static {v1, v11, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    const/16 v11, 0x17

    const/16 v12, 0x37

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto :goto_0

    :cond_1
    const/16 v11, 0x45

    move/from16 v0, p1

    if-ne v0, v11, :cond_2

    const-string v11, "Remove"

    invoke-static {v11}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v11, 0x17

    const/16 v12, 0x37

    const/4 v13, 0x2

    const/4 v14, 0x2

    invoke-static {v6, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto :goto_0

    :cond_2
    const/16 v11, 0x46

    move/from16 v0, p1

    if-ne v0, v11, :cond_3

    const-string v11, "PauseResume"

    invoke-static {v11}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v11, 0x17

    const/16 v12, 0x37

    const/4 v13, 0x3

    const/4 v14, 0x2

    invoke-static {v9, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto :goto_0

    :cond_3
    const/16 v11, 0x47

    move/from16 v0, p1

    if-ne v0, v11, :cond_5

    const-string v11, "Update"

    invoke-static {v11}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    move-object v3, v11

    check-cast v3, [I

    array-length v11, v3

    const/4 v12, 0x3

    if-eq v11, v12, :cond_4

    const-string/jumbo v11, "missing data"

    invoke-static {v11}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_4
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v11, 0x0

    :try_start_0
    aget v11, v3, v11

    const/4 v12, 0x2

    invoke-static {v11, v12}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v11, 0x1

    aget v11, v3, v11

    const/4 v12, 0x4

    invoke-static {v11, v12}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v11, 0x2

    aget v11, v3, v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/16 v11, 0x17

    const/16 v12, 0x37

    const/4 v13, 0x4

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const-string v11, "error converting"

    invoke-static {v11}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_5
    const/16 v11, 0x48

    move/from16 v0, p1

    if-ne v0, v11, :cond_7

    const-string v11, "Set Loc"

    invoke-static {v11}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    move-object v3, v11

    check-cast v3, [I

    array-length v11, v3

    const/4 v12, 0x5

    if-eq v11, v12, :cond_6

    const-string/jumbo v11, "missing data"

    invoke-static {v11}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_6
    array-length v11, v3

    mul-int/lit8 v11, v11, 0x4

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    const/16 v11, 0x17

    const/16 v12, 0x37

    const/4 v13, 0x5

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    :cond_7
    const/16 v11, 0x49

    move/from16 v0, p1

    if-ne v0, v11, :cond_9

    const-string v11, "Start AR"

    invoke-static {v11}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    move-object v3, v11

    check-cast v3, [I

    array-length v11, v3

    const/4 v12, 0x2

    if-eq v11, v12, :cond_8

    const-string/jumbo v11, "missing data"

    invoke-static {v11}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_8
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v11, 0x0

    :try_start_1
    aget v11, v3, v11

    const/4 v12, 0x4

    invoke-static {v11, v12}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v11, 0x1

    aget v11, v3, v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const/16 v11, 0x17

    const/16 v12, 0x37

    const/4 v13, 0x6

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    :catch_1
    move-exception v4

    const-string v11, "error converting"

    invoke-static {v11}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_9
    const/16 v11, 0x4a

    move/from16 v0, p1

    if-ne v0, v11, :cond_a

    const-string v11, "Stop AR"

    invoke-static {v11}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    const/16 v11, 0x17

    const/16 v12, 0x37

    const/4 v13, 0x7

    const/4 v14, 0x1

    new-array v14, v14, [B

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput-byte v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    :cond_a
    const/16 v11, 0x4b

    move/from16 v0, p1

    if-ne v0, v11, :cond_b

    const-string v11, "CurLoc func"

    invoke-static {v11}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v11, 0x17

    const/16 v12, 0x37

    const/16 v13, 0x8

    const/4 v14, 0x1

    invoke-static {v5, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13, v14}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/rpc/SLocationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_0
.end method
