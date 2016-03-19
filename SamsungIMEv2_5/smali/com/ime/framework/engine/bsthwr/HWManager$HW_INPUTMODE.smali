.class public final enum Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;
.super Ljava/lang/Enum;
.source "HWManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/engine/bsthwr/HWManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HW_INPUTMODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;

.field public static final enum BOX_MODE:Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;

.field public static final enum FULLSCREEN_MODE:Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;

.field public static final enum KEYBOARD_MODE:Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;

.field public static final enum TEMP_HW_MODE:Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;

    const-string v1, "FULLSCREEN_MODE"

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;->FULLSCREEN_MODE:Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;

    new-instance v0, Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;

    const-string v1, "BOX_MODE"

    invoke-direct {v0, v1, v3}, Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;->BOX_MODE:Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;

    new-instance v0, Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;

    const-string v1, "TEMP_HW_MODE"

    invoke-direct {v0, v1, v4}, Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;->TEMP_HW_MODE:Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;

    new-instance v0, Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;

    const-string v1, "KEYBOARD_MODE"

    invoke-direct {v0, v1, v5}, Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;->KEYBOARD_MODE:Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;

    sget-object v1, Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;->FULLSCREEN_MODE:Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;->BOX_MODE:Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;->TEMP_HW_MODE:Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;->KEYBOARD_MODE:Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;->$VALUES:[Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;
    .locals 1

    const-class v0, Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;

    return-object v0
.end method

.method public static values()[Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;
    .locals 1

    sget-object v0, Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;->$VALUES:[Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;

    invoke-virtual {v0}, [Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ime/framework/engine/bsthwr/HWManager$HW_INPUTMODE;

    return-object v0
.end method
