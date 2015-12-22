.class public final enum Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;
.super Ljava/lang/Enum;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

.field public static final enum BITMAP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

.field public static final enum RESOURCE:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

.field private static gValues:[Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    const-string v1, "RESOURCE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->RESOURCE:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    new-instance v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    const-string v1, "BITMAP"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->BITMAP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->RESOURCE:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->BITMAP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->$VALUES:[Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->values()[Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->gValues:[Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

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

.method public static fromInt(I)Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->gValues:[Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->$VALUES:[Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    invoke-virtual {v0}, [Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    return-object v0
.end method
