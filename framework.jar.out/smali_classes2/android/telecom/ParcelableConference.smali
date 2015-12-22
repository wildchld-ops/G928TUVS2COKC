.class public final Landroid/telecom/ParcelableConference;
.super Ljava/lang/Object;
.source "ParcelableConference.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/ParcelableConference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConnectTimeMillis:J

.field private mConnectionCapabilities:I

.field private mConnectionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telecom/ParcelableConference$1;

    invoke-direct {v0}, Landroid/telecom/ParcelableConference$1;-><init>()V

    sput-object v0, Landroid/telecom/ParcelableConference;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;IILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/PhoneAccountHandle;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/ParcelableConference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    iput p2, p0, Landroid/telecom/ParcelableConference;->mState:I

    iput p3, p0, Landroid/telecom/ParcelableConference;->mConnectionCapabilities:I

    iput-object p4, p0, Landroid/telecom/ParcelableConference;->mConnectionIds:Ljava/util/List;

    sget-wide v0, Landroid/telecom/Conference;->CONNECT_TIME_NOT_SPECIFIED:J

    iput-wide v0, p0, Landroid/telecom/ParcelableConference;->mConnectTimeMillis:J

    return-void
.end method

.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;IILjava/util/List;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/PhoneAccountHandle;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telecom/ParcelableConference;-><init>(Landroid/telecom/PhoneAccountHandle;IILjava/util/List;)V

    iput-wide p5, p0, Landroid/telecom/ParcelableConference;->mConnectTimeMillis:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getConnectTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/telecom/ParcelableConference;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public getConnectionCapabilities()I
    .locals 1

    iget v0, p0, Landroid/telecom/ParcelableConference;->mConnectionCapabilities:I

    return v0
.end method

.method public getConnectionIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mConnectionIds:Ljava/util/List;

    return-object v0
.end method

.method public getPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Landroid/telecom/ParcelableConference;->mState:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/ParcelableConference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Landroid/telecom/ParcelableConference;->mState:I

    invoke-static {v1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", capabilities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Landroid/telecom/ParcelableConference;->mConnectionCapabilities:I

    invoke-static {v1}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", connectTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Landroid/telecom/ParcelableConference;->mConnectTimeMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", children: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/ParcelableConference;->mConnectionIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/telecom/ParcelableConference;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telecom/ParcelableConference;->mConnectionCapabilities:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telecom/ParcelableConference;->mConnectionIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-wide v0, p0, Landroid/telecom/ParcelableConference;->mConnectTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
