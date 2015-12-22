.class public Lcom/samsung/android/edge/EdgeManager;
.super Ljava/lang/Object;
.source "EdgeManager.java"


# static fields
.field public static final ACTION_EDGE_SERVICE:Ljava/lang/String; = "com.samsung.android.EDGE_SERVICE"

.field public static final EDGE_POSITION_SURFACE0_ALL:I = 0x3

.field public static final EDGE_POSITION_SURFACE0_LEFT:I = 0x2

.field public static final EDGE_POSITION_SURFACE0_NONE:I = 0x0

.field public static final EDGE_POSITION_SURFACE0_RIGHT:I = 0x1

.field public static final EXTRA_COMPONENT_NAME:Ljava/lang/String; = "extra_component_name"

.field public static final EXTRA_EDGE_POSITION:Ljava/lang/String; = "extra_edge_position"

.field public static final PERMISSION_EDGE_SERVICE:Ljava/lang/String; = "com.samsung.android.permission.EDGE_SERVICE"

.field private static final TAG:Ljava/lang/String; = "EdgeManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/edge/IEdgeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/edge/IEdgeManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/edge/EdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    iput-object p1, p0, Lcom/samsung/android/edge/EdgeManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/edge/EdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/edge/EdgeManager;
    .locals 1

    const-string v0, "edgeservice"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/edge/EdgeManager;

    return-object v0
.end method


# virtual methods
.method public connect(Lcom/samsung/android/edge/IEdgeManagerClient;Landroid/content/ComponentName;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/edge/EdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    invoke-interface {v1, p2, p1}, Lcom/samsung/android/edge/IEdgeManager;->connect(Landroid/content/ComponentName;Lcom/samsung/android/edge/IEdgeManagerClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getEdgeComponents()[Landroid/content/ComponentName;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/edge/EdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    invoke-interface {v1}, Lcom/samsung/android/edge/IEdgeManager;->getEdgeComponents()[Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEdgeConfiguration(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/edge/EdgeManager;->mService:Lcom/samsung/android/edge/IEdgeManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/edge/IEdgeManager;->getEdgeConfiguration(Landroid/content/ComponentName;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method
