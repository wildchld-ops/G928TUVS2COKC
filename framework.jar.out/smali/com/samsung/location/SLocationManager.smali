.class public Lcom/samsung/location/SLocationManager;
.super Ljava/lang/Object;
.source "SLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;,
        Lcom/samsung/location/SLocationManager$LocListenerTransport;
    }
.end annotation


# static fields
.field public static final ACTION_SERVICE_READY:Ljava/lang/String; = "com.samsung.location.SERVICE_READY"

.field public static final CURRENTLOCATION_POI_CATEGORY_ALL:I = 0x1

.field public static final CURRENTLOCATION_POI_CATEGORY_ART_ENTERTAINMENT:I = 0x2

.field public static final CURRENTLOCATION_POI_CATEGORY_COLLEGE_UNIVERSITY:I = 0x4

.field public static final CURRENTLOCATION_POI_CATEGORY_FOOD:I = 0x8

.field public static final CURRENTLOCATION_POI_CATEGORY_NONE:I = 0x0

.field public static final CURRENTLOCATION_POI_CATEGORY_OUTDOORS_RECREATION:I = 0x10

.field public static final CURRENTLOCATION_POI_CATEGORY_PROFESSIONAL:I = 0x20

.field public static final CURRENTLOCATION_POI_CATEGORY_SHOP_SERVICE:I = 0x40

.field public static final CURRENTLOCATION_POI_CATEGORY_TRAVEL_TRANSPORT:I = 0x80

.field public static final CURRENT_LOCATION:Ljava/lang/String; = "currentlocation"

.field public static final CURRENT_LOCATION_ADDRESS:Ljava/lang/String; = "currentlocationaddress"

.field public static final CURRENT_LOCATION_POI:Ljava/lang/String; = "currentlocationpoi"

.field public static final ERROR_ALREADY_STARTED:I = -0x5

.field public static final ERROR_EXCEPTION:I = -0x4

.field public static final ERROR_ID_NOT_EXIST:I = -0x3

.field public static final ERROR_ILLEGAL_ARGUMENT:I = -0x2

.field public static final ERROR_LOCATION_CURRENTLY_UNAVAILABLE:I = -0x64

.field public static final ERROR_NOT_INITIALIZED:I = -0x1

.field public static final ERROR_TOO_MANY_GEOFENCE:I = -0x6

.field public static final GEOFENCE_ENTER:I = 0x1

.field public static final GEOFENCE_EXIT:I = 0x2

.field public static final GEOFENCE_LOCATION:Ljava/lang/String; = "location"

.field public static final GEOFENCE_TRANSITION:Ljava/lang/String; = "transition"

.field public static final GEOFENCE_TYPE_BT:I = 0x3

.field public static final GEOFENCE_TYPE_GEOPOINT:I = 0x1

.field public static final GEOFENCE_TYPE_WIFI:I = 0x2

.field public static final GEOFENCE_UNKNOWN:I = 0x0

.field public static final OPERATION_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SLocationManager"


# instance fields
.field private mCurrentLocListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/location/SCurrentLocListener;",
            "Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mLocListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/location/SLocationListener;",
            "Lcom/samsung/location/SLocationManager$LocListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/samsung/location/ISLocationManager;


