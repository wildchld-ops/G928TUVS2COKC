.class public Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$Favorites;
.super Ljava/lang/Object;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Favorites"
.end annotation


# static fields
.field public static final APP_WIDGET_ID:Ljava/lang/String; = "appWidgetId"

.field public static final CELLX:Ljava/lang/String; = "cellX"

.field public static final CELLY:Ljava/lang/String; = "cellY"

.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final CONTAINER:Ljava/lang/String; = "container"

.field public static final CONTAINER_ID:Ljava/lang/String; = "containerId"

.field public static final Favorites_AllColumns:[Ljava/lang/String;

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final ICON_MODE:Ljava/lang/String; = "iconMode"

.field public static final ICON_PACKAGE:Ljava/lang/String; = "iconPackage"

.field public static final ICON_RESOURCE:Ljava/lang/String; = "iconResource"

.field public static final ICON_TYPE:Ljava/lang/String; = "iconType"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final INTENT:Ljava/lang/String; = "intent"

.field public static final ITEM_TYPE:Ljava/lang/String; = "itemType"

.field public static final MODIFIED:Ljava/lang/String; = "modified"

.field public static final NEWCUE:Ljava/lang/String; = "newCue"

.field public static final PREVIEW:Ljava/lang/String; = "preview"

.field public static final RESTORED:Ljava/lang/String; = "restored"

.field public static final SHOW:Ljava/lang/String; = "show"

.field public static final SPANX:Ljava/lang/String; = "spanX"

.field public static final SPANY:Ljava/lang/String; = "spanY"

.field public static final SYSTEM_APP:Ljava/lang/String; = "isSystemApp"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final USERID:Ljava/lang/String; = "profileId"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "itemType"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "container"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "containerId"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "cellX"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cellY"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "spanX"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "spanY"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "intent"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "appWidgetId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "iconType"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "iconPackage"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "iconResource"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "icon"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$Favorites;->Favorites_AllColumns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
