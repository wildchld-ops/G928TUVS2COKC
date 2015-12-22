.class public final enum Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;
.super Ljava/lang/Enum;
.source "AppsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/AppsPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GridSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;

.field public static final enum GRIDSIZE_4X5:Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;

.field public static final enum GRIDSIZE_5x5:Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;

.field private static gValues:[Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;

    const-string v1, "GRIDSIZE_4X5"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;->GRIDSIZE_4X5:Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;

    new-instance v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;

    const-string v1, "GRIDSIZE_5x5"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;->GRIDSIZE_5x5:Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;->GRIDSIZE_4X5:Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;->GRIDSIZE_5x5:Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;->$VALUES:[Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;->values()[Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;->gValues:[Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;

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

.method public static fromInt(I)Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;->gValues:[Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getGridRowColumnCount(Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;[I)[I
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x5

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$35;->$SwitchMap$com$sec$android$app$launcher$activities$AppsPresenter$GridSize:[I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    aput v5, p1, v3

    aput v2, p1, v4

    :goto_0
    return-object p1

    :pswitch_0
    aput v5, p1, v3

    aput v2, p1, v4

    goto :goto_0

    :pswitch_1
    aput v2, p1, v3

    aput v2, p1, v4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;->$VALUES:[Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;

    invoke-virtual {v0}, [Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/launcher/activities/AppsPresenter$GridSize;

    return-object v0
.end method
