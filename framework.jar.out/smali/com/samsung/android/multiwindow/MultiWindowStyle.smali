.class public Lcom/samsung/android/multiwindow/MultiWindowStyle;
.super Ljava/lang/Object;
.source "MultiWindowStyle.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;,
        Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/multiwindow/MultiWindowStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SPECIFIC_TASK_ID:I = -0x1

.field public static final FLOATING_LAYER:I = 0x1

.field public static final MINIMIZE_LAYER:I = 0x2

.field public static final NORMAL_LAYER:I = 0x0

.field public static final NOTIFY_FOCUS_REASON_ACTIVITY_CHANGED:I = 0x1

.field public static final NOTIFY_FOCUS_REASON_FOCUSED_RELAUNCH:I = 0x4

.field public static final NOTIFY_FOCUS_REASON_MASK:I = 0x7

.field public static final NOTIFY_FOCUS_REASON_NO_CHANGED:I = 0x0

.field public static final NOTIFY_FOCUS_REASON_STACK_CHANGED:I = 0x2

.field public static final NOTIFY_REASON_ARRANGE_MINIMIZED:I = 0x2

.field public static final NOTIFY_REASON_ARRANGE_MINIMIZED_ALL:I = 0x8

.field public static final NOTIFY_REASON_ARRANGE_MINIMIZED_SHOW:I = 0x10

.field public static final NOTIFY_REASON_OPTION_SPLIT_RECENT_MULTIWINDOW:I = 0x20

.field public static final NOTIFY_REASON_SELECTIVE_ORIENTATION_CHANGED:I = 0x40

.field public static final NOTIFY_REASON_SIZE_CHANGED:I = 0x1

.field public static final NOTIFY_REASON_STYLE_CHANGED:I = 0x0

.field public static final NOTIFY_REASON_TAB_MODE_CHANGED:I = 0x4

.field public static final NOTIFY_REASON_TYPE_MASK:I = 0xf

.field public static final OPTION_DISABLE_FLOATING_WINDOW:I = 0x8000000

.field public static final OPTION_EXTERNAL_DISP:I = 0x400

.field public static final OPTION_FIXED_ORIENTATION:I = 0x400000

.field public static final OPTION_FIXED_RATIO:I = 0x8000

.field public static final OPTION_FIXED_SIZE:I = 0x10000

.field public static final OPTION_FORCE_CONTROL_RESIZE:I = 0x4000

.field public static final OPTION_FORCE_MAKE_PHONEWINDOW:I = 0x40000

.field public static final OPTION_FORCE_MULTIPLE_TASK:I = 0x80000

.field public static final OPTION_FORCE_TITLE_BAR:I = 0x20

.field public static final OPTION_FULLSCREEN_MINIMIZABLE:I = 0x20000

.field public static final OPTION_FULLSCREEN_ONLY:I = 0x200000

.field public static final OPTION_HIDDEN:I = 0x8

.field public static final OPTION_HIDE_CENTER_BAR_DURING_STARTING:I = 0x2000000

.field public static final OPTION_INHERIT_STACK:I = 0x2000

.field public static final OPTION_ISOLATED_SPLIT:I = 0x1000

.field public static final OPTION_LAUNCH_IN_SAME:I = 0x100000

.field public static final OPTION_MINIMIZED:I = 0x4

.field public static final OPTION_NO_TITLE_BAR:I = 0x10

.field public static final OPTION_PENWINDOWABLE:I = 0x1000000

.field public static final OPTION_PINUP:I = 0x1

.field public static final OPTION_RECENTS_MULTIWINDOW:I = 0x4000000

.field public static final OPTION_RESIZE:I = 0x2

.field public static final OPTION_SCALE:I = 0x800

.field public static final OPTION_TAB_MODE:I = 0x800000

.field public static final OPTION_TOOLKIT:I = 0x200

.field private static final STYLE_ACTIVITY_FORCE_TITLE_BAR:Ljava/lang/String; = "forceTitleBar"

.field private static final STYLE_ACTIVITY_FULLSCREEN_ONLY:Ljava/lang/String; = "fullscreenOnly"

.field private static final STYLE_ACTIVITY_RESIZE_ONLY:Ljava/lang/String; = "resizeOnly"

.field private static final STYLE_FIXED_ORIENTATION:Ljava/lang/String; = "fixedOrientation"

