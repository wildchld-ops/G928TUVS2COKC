.class public final enum Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;
.super Ljava/lang/Enum;
.source "AppsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/AppsPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

.field public static final enum EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

.field public static final enum HIDE:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

.field public static final enum NORMAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

.field public static final enum SELECT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

.field public static final enum UNINSTALL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

.field private static gValues:[Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->NORMAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    new-instance v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    const-string v1, "EDIT"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    new-instance v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    const-string v1, "UNINSTALL"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->UNINSTALL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    new-instance v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    const-string v1, "HIDE"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->HIDE:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    new-instance v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    const-string v1, "SELECT"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->SELECT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->NORMAL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->EDIT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->UNINSTALL:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->HIDE:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->SELECT:Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->$VALUES:[Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->values()[Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->gValues:[Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

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

.method public static fromInt(I)Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->gValues:[Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->$VALUES:[Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    invoke-virtual {v0}, [Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/launcher/activities/AppsPresenter$ListMode;

    return-object v0
.end method
