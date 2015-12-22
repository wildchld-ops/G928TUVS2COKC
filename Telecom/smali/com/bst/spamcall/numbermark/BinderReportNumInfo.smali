.class public Lcom/bst/spamcall/numbermark/BinderReportNumInfo;
.super Ljava/lang/Object;
.source "BinderReportNumInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/bst/spamcall/numbermark/BinderReportNumInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCallTime:I

.field public mNumber:Ljava/lang/String;

.field public mTagName:Ljava/lang/String;

.field public mTagType:I

.field public mTalkTime:I

.field public mTelType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bst/spamcall/numbermark/BinderReportNumInfo$1;

    invoke-direct {v0}, Lcom/bst/spamcall/numbermark/BinderReportNumInfo$1;-><init>()V

    sput-object v0, Lcom/bst/spamcall/numbermark/BinderReportNumInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "spamcall"

    const-string v1, "s BinderGetNumMarkResult"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "spamcall"

    const-string v1, "BinderGetNumMarkResult s"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/bst/spamcall/numbermark/BinderReportNumInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/bst/spamcall/numbermark/BinderReportNumInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bst/spamcall/numbermark/BinderReportNumInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    const-string v0, "spamcall"

    const-string v1, "s describeContents"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bst/spamcall/numbermark/BinderReportNumInfo;->mTagName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bst/spamcall/numbermark/BinderReportNumInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bst/spamcall/numbermark/BinderReportNumInfo;->mTagType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bst/spamcall/numbermark/BinderReportNumInfo;->mTelType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bst/spamcall/numbermark/BinderReportNumInfo;->mTalkTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bst/spamcall/numbermark/BinderReportNumInfo;->mCallTime:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/bst/spamcall/numbermark/BinderReportNumInfo;->mTagName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bst/spamcall/numbermark/BinderReportNumInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/bst/spamcall/numbermark/BinderReportNumInfo;->mTagType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/bst/spamcall/numbermark/BinderReportNumInfo;->mTelType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/bst/spamcall/numbermark/BinderReportNumInfo;->mTalkTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/bst/spamcall/numbermark/BinderReportNumInfo;->mCallTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