.field private static final STYLE_FIXED_RATIO:Ljava/lang/String; = "fixedRatio"

.field private static final STYLE_FIXED_SIZE:Ljava/lang/String; = "fixedSize"

.field private static final STYLE_FREESTYLE_ONLY:Ljava/lang/String; = "freestyleOnly"

.field private static final STYLE_ISOLATED_SPLIT:Ljava/lang/String; = "isolatedSplit"

.field private static final STYLE_NO_TITLE_BAR:Ljava/lang/String; = "noTitleBar"

.field public static final TYPE_CASCADE:I = 0x2

.field public static final TYPE_NORMAL:I = 0x0

.field public static final TYPE_SPLIT:I = 0x1

.field private static final UNIQUE_OPTIONS:I = 0xd223032

.field private static final UNITARY_OPTIONS:I = 0x200000

.field public static final ZONE_A:I = 0x3

.field public static final ZONE_B:I = 0xc

.field public static final ZONE_C:I = 0x1

.field public static final ZONE_D:I = 0x2

.field public static final ZONE_E:I = 0x4

.field public static final ZONE_F:I = 0x8

.field public static final ZONE_FULL:I = 0xf

.field public static final ZONE_UNKNOWN:I

.field public static sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field public static sDefaultOrientation:I

.field private static sStyleStrings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sTypeStrings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppRequestOrientation:I

.field private mBounds:Landroid/graphics/Rect;

.field private mIsNull:Z

.field private mIsolatedCenterPoint:Landroid/graphics/Point;

.field private mOnTransaction:I

.field private mOptionFlags:I

.field private mScale:F

.field private mSpecificTaskId:I

.field private mType:I

