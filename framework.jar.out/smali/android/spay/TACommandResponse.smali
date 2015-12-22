.class public Landroid/spay/TACommandResponse;
.super Ljava/lang/Object;
.source "TACommandResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/spay/TACommandResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TACommandResponse"


# instance fields
.field public mErrorMsg:Ljava/lang/String;

.field public mResponse:[B

.field public mResponseCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/spay/TACommandResponse$1;

    invoke-direct {v0}, Landroid/spay/TACommandResponse$1;-><init>()V

    sput-object v0, Landroid/spay/TACommandResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/spay/TACommandResponse;->mResponseCode:I

    iput-object v1, p0, Landroid/spay/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    iput-object v1, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[B)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/spay/TACommandResponse;->mResponseCode:I

    iput-object v1, p0, Landroid/spay/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    iput-object v1, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    iput p1, p0, Landroid/spay/TACommandResponse;->mResponseCode:I

    iput-object p2, p0, Landroid/spay/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    iput-object p3, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/spay/TACommandResponse;->mResponseCode:I

    iput-object v1, p0, Landroid/spay/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    iput-object v1, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    invoke-virtual {p0, p1}, Landroid/spay/TACommandResponse;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/spay/TACommandResponse$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/spay/TACommandResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump()V
    .locals 11

    const/4 v10, 0x0

    const-string v7, "TACommandResponse"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x64

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    iget-object v7, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    array-length v7, v7

    if-ge v4, v7, :cond_1

    if-lez v4, :cond_0

    iget-object v7, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    aget-byte v7, v7, v4

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    add-int/lit8 v8, v4, -0x1

    aget-byte v7, v7, v8

    if-nez v7, :cond_0

    const-string v7, "\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v7, "%02X "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    aget-byte v9, v9, v4

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v7, "TACommandResponse"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileWriter;

    const-string v7, "/mnt/sdcard/respbuf.txt"

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    move-object v0, v1

    move-object v5, v6

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    move-object v5, v6

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    move-object v5, v6

    goto :goto_1

    :catch_2
    move-exception v2

    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_5

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :cond_5
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v0, :cond_6

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :cond_7
    :goto_4
    throw v7

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_6
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v7

    move-object v5, v6

    goto :goto_3

    :catchall_2
    move-exception v7

    move-object v0, v1

    move-object v5, v6

    goto :goto_3

    :catch_7
    move-exception v2

    move-object v5, v6

    goto :goto_2

    :catch_8
    move-exception v2

    move-object v0, v1

    move-object v5, v6

    goto :goto_2
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/spay/TACommandResponse;->mResponseCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/spay/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    iget-object v1, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/spay/TACommandResponse;->mResponseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/spay/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/spay/TACommandResponse;->mResponse:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
