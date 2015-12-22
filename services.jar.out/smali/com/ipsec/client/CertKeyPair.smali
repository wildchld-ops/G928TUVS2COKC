.class public Lcom/ipsec/client/CertKeyPair;
.super Ljava/lang/Object;
.source "CertKeyPair.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ipsec/client/CertKeyPair;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCertificate:Ljava/security/cert/Certificate;

.field private mKey:Ljava/security/Key;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ipsec/client/CertKeyPair$1;

    invoke-direct {v0}, Lcom/ipsec/client/CertKeyPair$1;-><init>()V

    sput-object v0, Lcom/ipsec/client/CertKeyPair;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ipsec/client/CertKeyPair;->mCertificate:Ljava/security/cert/Certificate;

    iput-object v0, p0, Lcom/ipsec/client/CertKeyPair;->mKey:Ljava/security/Key;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ipsec/client/CertKeyPair;->mCertificate:Ljava/security/cert/Certificate;

    iput-object v0, p0, Lcom/ipsec/client/CertKeyPair;->mKey:Ljava/security/Key;

    invoke-direct {p0, p1}, Lcom/ipsec/client/CertKeyPair;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/Certificate;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ipsec/client/CertKeyPair;->mCertificate:Ljava/security/cert/Certificate;

    iput-object v0, p0, Lcom/ipsec/client/CertKeyPair;->mKey:Ljava/security/Key;

    iput-object p1, p0, Lcom/ipsec/client/CertKeyPair;->mCertificate:Ljava/security/cert/Certificate;

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    iput-object v0, p0, Lcom/ipsec/client/CertKeyPair;->mCertificate:Ljava/security/cert/Certificate;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    iput-object v0, p0, Lcom/ipsec/client/CertKeyPair;->mKey:Ljava/security/Key;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCertificate()Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Lcom/ipsec/client/CertKeyPair;->mCertificate:Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public getPrivateKey()Ljava/security/Key;
    .locals 1

    iget-object v0, p0, Lcom/ipsec/client/CertKeyPair;->mKey:Ljava/security/Key;

    return-object v0
.end method

.method public setCertificate(Ljava/security/cert/Certificate;)V
    .locals 0

    iput-object p1, p0, Lcom/ipsec/client/CertKeyPair;->mCertificate:Ljava/security/cert/Certificate;

    return-void
.end method

.method public setPrivateKey(Ljava/security/Key;)V
    .locals 0

    iput-object p1, p0, Lcom/ipsec/client/CertKeyPair;->mKey:Ljava/security/Key;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/ipsec/client/CertKeyPair;->mCertificate:Ljava/security/cert/Certificate;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/ipsec/client/CertKeyPair;->mKey:Ljava/security/Key;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
