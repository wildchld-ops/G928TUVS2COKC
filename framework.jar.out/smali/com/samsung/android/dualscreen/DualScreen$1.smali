.class final Lcom/samsung/android/dualscreen/DualScreen$1;
.super Ljava/lang/Object;
.source "DualScreen.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/dualscreen/DualScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/samsung/android/dualscreen/DualScreen;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/dualscreen/DualScreen;
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreen;->values()[Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/dualscreen/DualScreen;->values()[Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v1

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/dualscreen/DualScreen$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/android/dualscreen/DualScreen;
    .locals 1

    new-array v0, p1, [Lcom/samsung/android/dualscreen/DualScreen;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/dualscreen/DualScreen$1;->newArray(I)[Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v0

    return-object v0
.end method
