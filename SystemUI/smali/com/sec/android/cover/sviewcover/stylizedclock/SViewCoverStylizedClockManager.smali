.class public Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;
.super Ljava/lang/Object;
.source "SViewCoverStylizedClockManager.java"


# static fields
.field private static final LAYOUT_INDEX:I = 0x2

.field private static final LOCK_BG_INDEX:I = 0x3

.field private static final LOCK_CAMERA_INDEX:I = 0x5

.field private static final LOCK_ME_CALL:I = 0x8

.field private static final LOCK_ME_INDEX:I = 0x6

.field private static final LOCK_ME_MESSAGE:I = 0x7

.field private static final LOCK_ME_TEXT_COLOR:I = 0x9

.field private static final LOCK_SETTINGS_INDEX:I = 0x4

.field private static final NAME_INDEX:I = 0x0

.field private static final PREVIEW_INDEX:I = 0x1

.field public static final STYLIZED_CLOCK_DISABLED:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_SINGLE_EVENT_CALL:I = 0x0

.field public static final TYPE_SINGLE_EVENT_MESSAGE:I = 0x1

.field private static mInstance:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mInstance:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mStyles:Ljava/util/List;

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sec/android/sviewcover/R$array;->s_view_cover_stylized_clock_styles:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mStyles:Ljava/util/List;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method

.method private getDrawable(Landroid/content/res/TypedArray;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p3

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mInstance:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mInstance:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    :cond_0
    sget-object v0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mInstance:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    return-object v0
.end method


# virtual methods
.method public getCurrentStyleIndex()I
    .locals 4

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v1

    const-string v2, "com.sec.android.cover.sviewcover.stylizedclock.STYLIZED_CLOCK_STYLE"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mStyles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    sget-object v1, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Style "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not defined, default clock will be disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->setCurrentStyleIndex(I)V

    :cond_0
    sget-object v1, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stylized clock style index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getCurrentStyleLayoutId()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getStyleLayoutId(I)I

    move-result v0

    return v0
.end method

.method public getCurrentStyleLockBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getStyleLockBackgroundDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentStyleLockCameraDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getStyleLockCameraDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentStyleLockMissedEventsDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getStyleLockMissedEventsDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentStyleLockMissedEventsTextColor()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleLockMissedEventsTextColor(I)I

    move-result v0

    return v0
.end method

.method public getCurrentStyleLockMissedEventsTextColor(I)I
    .locals 7

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$color;->sview_cover_wallpaper_title_text_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mStyles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt p1, v4, :cond_1

    sget-object v4, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Style "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not defined"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mStyles:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    if-eqz v2, :cond_2

    const/16 v4, 0x9

    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public getCurrentStyleLockSettingsDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getStyleLockSettingsDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentStyleLockSingleMissedEventsDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleLockSingleMissedEventsDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentStyleLockSingleMissedEventsDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$drawable;->sc_n_lock_circle_ic_missed_call_1:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    const/4 v4, -0x1

    if-ne p1, v4, :cond_2

    move-object v1, v0

    :goto_1
    return-object v1

    :cond_0
    if-ne p2, v6, :cond_1

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$drawable;->sc_n_lock_circle_ic_message_1:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$drawable;->sc_n_lock_circle_ic_message_1:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mStyles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt p1, v4, :cond_3

    sget-object v4, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Style "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not defined"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mStyles:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    if-eqz v2, :cond_4

    if-nez p2, :cond_5

    const/16 v4, 0x8

    invoke-direct {p0, v2, v4, v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getDrawable(Landroid/content/res/TypedArray;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    move-object v1, v0

    goto :goto_1

    :cond_5
    if-ne p2, v6, :cond_6

    invoke-direct {p0, v2, v7, v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getDrawable(Landroid/content/res/TypedArray;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-direct {p0, v2, v7, v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getDrawable(Landroid/content/res/TypedArray;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2
.end method

.method public getCurrentStylePreviewDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getStylePreviewDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentStyleResId()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mStyles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getStyleCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStyleLayoutId(I)I
    .locals 7

    const/4 v4, 0x0

    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    move v0, v4

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mStyles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt p1, v3, :cond_2

    sget-object v3, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Style "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not defined"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mStyles:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method public getStyleLockBackgroundDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 7

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$drawable;->lock_circle_01_default:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mStyles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt p1, v4, :cond_1

    sget-object v4, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Style "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not defined"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mStyles:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v4, 0x3

    invoke-direct {p0, v2, v4, v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getDrawable(Landroid/content/res/TypedArray;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public getStyleLockCameraDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 7

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$drawable;->lock_circle_ic_camera:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mStyles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt p1, v4, :cond_1

    sget-object v4, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Style "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not defined"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mStyles:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v4, 0x5

    invoke-direct {p0, v2, v4, v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getDrawable(Landroid/content/res/TypedArray;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public getStyleLockMissedEventsDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 7

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$drawable;->lock_circle_ic_missed_events:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mStyles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt p1, v4, :cond_1

    sget-object v4, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Style "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not defined"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mStyles:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v4, 0x6

    invoke-direct {p0, v2, v4, v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getDrawable(Landroid/content/res/TypedArray;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public getStyleLockSettingsDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 7

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$drawable;->main_circle_ic_settings:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mStyles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt p1, v4, :cond_1

    sget-object v4, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Style "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not defined"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mStyles:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v4, 0x4

    invoke-direct {p0, v2, v4, v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getDrawable(Landroid/content/res/TypedArray;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public getStylePreviewDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 7

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/android/sviewcover/R$drawable;->digital_clock_preview_none:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mStyles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt p1, v4, :cond_1

    sget-object v4, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Style "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not defined"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mStyles:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4, v0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getDrawable(Landroid/content/res/TypedArray;ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public isAnalogClock()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleIndex()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStylizedClock()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleIndex()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCurrentStyleIndex(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Style "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not defined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New stylized clock style index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v0

    const-string v1, "com.sec.android.cover.sviewcover.stylizedclock.STYLIZED_CLOCK_STYLE"

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method
