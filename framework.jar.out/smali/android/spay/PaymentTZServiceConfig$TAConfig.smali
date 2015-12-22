.class public Landroid/spay/PaymentTZServiceConfig$TAConfig;
.super Ljava/lang/Object;
.source "PaymentTZServiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/spay/PaymentTZServiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TAConfig"
.end annotation


# instance fields
.field public maxRecvRespSize:I

.field public maxSendCmdSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxSendCmdSize:I

    iput p2, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxRecvRespSize:I

    return-void
.end method
