.class Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;
.super Ljava/lang/Object;
.source "SecJpnTelecomDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CodeNameValues"
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;->code:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity$CodeNameValues;->name:Ljava/lang/String;

    return-void
.end method
