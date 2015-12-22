.class public Lcom/android/server/edge/settings/EdgeServiceSettingsManager;
.super Ljava/lang/Object;
.source "EdgeServiceSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceInfo;,
        Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;
    }
.end annotation


# static fields
.field private static final EDGE_INFO_SEPARATER:Ljava/lang/String; = ":"

.field private static final EDGE_SERVICE_LIST:Ljava/lang/String; = "edge_service_list"

.field private static final EDGE_SERVICE_SEPARATER:Ljava/lang/String; = ";"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContainer:Lcom/android/server/edge/EdgeServiceRecordContainer;

.field private mContext:Landroid/content/Context;

.field private mEdgeServiceInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mObserver:Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/edge/EdgeServiceRecordContainer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->mEdgeServiceInfos:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->mContainer:Lcom/android/server/edge/EdgeServiceRecordContainer;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;

    iget-object v1, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;-><init>(Lcom/android/server/edge/settings/EdgeServiceSettingsManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->mObserver:Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;

    iget-object v0, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->mObserver:Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/edge/settings/EdgeServiceSettingsManager$EdgeServiceSettingsObserver;->update()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/edge/settings/EdgeServiceSettingsManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/edge/settings/EdgeServiceSettingsManager;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->mEdgeServiceInfos:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/edge/settings/EdgeServiceSettingsManager;)Lcom/android/server/edge/EdgeServiceRecordContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/edge/settings/EdgeServiceSettingsManager;->mContainer:Lcom/android/server/edge/EdgeServiceRecordContainer;

    return-object v0
.end method
