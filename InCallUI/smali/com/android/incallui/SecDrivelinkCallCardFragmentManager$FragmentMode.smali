.class final enum Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;
.super Ljava/lang/Enum;
.source "SecDrivelinkCallCardFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecDrivelinkCallCardFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FragmentMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

.field public static final enum DRIVELINK:Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

.field public static final enum DRIVELINK_MW:Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

.field public static final enum EMPTY:Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

.field public static final enum MIRRORLINK:Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

.field public static final enum MIRRORLINK_MULTIPARTY:Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

    const-string v1, "DRIVELINK"

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;->DRIVELINK:Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

    const-string v1, "DRIVELINK_MW"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;->DRIVELINK_MW:Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

    const-string v1, "MIRRORLINK"

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;->MIRRORLINK:Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

    const-string v1, "MIRRORLINK_MULTIPARTY"

    invoke-direct {v0, v1, v5}, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;->MIRRORLINK_MULTIPARTY:Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v6}, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

    sget-object v1, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;->DRIVELINK:Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;->DRIVELINK_MW:Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;->MIRRORLINK:Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;->MIRRORLINK_MULTIPARTY:Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;->$VALUES:[Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;
    .locals 1

    const-class v0, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;
    .locals 1

    sget-object v0, Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;->$VALUES:[Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

    invoke-virtual {v0}, [Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/SecDrivelinkCallCardFragmentManager$FragmentMode;

    return-object v0
.end method
