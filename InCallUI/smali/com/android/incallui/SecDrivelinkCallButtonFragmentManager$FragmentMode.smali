.class final enum Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;
.super Ljava/lang/Enum;
.source "SecDrivelinkCallButtonFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FragmentMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

.field public static final enum DRIVELINK:Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

.field public static final enum DRIVELINK_ENDCALL:Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

.field public static final enum DRIVELINK_ENDCALL_MW:Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

.field public static final enum DRIVELINK_MW:Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

.field public static final enum EMPTY:Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

.field public static final enum MIRRORLINK:Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

    const-string v1, "DRIVELINK"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;->DRIVELINK:Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

    const-string v1, "DRIVELINK_MW"

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;->DRIVELINK_MW:Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

    const-string v1, "DRIVELINK_ENDCALL"

    invoke-direct {v0, v1, v5}, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;->DRIVELINK_ENDCALL:Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

    const-string v1, "DRIVELINK_ENDCALL_MW"

    invoke-direct {v0, v1, v6}, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;->DRIVELINK_ENDCALL_MW:Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

    const-string v1, "MIRRORLINK"

    invoke-direct {v0, v1, v7}, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;->MIRRORLINK:Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

    const-string v1, "EMPTY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

    sget-object v1, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;->DRIVELINK:Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;->DRIVELINK_MW:Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;->DRIVELINK_ENDCALL:Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;->DRIVELINK_ENDCALL_MW:Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;->MIRRORLINK:Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;->$VALUES:[Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;
    .locals 1

    const-class v0, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;
    .locals 1

    sget-object v0, Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;->$VALUES:[Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

    invoke-virtual {v0}, [Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/SecDrivelinkCallButtonFragmentManager$FragmentMode;

    return-object v0
.end method
