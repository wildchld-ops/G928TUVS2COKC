.class final enum Lcom/android/incallui/SecTabletDialpadViewManager$FragmentMode;
.super Ljava/lang/Enum;
.source "SecTabletDialpadViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecTabletDialpadViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FragmentMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/SecTabletDialpadViewManager$FragmentMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/SecTabletDialpadViewManager$FragmentMode;

.field public static final enum DEFAULT:Lcom/android/incallui/SecTabletDialpadViewManager$FragmentMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/android/incallui/SecTabletDialpadViewManager$FragmentMode;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/SecTabletDialpadViewManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecTabletDialpadViewManager$FragmentMode;->DEFAULT:Lcom/android/incallui/SecTabletDialpadViewManager$FragmentMode;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/incallui/SecTabletDialpadViewManager$FragmentMode;

    sget-object v1, Lcom/android/incallui/SecTabletDialpadViewManager$FragmentMode;->DEFAULT:Lcom/android/incallui/SecTabletDialpadViewManager$FragmentMode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/incallui/SecTabletDialpadViewManager$FragmentMode;->$VALUES:[Lcom/android/incallui/SecTabletDialpadViewManager$FragmentMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/SecTabletDialpadViewManager$FragmentMode;
    .locals 1

    const-class v0, Lcom/android/incallui/SecTabletDialpadViewManager$FragmentMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecTabletDialpadViewManager$FragmentMode;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/SecTabletDialpadViewManager$FragmentMode;
    .locals 1

    sget-object v0, Lcom/android/incallui/SecTabletDialpadViewManager$FragmentMode;->$VALUES:[Lcom/android/incallui/SecTabletDialpadViewManager$FragmentMode;

    invoke-virtual {v0}, [Lcom/android/incallui/SecTabletDialpadViewManager$FragmentMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/SecTabletDialpadViewManager$FragmentMode;

    return-object v0
.end method
