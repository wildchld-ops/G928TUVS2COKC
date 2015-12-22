.class public Landroid/spay/PaymentTZServiceConfig;
.super Ljava/lang/Object;
.source "PaymentTZServiceConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/spay/PaymentTZServiceConfig$TAConfig;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/spay/PaymentTZServiceConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mClient:Landroid/os/IBinder;

.field public mTAConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/spay/PaymentTZServiceConfig$TAConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/spay/PaymentTZServiceConfig$2;

    invoke-direct {v0}, Landroid/spay/PaymentTZServiceConfig$2;-><init>()V

    sput-object v0, Landroid/spay/PaymentTZServiceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/spay/PaymentTZServiceConfig$1;

    invoke-direct {v0, p0}, Landroid/spay/PaymentTZServiceConfig$1;-><init>(Landroid/spay/PaymentTZServiceConfig;)V

    iput-object v0, p0, Landroid/spay/PaymentTZServiceConfig;->mClient:Landroid/os/IBinder;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/spay/PaymentTZServiceConfig$1;

    invoke-direct {v0, p0}, Landroid/spay/PaymentTZServiceConfig$1;-><init>(Landroid/spay/PaymentTZServiceConfig;)V

    iput-object v0, p0, Landroid/spay/PaymentTZServiceConfig;->mClient:Landroid/os/IBinder;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-virtual {p0, p1}, Landroid/spay/PaymentTZServiceConfig;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/spay/PaymentTZServiceConfig$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/spay/PaymentTZServiceConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public addTAConfig(ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V
    .locals 2

    iget-object v0, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;
    .locals 2

    iget-object v0, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/spay/PaymentTZServiceConfig$TAConfig;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 7

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Landroid/spay/PaymentTZServiceConfig;->mClient:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/spay/PaymentTZServiceConfig$TAConfig;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/spay/PaymentTZServiceConfig$TAConfig;-><init>(II)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeTAConfig(ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V
    .locals 2

    iget-object v0, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v2, p0, Landroid/spay/PaymentTZServiceConfig;->mClient:Landroid/os/IBinder;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/spay/PaymentTZServiceConfig$TAConfig;

    iget v2, v2, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxSendCmdSize:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/spay/PaymentTZServiceConfig$TAConfig;

    iget v2, v2, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxRecvRespSize:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
