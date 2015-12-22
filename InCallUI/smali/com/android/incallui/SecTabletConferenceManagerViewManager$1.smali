.class synthetic Lcom/android/incallui/SecTabletConferenceManagerViewManager$1;
.super Ljava/lang/Object;
.source "SecTabletConferenceManagerViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecTabletConferenceManagerViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$incallui$SecTabletConferenceManagerViewManager$FragmentMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/SecTabletConferenceManagerViewManager$FragmentMode;->values()[Lcom/android/incallui/SecTabletConferenceManagerViewManager$FragmentMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/incallui/SecTabletConferenceManagerViewManager$1;->$SwitchMap$com$android$incallui$SecTabletConferenceManagerViewManager$FragmentMode:[I

    :try_start_0
    sget-object v0, Lcom/android/incallui/SecTabletConferenceManagerViewManager$1;->$SwitchMap$com$android$incallui$SecTabletConferenceManagerViewManager$FragmentMode:[I

    sget-object v1, Lcom/android/incallui/SecTabletConferenceManagerViewManager$FragmentMode;->DEFAULT:Lcom/android/incallui/SecTabletConferenceManagerViewManager$FragmentMode;

    invoke-virtual {v1}, Lcom/android/incallui/SecTabletConferenceManagerViewManager$FragmentMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
