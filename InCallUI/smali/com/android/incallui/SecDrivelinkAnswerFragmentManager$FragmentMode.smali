.class final enum Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;
.super Ljava/lang/Enum;
.source "SecDrivelinkAnswerFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecDrivelinkAnswerFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FragmentMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;

.field public static final enum DRIVELINK:Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;

.field public static final enum DRIVELINK_MW:Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;

.field public static final enum EMPTY:Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;

.field public static final enum MIRRORLINK:Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;

    const-string v1, "DRIVELINK"

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;->DRIVELINK:Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;

    const-string v1, "DRIVELINK_MW"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;->DRIVELINK_MW:Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;

    const-string v1, "MIRRORLINK"

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;->MIRRORLINK:Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v5}, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;

    sget-object v1, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;->DRIVELINK:Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;->DRIVELINK_MW:Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;->MIRRORLINK:Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;->$VALUES:[Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;
    .locals 1

    const-class v0, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;
    .locals 1

    sget-object v0, Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;->$VALUES:[Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;

    invoke-virtual {v0}, [Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/SecDrivelinkAnswerFragmentManager$FragmentMode;

    return-object v0
.end method
