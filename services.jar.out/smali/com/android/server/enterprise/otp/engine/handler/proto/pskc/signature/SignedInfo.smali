.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;
.super Ljava/lang/Object;
.source "SignedInfo.java"


# instance fields
.field private mCanonicalizationMethod:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mReferenceDigestMethod:Ljava/lang/String;

.field private mReferenceDigestValue:[B

.field private mReferenceId:Ljava/lang/String;

.field private mReferenceType:Ljava/lang/String;

.field private mReferenceUri:Ljava/lang/String;

.field private mSignatureMethodAlgo:Ljava/lang/String;

.field private mSignatureMethodHmacLength:I

.field private mTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCanonicalizationMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->mCanonicalizationMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceDigestMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->mReferenceDigestMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceDigestValue()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->mReferenceDigestValue:[B

    return-object v0
.end method

.method public getReferenceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->mReferenceId:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->mReferenceUri:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->mReferenceType:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureMethodAlgo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->mSignatureMethodAlgo:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureMethodHmacLength()I
    .locals 1

    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->mSignatureMethodHmacLength:I

    return v0
.end method

.method public getTransforms()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->mTransforms:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCanonicalizationMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->mCanonicalizationMethod:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->mId:Ljava/lang/String;

    return-void
.end method

.method public setReferenceDigestMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->mReferenceDigestMethod:Ljava/lang/String;

    return-void
.end method

.method public setReferenceDigestValue([B)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->mReferenceDigestValue:[B

    return-void
.end method

.method public setReferenceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->mReferenceId:Ljava/lang/String;

    return-void
.end method

.method public setReferenceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->mReferenceUri:Ljava/lang/String;

    return-void
.end method

.method public setReferenceType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->mReferenceType:Ljava/lang/String;

    return-void
.end method

.method public setSignatureMethodAlgo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->mSignatureMethodAlgo:Ljava/lang/String;

    return-void
.end method

.method public setSignatureMethodHmacLength(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->mSignatureMethodHmacLength:I

    return-void
.end method

.method public setmTransforms(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/SignedInfo;->mTransforms:Ljava/util/ArrayList;

    return-void
.end method
