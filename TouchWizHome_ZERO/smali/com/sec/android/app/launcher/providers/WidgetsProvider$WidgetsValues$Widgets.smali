.class public Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsValues$Widgets;
.super Ljava/lang/Object;
.source "WidgetsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Widgets"
.end annotation


# static fields
.field public static final COMPONENT_NAME:Ljava/lang/String; = "componentName"

.field public static final CONTAINER_ID:Ljava/lang/String; = "container_id"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final PROJ_FULL:[Ljava/lang/String;

.field public static final SHORTCUT:Ljava/lang/String; = "shortcut"

.field public static final SPAN_X:Ljava/lang/String; = "spanX"

.field public static final SPAN_Y:Ljava/lang/String; = "spanY"

.field public static final THEME_NAME:Ljava/lang/String; = "themeName"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final USERID:Ljava/lang/String; = "profileId"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "shortcut"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "spanX"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "spanY"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "componentName"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "container_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "themeName"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "profileId"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsValues$Widgets;->PROJ_FULL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
