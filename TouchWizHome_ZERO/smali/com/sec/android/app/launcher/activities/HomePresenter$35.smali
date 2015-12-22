.class synthetic Lcom/sec/android/app/launcher/activities/HomePresenter$35;
.super Ljava/lang/Object;
.source "HomePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/HomePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sec$android$app$launcher$activities$HomePresenter$GridSize:[I

.field static final synthetic $SwitchMap$com$sec$android$app$launcher$activities$HomePresenter$PageInsertPosition:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/HomePresenter$GridSize;->values()[Lcom/sec/android/app/launcher/activities/HomePresenter$GridSize;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/launcher/activities/HomePresenter$35;->$SwitchMap$com$sec$android$app$launcher$activities$HomePresenter$GridSize:[I

    :try_start_0
    sget-object v0, Lcom/sec/android/app/launcher/activities/HomePresenter$35;->$SwitchMap$com$sec$android$app$launcher$activities$HomePresenter$GridSize:[I

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomePresenter$GridSize;->DEFAULT:Lcom/sec/android/app/launcher/activities/HomePresenter$GridSize;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter$GridSize;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sec/android/app/launcher/activities/HomePresenter$35;->$SwitchMap$com$sec$android$app$launcher$activities$HomePresenter$GridSize:[I

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomePresenter$GridSize;->GRIDSIZE_4X5:Lcom/sec/android/app/launcher/activities/HomePresenter$GridSize;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter$GridSize;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v0, Lcom/sec/android/app/launcher/activities/HomePresenter$35;->$SwitchMap$com$sec$android$app$launcher$activities$HomePresenter$GridSize:[I

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomePresenter$GridSize;->GRIDSIZE_5x5:Lcom/sec/android/app/launcher/activities/HomePresenter$GridSize;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter$GridSize;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    invoke-static {}, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;->values()[Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sec/android/app/launcher/activities/HomePresenter$35;->$SwitchMap$com$sec$android$app$launcher$activities$HomePresenter$PageInsertPosition:[I

    :try_start_3
    sget-object v0, Lcom/sec/android/app/launcher/activities/HomePresenter$35;->$SwitchMap$com$sec$android$app$launcher$activities$HomePresenter$PageInsertPosition:[I

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;->FIRST:Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v0, Lcom/sec/android/app/launcher/activities/HomePresenter$35;->$SwitchMap$com$sec$android$app$launcher$activities$HomePresenter$PageInsertPosition:[I

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;->BEFORE_CURRENT:Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v0, Lcom/sec/android/app/launcher/activities/HomePresenter$35;->$SwitchMap$com$sec$android$app$launcher$activities$HomePresenter$PageInsertPosition:[I

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;->AFTER_CURRENT:Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v0, Lcom/sec/android/app/launcher/activities/HomePresenter$35;->$SwitchMap$com$sec$android$app$launcher$activities$HomePresenter$PageInsertPosition:[I

    sget-object v1, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;->LAST:Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomePresenter$PageInsertPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    return-void

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_0
.end method
