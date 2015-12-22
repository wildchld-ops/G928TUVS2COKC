.class final enum Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;
.super Ljava/lang/Enum;
.source "SecTabletVideoCallViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecTabletVideoCallViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FragmentMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

.field public static final enum CONF_VIDEO:Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

.field public static final enum HD720_VIDEO:Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

.field public static final enum QCIF_VIDEO:Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

.field public static final enum QVGA_VIDEO:Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

.field public static final enum VGA_VIDEO:Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

    const-string v1, "QCIF_VIDEO"

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;->QCIF_VIDEO:Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

    const-string v1, "QVGA_VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;->QVGA_VIDEO:Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

    const-string v1, "VGA_VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;->VGA_VIDEO:Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

    const-string v1, "CONF_VIDEO"

    invoke-direct {v0, v1, v5}, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;->CONF_VIDEO:Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

    const-string v1, "HD720_VIDEO"

    invoke-direct {v0, v1, v6}, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;->HD720_VIDEO:Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

    sget-object v1, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;->QCIF_VIDEO:Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;->QVGA_VIDEO:Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;->VGA_VIDEO:Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;->CONF_VIDEO:Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;->HD720_VIDEO:Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;->$VALUES:[Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;
    .locals 1

    const-class v0, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;
    .locals 1

    sget-object v0, Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;->$VALUES:[Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

    invoke-virtual {v0}, [Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/SecTabletVideoCallViewManager$FragmentMode;

    return-object v0
.end method
