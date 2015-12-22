.class public final enum Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;
.super Ljava/lang/Enum;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/theme/ThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThemeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

.field public static final enum APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

.field public static final enum BADGE:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

.field public static final enum DEFAULT:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

.field public static final enum EVENT:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

.field public static final enum HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

.field public static final enum WINSET:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->DEFAULT:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    new-instance v0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v5, v5}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    new-instance v0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    const-string v1, "APP_ICON"

    invoke-direct {v0, v1, v6, v6}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    new-instance v0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    const-string v1, "EVENT"

    invoke-direct {v0, v1, v7, v7}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->EVENT:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    new-instance v0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    const-string v1, "WINSET"

    invoke-direct {v0, v1, v8, v8}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->WINSET:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    new-instance v0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    const-string v1, "BADGE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->BADGE:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    sget-object v1, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->DEFAULT:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->HOME:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->EVENT:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->WINSET:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->BADGE:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->$VALUES:[Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->$VALUES:[Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v0}, [Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value:I

    return v0
.end method
