.class public final Landroid/bluetooth/BtUCallbackData;
.super Ljava/lang/Object;
.source "BtUCallbackData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BtUCallbackData;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BtUCallbackData"


# instance fields
.field private mSvcName:Ljava/lang/String;

.field private mUuid:Landroid/os/ParcelUuid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/BtUCallbackData$1;

    invoke-direct {v0}, Landroid/bluetooth/BtUCallbackData$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BtUCallbackData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BtUCallbackData"

    const-string v1, "BtUCallbackData creator with Parcel"

    invoke-static {v0, v1}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BtUCallbackData;->mSvcName:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    const-class v0, Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    iput-object v0, p0, Landroid/bluetooth/BtUCallbackData;->mUuid:Landroid/os/ParcelUuid;

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/ParcelUuid;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BtUCallbackData;->mSvcName:Ljava/lang/String;

    iput-object p2, p0, Landroid/bluetooth/BtUCallbackData;->mUuid:Landroid/os/ParcelUuid;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSvcName()Ljava/lang/String;
    .locals 3

    const-string v0, "BtUCallbackData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSvcName called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BtUCallbackData;->mSvcName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BtUCallbackData;->mSvcName:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Landroid/os/ParcelUuid;
    .locals 3

    const-string v0, "BtUCallbackData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUuid called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BtUCallbackData;->mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BtUCallbackData;->mUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "BtUCallbackData"

    const-string/jumbo v3, "writeToParcel"

    invoke-static {v0, v3}, Landroid/bluetooth/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BtUCallbackData;->mSvcName:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/BtUCallbackData;->mSvcName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BtUCallbackData;->mSvcName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BtUCallbackData;->mUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_3

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/BtUCallbackData;->mUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BtUCallbackData;->mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method
