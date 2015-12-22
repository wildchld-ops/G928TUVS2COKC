.class public final enum Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;
.super Ljava/lang/Enum;
.source "AppsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/AppsPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

.field public static final enum DEFAULT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

.field public static final enum DISABLED:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

.field public static final enum DOWNLOADED:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

.field public static final enum HIDDEN:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

.field private static gValues:[Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DEFAULT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    new-instance v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    const-string v1, "DOWNLOADED"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DOWNLOADED:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    new-instance v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DISABLED:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    new-instance v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->HIDDEN:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DEFAULT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DOWNLOADED:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->DISABLED:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->HIDDEN:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->$VALUES:[Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->values()[Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->gValues:[Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

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

.method public static fromInt(I)Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->gValues:[Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->$VALUES:[Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    invoke-virtual {v0}, [Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/launcher/activities/AppsPresenter$ListType;

    return-object v0
.end method
