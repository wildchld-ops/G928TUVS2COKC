.class Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$AutoRejctedCallList;
.super Ljava/lang/Object;
.source "AutoRejectedCallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoRejctedCallList"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mPresentation:I


# direct methods
.method public constructor <init>(Lcom/android/server/telecom/Call;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$AutoRejctedCallList;->mPresentation:I

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$AutoRejctedCallList;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$AutoRejctedCallList;->mNumber:Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$AutoRejctedCallList;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$AutoRejctedCallList;

    invoke-virtual {p1}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$AutoRejctedCallList;->getNumber()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$AutoRejctedCallList;->mNumber:Ljava/lang/String;

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$AutoRejctedCallList;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$AutoRejctedCallList;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$AutoRejctedCallList;->mNumber:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$AutoRejctedCallList;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$AutoRejctedCallList;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$AutoRejctedCallList;->mNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$AutoRejctedCallList;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "name : "

    iget-object v2, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$AutoRejctedCallList;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "number : "

    iget-object v2, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$AutoRejctedCallList;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "presentation : "

    iget v2, p0, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier$AutoRejctedCallList;->mPresentation:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