# direct methods
.method public constructor <init>(Lcom/samsung/location/ISLocationManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/location/SLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    return-void
.end method

.method private isArgumentsValid(Lcom/samsung/location/SLocationParameter;)Z
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/samsung/location/SLocationParameter;->getType()I

    move-result v6

    if-eq v6, v8, :cond_0

    if-eq v6, v12, :cond_0

    if-eq v6, v13, :cond_0

    const-string v8, "SLocationManager"

    const-string v9, "geofenceType is not correct"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v7

    :cond_0
    if-ne v6, v8, :cond_5

    invoke-virtual {p1}, Lcom/samsung/location/SLocationParameter;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/samsung/location/SLocationParameter;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/samsung/location/SLocationParameter;->getRadius()I

    move-result v1

    const-wide v10, -0x3fa9800000000000L    # -90.0

    cmpg-double v9, v2, v10

    if-ltz v9, :cond_1

    const-wide v10, 0x4056800000000000L    # 90.0

    cmpl-double v9, v2, v10

    if-lez v9, :cond_2

    :cond_1
    const-string v8, "SLocationManager"

    const-string/jumbo v9, "latitude is not correct"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-wide v10, -0x3f99800000000000L    # -180.0

    cmpg-double v9, v4, v10

    if-ltz v9, :cond_3

    const-wide v10, 0x4066800000000000L    # 180.0

    cmpl-double v9, v4, v10

    if-lez v9, :cond_4

    :cond_3
    const-string v8, "SLocationManager"

    const-string/jumbo v9, "longitude is not correct"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/16 v9, 0x64

    if-ge v1, v9, :cond_5

    const-string v8, "SLocationManager"

    const-string/jumbo v9, "radius is not correct"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    if-eq v6, v12, :cond_6

    if-ne v6, v13, :cond_7

    :cond_6
    invoke-virtual {p1}, Lcom/samsung/location/SLocationParameter;->getBssid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v8, "SLocationManager"

    const-string v9, "bssid is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    move v7, v8

    goto :goto_0
.end method


# virtual methods
.method public addGeofence(Lcom/samsung/location/SLocationParameter;)I
    .locals 4

    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/location/SLocationManager;->isArgumentsValid(Lcom/samsung/location/SLocationParameter;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, -0x2

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1, p1}, Lcom/samsung/location/ISLocationManager;->addGeofence(Lcom/samsung/location/SLocationParameter;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGeofenceId : RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    goto :goto_0
.end method

.method public checkPassiveLocation()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v2, :cond_0

    const-string v2, "SLocationManager"

    const-string v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    :try_start_0
    const-string v2, "SLocationManager"

    const-string v3, "checkPassiveLocation"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v2}, Lcom/samsung/location/ISLocationManager;->checkPassiveLocation()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPassiveLocation: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeCurrentLocation(ILcom/samsung/location/SCurrentLocListener;)I
    .locals 7

    const/4 v2, -0x4

    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v3, :cond_0

    const-string v2, "SLocationManager"

    const-string v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    if-nez p2, :cond_1

    const-string v2, "SLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x2

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/samsung/location/SLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;

    if-nez v1, :cond_2

    const-string v3, "SLocationManager"

    const-string v5, "already removeCurrentLocation"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v3, "SLocationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeCurrentLocation: RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_3
    const-string v3, "SLocationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeCurrentLocation : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v3, p1}, Lcom/samsung/location/ISLocationManager;->removeCurrentLocation(I)I

    move-result v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v3

    goto :goto_0
.end method

.method public removeGeofence(I)I
    .locals 4

    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1, p1}, Lcom/samsung/location/ISLocationManager;->removeGeofence(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeGeofence: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    goto :goto_0
.end method

.method public removeLocation(Lcom/samsung/location/SLocationListener;)I
    .locals 5

    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v2, :cond_0

    const-string v2, "SLocationManager"

    const-string v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    if-nez p1, :cond_1

    const-string v2, "SLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x2

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/location/SLocationManager$LocListenerTransport;

    if-nez v1, :cond_2

    const-string v2, "SLocationManager"

    const-string v3, "Already stopped location"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x3

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v2, v1}, Lcom/samsung/location/ISLocationManager;->removeLocation(Lcom/samsung/location/ISLocationListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeLocation: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x4

    goto :goto_0
.end method

.method public removeSingleLocation(Landroid/app/PendingIntent;)I
    .locals 4

    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    if-nez p1, :cond_1

    const-string v1, "SLocationManager"

    const-string/jumbo v2, "parameters are not vaild"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1, p1}, Lcom/samsung/location/ISLocationManager;->removeSingleLocation(Landroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeSingleLocation: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    goto :goto_0
.end method

.method public requestBatchOfLocations()I
    .locals 4

    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    :try_start_0
    const-string v1, "SLocationManager"

    const-string/jumbo v2, "requestBatchOfLocations "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1}, Lcom/samsung/location/ISLocationManager;->requestBatchOfLocations()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestBatchOfLocations: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    goto :goto_0
.end method