.field private mZone:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    sput v3, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sDefaultOrientation:I

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle$1;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle$1;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sStyleStrings:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sTypeStrings:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sStyleStrings:Ljava/util/HashMap;

    const-string/jumbo v1, "noTitleBar"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sStyleStrings:Ljava/util/HashMap;

    const-string v1, "forceTitleBar"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sStyleStrings:Ljava/util/HashMap;

    const-string/jumbo v1, "isolatedSplit"

    const/16 v2, 0x1000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sStyleStrings:Ljava/util/HashMap;

    const-string v1, "fixedSize"

    const/high16 v2, 0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sStyleStrings:Ljava/util/HashMap;

    const-string v1, "fixedRatio"

    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sStyleStrings:Ljava/util/HashMap;

    const-string v1, "fixedOrientation"

    const/high16 v2, 0x400000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sStyleStrings:Ljava/util/HashMap;

    const-string v1, "fullscreenOnly"

    const/high16 v2, 0x200000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sTypeStrings:Ljava/util/HashMap;

    const-string v1, "freestyleOnly"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle$2;

    invoke-direct {v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle$2;-><init>(I)V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sConstDefaultMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mAppRequestOrientation:I

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOnTransaction:I

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mSpecificTaskId:I

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsNull:Z

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mAppRequestOrientation:I

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOnTransaction:I

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mSpecificTaskId:I

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsNull:Z

    iput p1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mAppRequestOrientation:I

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOnTransaction:I

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mSpecificTaskId:I

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsNull:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mAppRequestOrientation:I

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOnTransaction:I

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mSpecificTaskId:I

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsNull:Z

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mAppRequestOrientation:I

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOnTransaction:I

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mSpecificTaskId:I

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsNull:Z

    iput-boolean p1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsNull:Z

    return-void
.end method

.method public static cleanMultiWindowLaunchInSame(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isMultiWindowLaunchInSame(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    return-void
.end method

.method public static cleanMultiWindowLaunchInSame(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x100000

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto :goto_0
.end method

.method public static convertToConfigurationOrientation(II)I
    .locals 3

    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x5

    if-ne p0, v2, :cond_0

    sget v2, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sDefaultOrientation:I

    if-eqz v2, :cond_0

    sget v2, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sDefaultOrientation:I

    if-ne v2, v0, :cond_2

    const/4 p0, 0x1

    :cond_0
    :goto_0
    if-ne p1, v1, :cond_3

    sparse-switch p0, :sswitch_data_0

    :cond_1
    :goto_1
    return p1

    :cond_2
    const/4 p0, 0x0

    goto :goto_0

    :sswitch_0
    move p1, v0

    goto :goto_1

    :cond_3
    if-ne p1, v0, :cond_1

    sparse-switch p0, :sswitch_data_1

    goto :goto_1

    :sswitch_1
    move p1, v1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_0
        0x9 -> :sswitch_0
        0xc -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1
        0x6 -> :sswitch_1
        0x8 -> :sswitch_1
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method public static convertToOrientation(I)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    const/4 v0, 0x2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isMultiWindowLaunchInSame(Landroid/content/Intent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isMultiWindowLaunchInSame(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v1

    return v1
.end method

.method public static isMultiWindowLaunchInSame(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x100000

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method private parseStyleOptions(Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "\\|"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sStyleStrings:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sStyleStrings:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/2addr v1, v4

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sTypeStrings:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    const/16 v4, 0x800

    invoke-virtual {p0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_3
    sget-object v4, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sTypeStrings:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    goto :goto_1

    :cond_4
    iget v4, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    or-int/2addr v4, v1

    iput v4, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    goto :goto_0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setScale(F)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setSpecificTaskId(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mAppRequestOrientation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sput v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sDefaultOrientation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    :cond_0
    sget-object v0, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    return-void
.end method

.method public static skipMultiWindowLaunch(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Intent;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    :cond_0
    const/high16 v1, 0x100000

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    return-void
.end method

.method public static zoneToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invaild vaue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "ZONE_A"

    goto :goto_0

    :pswitch_2
    const-string v0, "ZONE_B"

    goto :goto_0

    :pswitch_3
    const-string v0, "ZONE_C"

    goto :goto_0

    :pswitch_4
    const-string v0, "ZONE_D"

    goto :goto_0

    :pswitch_5
    const-string v0, "ZONE_E"

    goto :goto_0

    :pswitch_6
    const-string v0, "ZONE_F"

    goto :goto_0

    :pswitch_7
    const-string v0, "ZONE_UNKNOWN"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public convertToMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 2

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;

    invoke-direct {v0, p0, p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatMultiWindowStyle;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    return-object v1
.end method

.method public convertToWindowMode()I
    .locals 4

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    iget v2, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    iget v3, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;III)V

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle$CompatWindowMode;->getCurrentMode()I

    move-result v1

    return v1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    iget v2, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    iget v2, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    iget v2, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    iget-object v2, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mScale:F

    iget v2, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mScale:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method findBaseZone(I)I
    .locals 1

    const/16 v0, 0xf

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/16 v0, 0xf

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xc

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAppRequestOrientation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mAppRequestOrientation:I

    return v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFirstZone()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getIsolatedCenterPoint()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public getLayer()I
    .locals 2

    const/4 v0, 0x2

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    if-ne v1, v0, :cond_1

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOppositeZone()I
    .locals 2

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->findBaseZone(I)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v0

    return v1
.end method

.method public getOptionFlags()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    return v0
.end method

.method public getScale()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mScale:F

    return v0
.end method

.method public getSpecificTaskId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mSpecificTaskId:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    return v0
.end method

.method public getZone()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    return v0
.end method

.method public getZoneByType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0xf

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getZoneLevel()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasUnitaryOption()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCascade()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFakeTarget(I)Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSelective1Orientation(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    sget v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sDefaultOrientation:I

    if-eqz v1, :cond_1

    sget v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sDefaultOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 p1, 0x1

    :cond_1
    :goto_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isInValidZone()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isMultiPhoneWindowNeeded(Landroid/content/pm/ActivityInfo;Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {p0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyle(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNormal()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsNull:Z

    return v0
.end method

.method public isOnTransaction()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOnTransaction:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSplit()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportingMultiWindow()Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public parseStyleOptions(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    .locals 12

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v10, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    const-string v10, "com.sec.android.multiwindow.STYLE"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->parseStyleOptions(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    const-string v10, "com.sec.android.multiwindow.activity.STYLE"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->parseStyleOptions(Ljava/lang/String;)V

    :cond_3
    const/16 v10, 0x1000

    invoke-virtual {p0, v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v0, "com.sec.android.multiwindow.isolatedSplit.centerPoint.portrait.x"

    const-string v1, "com.sec.android.multiwindow.isolatedSplit.centerPoint.portrait.y"

    const-string v10, "com.sec.android.multiwindow.isolatedSplit.centerPoint.portrait.x"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v10, "com.sec.android.multiwindow.isolatedSplit.centerPoint.portrait.y"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    :try_start_0
    iget-object v10, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v10, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    invoke-virtual {v10, v4, v5}, Landroid/graphics/Point;->set(II)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v10

    goto :goto_0

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public releaseOnTransaction()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOnTransaction:I

    return-void
.end method

.method public removeUnitaryOption()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    return-void
.end method

.method public resetSpecificTaskId()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mSpecificTaskId:I

    return-void
.end method

.method public setAppRequestOrientation(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mAppRequestOrientation:I

    :cond_0
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rect is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public setIsolatedCenterPoint(Landroid/graphics/Point;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public setNull(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsNull:Z

    return-void
.end method

.method public setOnTransaction()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOnTransaction:I

    return-void
.end method

.method public setOption(II)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    return-void
.end method

.method public setOption(IZ)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    :cond_0
    return-void
.end method

.method public setScale(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mScale:F

    return-void
.end method

.method public setSpecificTaskId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mSpecificTaskId:I

    return-void
.end method

.method public setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    return-void
.end method

.method public setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    iget v1, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    iget v1, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mScale:F

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mScale:F

    if-nez p2, :cond_1

    iget v1, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_5

    :cond_1
    iget v1, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    and-int/lit16 v1, v1, -0x4001

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    :goto_1
    iget-object v1, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    :cond_2
    iget-object v1, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    if-eqz v1, :cond_3

    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    invoke-direct {v1, v2}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    :cond_3
    if-eqz p2, :cond_4

    iget v1, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mAppRequestOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    iget v1, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mAppRequestOrientation:I

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mAppRequestOrientation:I

    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsNull:Z

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    const/high16 v2, 0x200000

    and-int v0, v1, v2

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    const v2, 0xd223032

    and-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    iget v2, p1, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    const v3, -0xd223033

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    const v2, -0x200001

    and-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    goto :goto_1
.end method

.method public setType(I)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    :cond_0
    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    const v1, 0xd223032

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    return-void
.end method

.method public setType(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    goto :goto_0
.end method

.method public setZone(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    return-void
.end method

.method public shouldFakeCoordinate(Landroid/app/Activity;Landroid/view/MotionEvent;)Z
    .locals 16

    if-eqz p1, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSelective2Orientation(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    if-nez v12, :cond_3

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v2, v12, Landroid/content/res/Configuration;->orientation:I

    const-string/jumbo v12, "multiwindow_facade"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/4 v9, 0x0

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget v9, v4, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v10, v8, v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRealSize(Landroid/graphics/Rect;Landroid/view/DisplayInfo;)Z

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v7, v12, v13}, Landroid/graphics/Point;->set(II)V

    :cond_4
    if-eqz v9, :cond_5

    const/4 v12, 0x2

    if-ne v9, v12, :cond_7

    :cond_5
    const/4 v6, 0x1

    :goto_1
    if-eqz p2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v12

    if-eqz v12, :cond_0

    if-eq v2, v6, :cond_0

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v12, 0x1

    if-ne v6, v12, :cond_8

    const/high16 v3, -0x3d4c0000    # -90.0f

    :cond_6
    :goto_2
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    new-instance v5, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget v14, v7, Landroid/graphics/Point;->x:I

    iget v15, v7, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v12

    neg-int v12, v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v13

    neg-int v13, v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v11, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v6, 0x2

    goto :goto_1

    :cond_8
    const/4 v12, 0x3

    if-ne v9, v12, :cond_6

    const/high16 v3, -0x3d4c0000    # -90.0f

    goto :goto_2
.end method

.method public shouldFakeOrientation(IILandroid/graphics/Rect;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSelective1Orientation(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->convertToConfigurationOrientation(II)I

    move-result v3

    if-eq v3, p2, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz p3, :cond_0

    if-eqz v0, :cond_0

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    iput v2, p3, Landroid/graphics/Rect;->left:I

    iput v1, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iput v2, p3, Landroid/graphics/Rect;->right:I

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", zone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->zoneToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", option=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%08x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isNull="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNull()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isolatedCenterPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", specificTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mSpecificTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mAppRequestOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, ", or="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mAppRequestOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mZone:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mSpecificTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mOptionFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mAppRequestOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->sDefaultOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowStyle;->mIsolatedCenterPoint:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
