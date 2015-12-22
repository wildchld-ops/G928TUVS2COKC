.class public Landroid/sec/enterprise/email/EnterpriseLDAPAccount;
.super Ljava/lang/Object;
.source "EnterpriseLDAPAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/sec/enterprise/email/EnterpriseLDAPAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBaseDN:Ljava/lang/String;

.field public mHost:Ljava/lang/String;

.field public mId:J

.field public mIsAnonymous:Z

.field public mPassword:Ljava/lang/String;

.field public mPort:I

.field public mTrustAll:I

.field public mUseSSL:Z

.field public mUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount$1;

    invoke-direct {v0}, Landroid/sec/enterprise/email/EnterpriseLDAPAccount$1;-><init>()V

    sput-object v0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mUserName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mPassword:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mPort:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mHost:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mUseSSL:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mIsAnonymous:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mBaseDN:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mTrustAll:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-wide v4, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mUseSSL:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mIsAnonymous:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mBaseDN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mTrustAll:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
