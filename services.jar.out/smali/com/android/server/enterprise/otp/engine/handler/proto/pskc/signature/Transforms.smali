.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;
.super Ljava/lang/Object;
.source "Transforms.java"


# instance fields
.field private mReferenceTransformAlgo:Ljava/lang/String;

.field private mReferenceTransformXPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReferenceTransformAlgo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;->mReferenceTransformAlgo:Ljava/lang/String;

    return-object v0
.end method

.method public getReferenceTransformXPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;->mReferenceTransformXPath:Ljava/lang/String;

    return-object v0
.end method

.method public setReferenceTransformAlgo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;->mReferenceTransformAlgo:Ljava/lang/String;

    return-void
.end method

.method public setReferenceTransformXPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/Transforms;->mReferenceTransformXPath:Ljava/lang/String;

    return-void
.end method
