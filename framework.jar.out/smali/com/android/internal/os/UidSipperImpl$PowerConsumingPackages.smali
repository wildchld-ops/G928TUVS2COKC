.class public final Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;
.super Ljava/lang/Object;
.source "UidSipperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/UidSipperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PowerConsumingPackages"
.end annotation


# instance fields
.field private count:I

.field private packages:[Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;->time:Ljava/lang/String;

    iput p2, p0, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;->count:I

    iput-object p3, p0, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;->packages:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;I[Ljava/lang/String;Lcom/android/internal/os/UidSipperImpl$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;->time:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    iput v1, p0, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;->count:I

    iget v1, p0, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;->count:I

    if-eqz v1, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iput v2, p0, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;->count:I

    :cond_0
    iget v1, p0, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;->count:I

    if-eqz v1, :cond_1

    iput-object v0, p0, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;->packages:[Ljava/lang/String;

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/UidSipperImpl$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPackageCount()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;->count:I

    return v0
.end method

.method public getPackageNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;->packages:[Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/UidSipperImpl$PowerConsumingPackages;->time:Ljava/lang/String;

    return-object v0
.end method
