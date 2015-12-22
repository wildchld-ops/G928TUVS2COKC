.class final enum Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;
.super Ljava/lang/Enum;
.source "SecCallButtonFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecCallButtonFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FragmentMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

.field public static final enum CALLPLUS_VOICE:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

.field public static final enum CONF_VIDEO:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

.field public static final enum EMPTY:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

.field public static final enum ENDCALL:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

.field public static final enum FOLDER_ENDCALL:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

.field public static final enum FOLDER_VOICE:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

.field public static final enum HD_VIDEO:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

.field public static final enum QCIF_VIDEO:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

.field public static final enum QVGA_VIDEO:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

.field public static final enum VCC_VOICE:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

.field public static final enum VGA_VIDEO:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

.field public static final enum VOICE:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    const-string v1, "VOICE"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->VOICE:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    const-string v1, "VCC_VOICE"

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->VCC_VOICE:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    const-string v1, "CALLPLUS_VOICE"

    invoke-direct {v0, v1, v5}, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->CALLPLUS_VOICE:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    const-string v1, "FOLDER_VOICE"

    invoke-direct {v0, v1, v6}, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->FOLDER_VOICE:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    const-string v1, "QCIF_VIDEO"

    invoke-direct {v0, v1, v7}, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->QCIF_VIDEO:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    const-string v1, "QVGA_VIDEO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->QVGA_VIDEO:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    const-string v1, "VGA_VIDEO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->VGA_VIDEO:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    const-string v1, "HD_VIDEO"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->HD_VIDEO:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    const-string v1, "CONF_VIDEO"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->CONF_VIDEO:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    const-string v1, "ENDCALL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->ENDCALL:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    const-string v1, "FOLDER_ENDCALL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->FOLDER_ENDCALL:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    const-string v1, "EMPTY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    sget-object v1, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->VOICE:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->VCC_VOICE:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->CALLPLUS_VOICE:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->FOLDER_VOICE:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->QCIF_VIDEO:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->QVGA_VIDEO:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->VGA_VIDEO:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->HD_VIDEO:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->CONF_VIDEO:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->ENDCALL:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->FOLDER_ENDCALL:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->$VALUES:[Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;
    .locals 1

    const-class v0, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;
    .locals 1

    sget-object v0, Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->$VALUES:[Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    invoke-virtual {v0}, [Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/SecCallButtonFragmentManager$FragmentMode;

    return-object v0
.end method