.method public requestCurrentLocation(Lcom/samsung/location/SCurrentLocListener;)I
    .locals 5

    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v2, :cond_0

    const-string v2, "SLocationManager"

    const-string v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    if-nez p1, :cond_1

    const-string v2, "SLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x2

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;

    if-nez v1, :cond_2

    new-instance v1, Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;

    invoke-direct {v1, p0, p1}, Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;-><init>(Lcom/samsung/location/SLocationManager;Lcom/samsung/location/SCurrentLocListener;)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SLocationManager"

    const-string/jumbo v4, "requestCurrentLocation "

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v2, v1}, Lcom/samsung/location/ISLocationManager;->requestCurrentLocation(Lcom/samsung/location/ISCurrentLocListener;)I

    move-result v2

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "SLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestCurrentLocation: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x4

    goto :goto_0
.end method

.method public requestLocation(ZZLcom/samsung/location/SLocationListener;)I
    .locals 5

    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v2, :cond_0

    const-string v2, "SLocationManager"

    const-string v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    if-nez p3, :cond_1

    const-string v2, "SLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x2

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/location/SLocationManager$LocListenerTransport;

    if-nez v1, :cond_2

    new-instance v1, Lcom/samsung/location/SLocationManager$LocListenerTransport;

    invoke-direct {v1, p0, p3}, Lcom/samsung/location/SLocationManager$LocListenerTransport;-><init>(Lcom/samsung/location/SLocationManager;Lcom/samsung/location/SLocationListener;)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v2, p1, p2, v1}, Lcom/samsung/location/ISLocationManager;->requestLocation(ZZLcom/samsung/location/ISLocationListener;)I

    move-result v2

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "SLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestSingleLocation: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x4

    goto :goto_0
.end method

