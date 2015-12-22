.class public final enum Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;
.super Ljava/lang/Enum;
.source "SearchAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppListMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;

.field public static final enum FOLDER:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;

.field public static final enum SEARCH:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;

    const-string v1, "SEARCH"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;->SEARCH:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;

    new-instance v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;

    const-string v1, "FOLDER"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;->FOLDER:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;->SEARCH:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;->FOLDER:Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;->$VALUES:[Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;->$VALUES:[Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;

    invoke-virtual {v0}, [Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/launcher/activities/searchapp/SearchAppList$AppListMode;

    return-object v0
.end method
