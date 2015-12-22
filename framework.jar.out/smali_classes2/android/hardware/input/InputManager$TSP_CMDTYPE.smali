.class public final enum Landroid/hardware/input/InputManager$TSP_CMDTYPE;
.super Ljava/lang/Enum;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TSP_CMDTYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/input/InputManager$TSP_CMDTYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/input/InputManager$TSP_CMDTYPE;

.field public static final enum TSP_CMDTYPE_EMPTY:Landroid/hardware/input/InputManager$TSP_CMDTYPE;

.field public static final enum TSP_CMDTYPE_SPAY:Landroid/hardware/input/InputManager$TSP_CMDTYPE;


# instance fields
.field private mvalue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/hardware/input/InputManager$TSP_CMDTYPE;

    const-string v1, "TSP_CMDTYPE_EMPTY"

    invoke-direct {v0, v1, v2, v2}, Landroid/hardware/input/InputManager$TSP_CMDTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/input/InputManager$TSP_CMDTYPE;->TSP_CMDTYPE_EMPTY:Landroid/hardware/input/InputManager$TSP_CMDTYPE;

    new-instance v0, Landroid/hardware/input/InputManager$TSP_CMDTYPE;

    const-string v1, "TSP_CMDTYPE_SPAY"

    invoke-direct {v0, v1, v3, v3}, Landroid/hardware/input/InputManager$TSP_CMDTYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/hardware/input/InputManager$TSP_CMDTYPE;->TSP_CMDTYPE_SPAY:Landroid/hardware/input/InputManager$TSP_CMDTYPE;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/hardware/input/InputManager$TSP_CMDTYPE;

    sget-object v1, Landroid/hardware/input/InputManager$TSP_CMDTYPE;->TSP_CMDTYPE_EMPTY:Landroid/hardware/input/InputManager$TSP_CMDTYPE;

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/input/InputManager$TSP_CMDTYPE;->TSP_CMDTYPE_SPAY:Landroid/hardware/input/InputManager$TSP_CMDTYPE;

    aput-object v1, v0, v3

    sput-object v0, Landroid/hardware/input/InputManager$TSP_CMDTYPE;->$VALUES:[Landroid/hardware/input/InputManager$TSP_CMDTYPE;

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

    iput p3, p0, Landroid/hardware/input/InputManager$TSP_CMDTYPE;->mvalue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/input/InputManager$TSP_CMDTYPE;
    .locals 1

    const-class v0, Landroid/hardware/input/InputManager$TSP_CMDTYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager$TSP_CMDTYPE;

    return-object v0
.end method

.method public static values()[Landroid/hardware/input/InputManager$TSP_CMDTYPE;
    .locals 1

    sget-object v0, Landroid/hardware/input/InputManager$TSP_CMDTYPE;->$VALUES:[Landroid/hardware/input/InputManager$TSP_CMDTYPE;

    invoke-virtual {v0}, [Landroid/hardware/input/InputManager$TSP_CMDTYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/input/InputManager$TSP_CMDTYPE;

    return-object v0
.end method


# virtual methods
.method public getvalue()I
    .locals 1

    iget v0, p0, Landroid/hardware/input/InputManager$TSP_CMDTYPE;->mvalue:I

    return v0
.end method
