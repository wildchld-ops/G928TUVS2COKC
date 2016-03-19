.class public Lcom/ime/framework/engine/bsthwr/DecHwInputData;
.super Ljava/lang/Object;
.source "DecHwInputData.java"


# instance fields
.field private data:[I

.field private num:S


# direct methods
.method public constructor <init>([I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ime/framework/engine/bsthwr/DecHwInputData;->data:[I

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHwInputData;->data:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHwInputData;->data:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    iput-short v0, p0, Lcom/ime/framework/engine/bsthwr/DecHwInputData;->num:S

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/ime/framework/engine/bsthwr/DecHwInputData;->reset()V

    goto :goto_0
.end method


# virtual methods
.method public getData()[I
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHwInputData;->data:[I

    return-object v0
.end method

.method public getDataNum()S
    .locals 1

    iget-short v0, p0, Lcom/ime/framework/engine/bsthwr/DecHwInputData;->num:S

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/DecHwInputData;->data:[I

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/ime/framework/engine/bsthwr/DecHwInputData;->num:S

    return-void
.end method
