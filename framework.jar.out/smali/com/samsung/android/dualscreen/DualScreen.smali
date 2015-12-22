.class public final enum Lcom/samsung/android/dualscreen/DualScreen;
.super Ljava/lang/Enum;
.source "DualScreen.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/dualscreen/DualScreen;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/dualscreen/DualScreen;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/dualscreen/DualScreen;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum EXPANDED:Lcom/samsung/android/dualscreen/DualScreen;

.field public static final enum EXTERNAL:Lcom/samsung/android/dualscreen/DualScreen;

.field public static final enum FULL:Lcom/samsung/android/dualscreen/DualScreen;

.field public static final enum INPUT_METHOD:Lcom/samsung/android/dualscreen/DualScreen;

.field public static final enum MAIN:Lcom/samsung/android/dualscreen/DualScreen;

.field public static final enum SUB:Lcom/samsung/android/dualscreen/DualScreen;

.field private static final TAG:Ljava/lang/String; = "DualScreen"

.field public static final enum UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;


# instance fields
.field private displayId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    new-instance v0, Lcom/samsung/android/dualscreen/DualScreen;

    const-string v1, "MAIN"

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/android/dualscreen/DualScreen;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    new-instance v0, Lcom/samsung/android/dualscreen/DualScreen;

    const-string v1, "SUB"

    invoke-direct {v0, v1, v6, v6}, Lcom/samsung/android/dualscreen/DualScreen;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    new-instance v0, Lcom/samsung/android/dualscreen/DualScreen;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/dualscreen/DualScreen;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/dualscreen/DualScreen;->FULL:Lcom/samsung/android/dualscreen/DualScreen;

    new-instance v0, Lcom/samsung/android/dualscreen/DualScreen;

    const-string v1, "INPUT_METHOD"

    invoke-direct {v0, v1, v7, v7}, Lcom/samsung/android/dualscreen/DualScreen;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/dualscreen/DualScreen;->INPUT_METHOD:Lcom/samsung/android/dualscreen/DualScreen;

    new-instance v0, Lcom/samsung/android/dualscreen/DualScreen;

    const-string v1, "EXTERNAL"

    invoke-direct {v0, v1, v8, v8}, Lcom/samsung/android/dualscreen/DualScreen;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/dualscreen/DualScreen;->EXTERNAL:Lcom/samsung/android/dualscreen/DualScreen;

    new-instance v0, Lcom/samsung/android/dualscreen/DualScreen;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/dualscreen/DualScreen;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    new-instance v0, Lcom/samsung/android/dualscreen/DualScreen;

    const-string v1, "EXPANDED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4}, Lcom/samsung/android/dualscreen/DualScreen;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/dualscreen/DualScreen;->EXPANDED:Lcom/samsung/android/dualscreen/DualScreen;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/android/dualscreen/DualScreen;

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->FULL:Lcom/samsung/android/dualscreen/DualScreen;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->INPUT_METHOD:Lcom/samsung/android/dualscreen/DualScreen;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->EXTERNAL:Lcom/samsung/android/dualscreen/DualScreen;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->EXPANDED:Lcom/samsung/android/dualscreen/DualScreen;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/dualscreen/DualScreen;->$VALUES:[Lcom/samsung/android/dualscreen/DualScreen;

    new-instance v0, Lcom/samsung/android/dualscreen/DualScreen$1;

    invoke-direct {v0}, Lcom/samsung/android/dualscreen/DualScreen$1;-><init>()V

    sput-object v0, Lcom/samsung/android/dualscreen/DualScreen;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/dualscreen/DualScreen;->displayId:I

    return-void
.end method

.method public static displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;
    .locals 1

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->FULL:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p0, v0, :cond_2

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->FULL:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->INPUT_METHOD:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p0, v0, :cond_3

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->INPUT_METHOD:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->EXTERNAL:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v0

    if-ne p0, v0, :cond_4

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->EXTERNAL:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->UNKNOWN:Lcom/samsung/android/dualscreen/DualScreen;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/dualscreen/DualScreen;
    .locals 1

    const-class v0, Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/dualscreen/DualScreen;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/dualscreen/DualScreen;
    .locals 1

    sget-object v0, Lcom/samsung/android/dualscreen/DualScreen;->$VALUES:[Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0}, [Lcom/samsung/android/dualscreen/DualScreen;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/dualscreen/DualScreen;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/dualscreen/DualScreen;->displayId:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/dualscreen/DualScreen;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
