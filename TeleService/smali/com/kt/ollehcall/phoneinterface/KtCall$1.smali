.class Lcom/kt/ollehcall/phoneinterface/KtCall$1;
.super Ljava/lang/Object;
.source "KtCall.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kt/ollehcall/phoneinterface/KtCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/kt/ollehcall/phoneinterface/KtCall;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/kt/ollehcall/phoneinterface/KtCall;
    .locals 2
    .param p1    # Landroid/os/Parcel;

    new-instance v0, Lcom/kt/ollehcall/phoneinterface/KtCall;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/kt/ollehcall/phoneinterface/KtCall;-><init>(Landroid/os/Parcel;Lcom/kt/ollehcall/phoneinterface/KtCall;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/kt/ollehcall/phoneinterface/KtCall$1;->createFromParcel(Landroid/os/Parcel;)Lcom/kt/ollehcall/phoneinterface/KtCall;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/kt/ollehcall/phoneinterface/KtCall;
    .locals 1
    .param p1    # I

    new-array v0, p1, [Lcom/kt/ollehcall/phoneinterface/KtCall;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/kt/ollehcall/phoneinterface/KtCall$1;->newArray(I)[Lcom/kt/ollehcall/phoneinterface/KtCall;

    move-result-object v0

    return-object v0
.end method
