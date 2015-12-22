.class public final enum Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;
.super Ljava/lang/Enum;
.source "HomePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PageInsertPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

.field public static final enum AFTER_CURRENT:Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

.field public static final enum BEFORE_CURRENT:Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

.field public static final enum FIRST:Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

.field public static final enum LAST:Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

    const-string v1, "FIRST"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;->FIRST:Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

    const-string v1, "BEFORE_CURRENT"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;->BEFORE_CURRENT:Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

    const-string v1, "AFTER_CURRENT"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;->AFTER_CURRENT:Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

    new-instance v0, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

    const-string v1, "LAST"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;->LAST:Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;->FIRST:Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;->BEFORE_CURRENT:Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;->AFTER_CURRENT:Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;->LAST:Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;->$VALUES:[Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;->$VALUES:[Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

    invoke-virtual {v0}, [Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

    return-object v0
.end method
