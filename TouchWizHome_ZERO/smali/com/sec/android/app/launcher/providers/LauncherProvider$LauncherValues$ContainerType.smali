.class public final enum Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;
.super Ljava/lang/Enum;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContainerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

.field public static final enum DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

.field public static final enum EDIT_MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

.field public static final enum EVENTTHEME:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

.field public static final enum FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

.field public static final enum HOTSEAT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

.field public static final enum MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

.field private static gValues:[Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    const-string v1, "DESKTOP"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    new-instance v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    const-string v1, "HOTSEAT"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->HOTSEAT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    new-instance v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    const-string v1, "MENU"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    new-instance v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    const-string v1, "FOLDER"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    new-instance v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    const-string v1, "EDIT_MENU"

    invoke-direct {v0, v1, v7}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->EDIT_MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    new-instance v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    const-string v1, "EVENTTHEME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->EVENTTHEME:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->HOTSEAT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->EDIT_MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->EVENTTHEME:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->$VALUES:[Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->values()[Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->gValues:[Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

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

.method public static fromInt(I)Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->gValues:[Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->$VALUES:[Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v0}, [Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    return-object v0
.end method
