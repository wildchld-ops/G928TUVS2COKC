.class Lcom/android/server/am/ActivityManagerService$HotnessValue;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HotnessValue"
.end annotation


# instance fields
.field private nHotness:[I

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;I)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$HotnessValue;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$HotnessValue;->nHotness:[I

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$HotnessValue;->nHotness:[I

    const/4 v1, 0x1

    aput v1, v0, p2

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method decreaseHotness(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$HotnessValue;->nHotness:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    return-void
.end method

.method getHotness(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$HotnessValue;->nHotness:[I

    aget v0, v0, p1

    return v0
.end method

.method increaseHotness(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$HotnessValue;->nHotness:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    return-void
.end method

.method setHalf(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$HotnessValue;->nHotness:[I

    aget v1, v0, p1

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, p1

    return-void
.end method

.method setHotness(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$HotnessValue;->nHotness:[I

    aput p1, v0, p2

    return-void
.end method