.method public requestLocationToPoi(DDLandroid/app/PendingIntent;)I
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v3, :cond_0

    const-string v3, "SLocationManager"

    const-string v4, "SLocationService is not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    :goto_0
    return v3

    :cond_0
    if-nez p5, :cond_1

    const-string v3, "SLocationManager"

    const-string/jumbo v4, "parameters are not vaild"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x2

    goto :goto_0

    :cond_1
    new-array v1, v5, [D

    aput-wide p1, v1, v4

    new-array v2, v5, [D

    aput-wide p3, v2, v4

    :try_start_0
    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v3, v1, v2, p5}, Lcom/samsung/location/ISLocationManager;->requestLocationToPoi([D[DLandroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "SLocationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestLocationToPoi: RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x4

    goto :goto_0
.end method

.method public requestLocationToPoi([D[DLandroid/app/PendingIntent;)I
    .locals 4

    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    if-nez p3, :cond_1

    const-string v1, "SLocationManager"

    const-string/jumbo v2, "parameters are not vaild"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/location/ISLocationManager;->requestLocationToPoi([D[DLandroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestLocationToPoi: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    goto :goto_0
.end method

.method public requestSingleLocation(IIIZLandroid/app/PendingIntent;)I
    .locals 7

    iget-object v0, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v0, :cond_0

    const-string v0, "SLocationManager"

    const-string v1, "SLocationService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p5, :cond_1

    if-gez p3, :cond_2

    :cond_1
    const-string v0, "SLocationManager"

    const-string/jumbo v1, "parameters are not vaild"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/location/ISLocationManager;->requestSingleLocation(IIIZLandroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v0, "SLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSingleLocation: RemoteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    goto :goto_0
.end method

.method public requestSingleLocation(IILandroid/app/PendingIntent;)I
    .locals 7

    iget-object v0, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v0, :cond_0

    const-string v0, "SLocationManager"

    const-string v1, "SLocationService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-nez p3, :cond_1

    const-string v0, "SLocationManager"

    const-string/jumbo v1, "parameters are not vaild"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/location/ISLocationManager;->requestSingleLocation(IIIZLandroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v0, "SLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestSingleLocation: RemoteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x4

    goto :goto_0
.end method

.method public startBatching(ILcom/samsung/location/SLocationListener;)I
    .locals 5

    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v2, :cond_0

    const-string v2, "SLocationManager"

    const-string v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    if-eqz p2, :cond_1

    if-gtz p1, :cond_2

    :cond_1
    const-string v2, "SLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x2

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/location/SLocationManager$LocListenerTransport;

    if-nez v1, :cond_3

    new-instance v1, Lcom/samsung/location/SLocationManager$LocListenerTransport;

    invoke-direct {v1, p0, p2}, Lcom/samsung/location/SLocationManager$LocListenerTransport;-><init>(Lcom/samsung/location/SLocationManager;Lcom/samsung/location/SLocationListener;)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v2, p1, v1}, Lcom/samsung/location/ISLocationManager;->startLocationBatching(ILcom/samsung/location/ISLocationListener;)I

    move-result v2

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "SLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startBatching: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x4

    goto :goto_0
.end method

.method public startGeofence(ILandroid/app/PendingIntent;)I
    .locals 4

    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    if-nez p2, :cond_1

    const-string v1, "SLocationManager"

    const-string/jumbo v2, "intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->startGeofence(ILandroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startGeofence : RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    goto :goto_0
.end method

.method public startLocationBatching(ILcom/samsung/location/SLocationListener;)I
    .locals 5

    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v2, :cond_0

    const-string v2, "SLocationManager"

    const-string v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    if-eqz p2, :cond_1

    if-gtz p1, :cond_2

    :cond_1
    const-string v2, "SLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x2

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/location/SLocationManager$LocListenerTransport;

    if-nez v1, :cond_3

    new-instance v1, Lcom/samsung/location/SLocationManager$LocListenerTransport;

    invoke-direct {v1, p0, p2}, Lcom/samsung/location/SLocationManager$LocListenerTransport;-><init>(Lcom/samsung/location/SLocationManager;Lcom/samsung/location/SLocationListener;)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v2, p1, v1}, Lcom/samsung/location/ISLocationManager;->startLocationBatching(ILcom/samsung/location/ISLocationListener;)I

    move-result v2

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "SLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startBatching: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x4

    goto :goto_0
.end method

.method public stopBatching(ILcom/samsung/location/SLocationListener;)I
    .locals 5

    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v2, :cond_0

    const-string v2, "SLocationManager"

    const-string v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    if-eqz p2, :cond_1

    if-gtz p1, :cond_2

    :cond_1
    const-string v2, "SLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x2

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/location/SLocationManager$LocListenerTransport;

    if-nez v1, :cond_3

    const-string v2, "SLocationManager"

    const-string v3, "Already stopped geofence"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v2, p1}, Lcom/samsung/location/ISLocationManager;->stopLocationBatching(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopBatching: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x4

    goto :goto_0
.end method

.method public stopGeofence(ILandroid/app/PendingIntent;)I
    .locals 4

    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    if-nez p2, :cond_1

    const-string v1, "SLocationManager"

    const-string/jumbo v2, "intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->stopGeofence(ILandroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopGeofence: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    goto :goto_0
.end method

.method public stopLocationBatching(ILcom/samsung/location/SLocationListener;)I
    .locals 5

    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v2, :cond_0

    const-string v2, "SLocationManager"

    const-string v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    if-eqz p2, :cond_1

    if-gtz p1, :cond_2

    :cond_1
    const-string v2, "SLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x2

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/location/SLocationManager$LocListenerTransport;

    if-nez v1, :cond_3

    const-string v2, "SLocationManager"

    const-string v3, "Already stopped geofence"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v2, p1}, Lcom/samsung/location/ISLocationManager;->stopLocationBatching(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopBatching: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x4

    goto :goto_0
.end method

.method public syncGeofence(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v3, :cond_0

    const-string v3, "SLocationManager"

    const-string v4, "SLocationService is not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    :goto_0
    return v3

    :cond_0
    if-nez p1, :cond_1

    const-string v3, "SLocationManager"

    const-string v4, "geofenceIdList is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x2

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [I

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v3, v2}, Lcom/samsung/location/ISLocationManager;->syncGeofence([I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "SLocationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "syncGeofence: RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x4

    goto :goto_0
.end method

.method public updateBatchingOptions(II)I
    .locals 4

    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    if-lez p1, :cond_1

    if-gtz p2, :cond_2

    :cond_1
    const-string v1, "SLocationManager"

    const-string/jumbo v2, "parameters are not vaild"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->updateBatchingOptions(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateBatchingOptions: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    goto :goto_0
.end method
