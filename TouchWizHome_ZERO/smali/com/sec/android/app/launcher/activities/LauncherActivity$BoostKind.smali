.class final enum Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;
.super Ljava/lang/Enum;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BoostKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

.field public static final enum ASYNCRONOUS:Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

.field public static final enum DELAYED:Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

.field public static final enum DISABLED:Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

.field public static final enum INLINE:Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

.field private static gValues:[Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;->DISABLED:Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

    new-instance v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

    const-string v1, "INLINE"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;->INLINE:Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

    new-instance v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

    const-string v1, "DELAYED"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;->DELAYED:Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

    new-instance v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

    const-string v1, "ASYNCRONOUS"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;->ASYNCRONOUS:Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

    sget-object v1, Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;->DISABLED:Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;->INLINE:Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;->DELAYED:Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;->ASYNCRONOUS:Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;->$VALUES:[Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;->values()[Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;->gValues:[Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

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

.method public static fromInt(I)Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;->gValues:[Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;->$VALUES:[Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

    invoke-virtual {v0}, [Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/launcher/activities/LauncherActivity$BoostKind;

    return-object v0
.end method
