.class public Lcom/sec/android/app/launcher/views/LiveCalendarView;
.super Lcom/sec/android/app/launcher/views/LiveView;
.source "LiveCalendarView.java"


# static fields
.field private static final INVALID_DAY_DATE:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field private static final arabicNumberArray:[C

.field private static final dateIndexArray:[I

.field private static final dateIndexArray_en:[I

.field private static final farsiNumberArray:[C


# instance fields
.field private mBg:Lcom/sec/daliviews/views/ImageView;

.field private mContext:Landroid/content/Context;

.field private mDate:Lcom/sec/daliviews/views/TextView;

.field private mDateWeek:I

.field private mDateWeek_Apps:I

.field private mDate_3row_infolder:Lcom/sec/daliviews/views/TextView;

.field private mDate_5column:Lcom/sec/daliviews/views/TextView;

.field private mDate_Apps:Lcom/sec/daliviews/views/TextView;

.field private mDate_infolder:Lcom/sec/daliviews/views/TextView;

.field private mDayMonth:I

.field private mDayMonth_Apps:I

.field private mIconView:Lcom/sec/android/app/launcher/views/HomeItemView;

.field private mMode:I

.field private mText:Lcom/sec/daliviews/views/TextView;

.field private mText_3row_folder:Lcom/sec/daliviews/views/TextView;

.field private mText_5column:Lcom/sec/daliviews/views/TextView;

.field private mText_Apps:Lcom/sec/daliviews/views/TextView;

.field private mText_folder:Lcom/sec/daliviews/views/TextView;

.field private tf:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0xa

    const/4 v1, 0x7

    const-class v0, Lcom/sec/android/app/launcher/views/LiveCalendarView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->TAG:Ljava/lang/String;

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->dateIndexArray:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->dateIndexArray_en:[I

    new-array v0, v2, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->arabicNumberArray:[C

    new-array v0, v2, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->farsiNumberArray:[C

    return-void

    :array_0
    .array-data 4
        0x7f0d000b
        0x7f0d0006
        0x7f0d000f
        0x7f0d0011
        0x7f0d000d
        0x7f0d0004
        0x7f0d0008
    .end array-data

    :array_1
    .array-data 4
        0x7f0d000a
        0x7f0d0005
        0x7f0d000e
        0x7f0d0010
        0x7f0d000c
        0x7f0d0003
        0x7f0d0007
    .end array-data

    :array_2
    .array-data 2
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
    .end array-data

    :array_3
    .array-data 2
        0x660s
        0x661s
        0x662s
        0x663s
        0x6f4s
        0x6f5s
        0x6f6s
        0x667s
        0x668s
        0x669s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/views/LiveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mBg:Lcom/sec/daliviews/views/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText:Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_Apps:Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_folder:Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_3row_folder:Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_5column:Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate:Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_Apps:Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_5column:Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_infolder:Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_3row_infolder:Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->tf:Landroid/graphics/Typeface;

    iput v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDateWeek:I

    iput v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDateWeek_Apps:I

    iput v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDayMonth:I

    iput v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDayMonth_Apps:I

    iput v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mMode:I

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private ChangeCalendarText_ForPhilippe(IZ)V
    .locals 8

    const v7, 0x7f0b00e0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v3

    const/4 v2, 0x5

    if-eqz p2, :cond_0

    const/4 v2, 0x4

    :goto_0
    instance-of v4, v3, Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/sec/android/app/launcher/views/LiveCalendarView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " HomePresenter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v7, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mIconView:Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/views/HomeItemView;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->getAdapter()Lcom/sec/daliviews/views/Adapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/daliviews/views/Adapter;->getCount()I

    move-result v1

    if-ge v1, v2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDay_infolder()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDate_infolder()V

    :goto_1
    return-void

    :cond_0
    const/4 v2, 0x5

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDay_3row_folder()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDate_3row_folder()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDate()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDay()V

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/sec/android/app/launcher/views/LiveCalendarView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AppsPresenter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v7, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDay_infolder()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDate_infolder()V

    goto :goto_1

    :cond_4
    const v4, 0x7f0b00e4

    if-ne p1, v4, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDate_Apps()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDay_Apps()V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDate()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDay()V

    goto :goto_1
.end method

.method private Date_3row_folder_Clear()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_3row_infolder:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_3row_infolder:Lcom/sec/daliviews/views/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_3row_infolder:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method private Date_5column_Clear()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_5column:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_5column:Lcom/sec/daliviews/views/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_5column:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method private Date_Apps_Clear()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_Apps:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_Apps:Lcom/sec/daliviews/views/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_Apps:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method private Date_Clear()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate:Lcom/sec/daliviews/views/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method private Date_folder_Clear()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_infolder:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_infolder:Lcom/sec/daliviews/views/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_infolder:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method private Day_Date_Clear()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDateWeek:I

    iput v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDateWeek_Apps:I

    iput v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDayMonth:I

    iput v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDayMonth_Apps:I

    return-void
.end method

.method private Text_3row_folder_Clear()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_3row_folder:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_3row_folder:Lcom/sec/daliviews/views/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_3row_folder:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method private Text_5column_Clear()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_5column:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_5column:Lcom/sec/daliviews/views/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_5column:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method private Text_Apps_Clear()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_Apps:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_Apps:Lcom/sec/daliviews/views/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_Apps:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method private Text_Clear()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText:Lcom/sec/daliviews/views/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method private Text_folder_Clear()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_folder:Lcom/sec/daliviews/views/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_folder:Lcom/sec/daliviews/views/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_folder:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method private getDateView()Lcom/sec/daliviews/views/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate:Lcom/sec/daliviews/views/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0b00b9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate:Lcom/sec/daliviews/views/TextView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate:Lcom/sec/daliviews/views/TextView;

    return-object v0
.end method

.method private getDateView_3row_infolder()Lcom/sec/daliviews/views/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_3row_infolder:Lcom/sec/daliviews/views/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0b00bd

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_3row_infolder:Lcom/sec/daliviews/views/TextView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_3row_infolder:Lcom/sec/daliviews/views/TextView;

    return-object v0
.end method

.method private getDateView_5column()Lcom/sec/daliviews/views/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_5column:Lcom/sec/daliviews/views/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0b00bb

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_5column:Lcom/sec/daliviews/views/TextView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_5column:Lcom/sec/daliviews/views/TextView;

    return-object v0
.end method

.method private getDateView_Apps()Lcom/sec/daliviews/views/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_Apps:Lcom/sec/daliviews/views/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0b00ba

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_Apps:Lcom/sec/daliviews/views/TextView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_Apps:Lcom/sec/daliviews/views/TextView;

    return-object v0
.end method

.method private getDateView_infolder()Lcom/sec/daliviews/views/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_infolder:Lcom/sec/daliviews/views/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0b00bc

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/TextView;

    iput-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_infolder:Lcom/sec/daliviews/views/TextView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_infolder:Lcom/sec/daliviews/views/TextView;

    return-object v0
.end method

.method private getTextView()Lcom/sec/daliviews/views/TextView;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mBg:Lcom/sec/daliviews/views/ImageView;

    if-nez v1, :cond_0

    const v1, 0x7f0b00b8

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mBg:Lcom/sec/daliviews/views/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mBg:Lcom/sec/daliviews/views/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mBg:Lcom/sec/daliviews/views/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/ImageView;->setPremultiplied(Z)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText:Lcom/sec/daliviews/views/TextView;

    if-nez v1, :cond_1

    const v1, 0x7f0b00be

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/TextView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText:Lcom/sec/daliviews/views/TextView;

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->tf:Landroid/graphics/Typeface;

    if-nez v1, :cond_2

    const-string v1, "/system/fonts/SamsungNeoNum-3R.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->tf:Landroid/graphics/Typeface;

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText:Lcom/sec/daliviews/views/TextView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->tf:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText:Lcom/sec/daliviews/views/TextView;

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    sget-object v1, Lcom/sec/android/app/launcher/views/LiveCalendarView;->TAG:Ljava/lang/String;

    const-string v2, "System font is not enable."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getTextView_3row_folder()Lcom/sec/daliviews/views/TextView;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_3row_folder:Lcom/sec/daliviews/views/TextView;

    if-nez v1, :cond_0

    const v1, 0x7f0b00c2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/TextView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_3row_folder:Lcom/sec/daliviews/views/TextView;

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->tf:Landroid/graphics/Typeface;

    if-nez v1, :cond_1

    const-string v1, "/system/fonts/SamsungNeoNum-3R.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->tf:Landroid/graphics/Typeface;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_3row_folder:Lcom/sec/daliviews/views/TextView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->tf:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_3row_folder:Lcom/sec/daliviews/views/TextView;

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    sget-object v1, Lcom/sec/android/app/launcher/views/LiveCalendarView;->TAG:Ljava/lang/String;

    const-string v2, "System font is not enable."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getTextView_5column()Lcom/sec/daliviews/views/TextView;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_5column:Lcom/sec/daliviews/views/TextView;

    if-nez v1, :cond_0

    const v1, 0x7f0b00c0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/TextView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_5column:Lcom/sec/daliviews/views/TextView;

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->tf:Landroid/graphics/Typeface;

    if-nez v1, :cond_1

    const-string v1, "/system/fonts/SamsungNeoNum-3R.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->tf:Landroid/graphics/Typeface;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_5column:Lcom/sec/daliviews/views/TextView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->tf:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_5column:Lcom/sec/daliviews/views/TextView;

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    sget-object v1, Lcom/sec/android/app/launcher/views/LiveCalendarView;->TAG:Ljava/lang/String;

    const-string v2, "System font is not enable."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getTextView_Apps()Lcom/sec/daliviews/views/TextView;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_Apps:Lcom/sec/daliviews/views/TextView;

    if-nez v1, :cond_0

    const v1, 0x7f0b00bf

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/TextView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_Apps:Lcom/sec/daliviews/views/TextView;

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->tf:Landroid/graphics/Typeface;

    if-nez v1, :cond_1

    const-string v1, "/system/fonts/SamsungNeoNum-3R.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->tf:Landroid/graphics/Typeface;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_Apps:Lcom/sec/daliviews/views/TextView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->tf:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_Apps:Lcom/sec/daliviews/views/TextView;

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    sget-object v1, Lcom/sec/android/app/launcher/views/LiveCalendarView;->TAG:Ljava/lang/String;

    const-string v2, "System font is not enable."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getTextView_folder()Lcom/sec/daliviews/views/TextView;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_folder:Lcom/sec/daliviews/views/TextView;

    if-nez v1, :cond_0

    const v1, 0x7f0b00c1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->findViewById(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/TextView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_folder:Lcom/sec/daliviews/views/TextView;

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->tf:Landroid/graphics/Typeface;

    if-nez v1, :cond_1

    const-string v1, "/system/fonts/SamsungNeoNum-3R.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->tf:Landroid/graphics/Typeface;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_folder:Lcom/sec/daliviews/views/TextView;

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->tf:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_folder:Lcom/sec/daliviews/views/TextView;

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    sget-object v1, Lcom/sec/android/app/launcher/views/LiveCalendarView;->TAG:Ljava/lang/String;

    const-string v2, "System font is not enable."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ar"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/android/app/launcher/views/LiveCalendarView;->arabicNumberArray:[C

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "fa"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/app/launcher/views/LiveCalendarView;->farsiNumberArray:[C

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private updateDate()V
    .locals 6

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->getDateView()Lcom/sec/daliviews/views/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDateWeek:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDateWeek:I

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/sec/android/app/launcher/views/LiveCalendarView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDate() date : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Text_folder_Clear()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Date_folder_Clear()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Date_3row_folder_Clear()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Text_3row_folder_Clear()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Date_Apps_Clear()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Date_5column_Clear()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Text_5column_Clear()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ko"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ja"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate:Lcom/sec/daliviews/views/TextView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/launcher/views/LiveCalendarView;->dateIndexArray:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    iput v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDateWeek:I

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/views/LiveCalendarView;->dateIndexArray_en:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2, v1}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateDate_3row_folder()V
    .locals 6

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->getDateView_3row_infolder()Lcom/sec/daliviews/views/TextView;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget-object v2, Lcom/sec/android/app/launcher/views/LiveCalendarView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDate_3row_folder : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Date_Apps_Clear()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Date_5column_Clear()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Text_5column_Clear()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Date_folder_Clear()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ko"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ja"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_3row_infolder:Lcom/sec/daliviews/views/TextView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/launcher/views/LiveCalendarView;->dateIndexArray:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_3row_infolder:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    iput v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDateWeek:I

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/views/LiveCalendarView;->dateIndexArray_en:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_3row_infolder:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2, v1}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateDate_5column()V
    .locals 6

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->getDateView_5column()Lcom/sec/daliviews/views/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDateWeek_Apps:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDateWeek_Apps:I

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/sec/android/app/launcher/views/LiveCalendarView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDate_5column() date : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Text_folder_Clear()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Date_folder_Clear()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Date_3row_folder_Clear()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Text_3row_folder_Clear()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Date_Clear()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ko"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ja"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_5column:Lcom/sec/daliviews/views/TextView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/launcher/views/LiveCalendarView;->dateIndexArray:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_5column:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    iput v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDateWeek_Apps:I

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/views/LiveCalendarView;->dateIndexArray_en:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_5column:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2, v1}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateDate_Apps()V
    .locals 6

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->getDateView_Apps()Lcom/sec/daliviews/views/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDateWeek_Apps:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDateWeek_Apps:I

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/sec/android/app/launcher/views/LiveCalendarView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDate_Apps() date : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Text_folder_Clear()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Text_3row_folder_Clear()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Date_Clear()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ko"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ja"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_Apps:Lcom/sec/daliviews/views/TextView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/launcher/views/LiveCalendarView;->dateIndexArray:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_Apps:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    iput v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDateWeek_Apps:I

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/views/LiveCalendarView;->dateIndexArray_en:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_Apps:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2, v1}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateDate_infolder()V
    .locals 6

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->getDateView_infolder()Lcom/sec/daliviews/views/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDateWeek:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDateWeek:I

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/sec/android/app/launcher/views/LiveCalendarView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDate_infolder : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Date_Apps_Clear()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Date_5column_Clear()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Text_5column_Clear()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Date_3row_folder_Clear()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Text_3row_folder_Clear()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ko"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ja"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_infolder:Lcom/sec/daliviews/views/TextView;

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/launcher/views/LiveCalendarView;->dateIndexArray:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_infolder:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    iput v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDateWeek:I

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/views/LiveCalendarView;->dateIndexArray_en:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDate_infolder:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v2, v1}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateDay()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->getTextView()Lcom/sec/daliviews/views/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDayMonth:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDayMonth:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Text_Apps_Clear()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText:Lcom/sec/daliviews/views/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    iput v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDayMonth:I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText:Lcom/sec/daliviews/views/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateDay_3row_folder()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->getTextView_3row_folder()Lcom/sec/daliviews/views/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Date_Clear()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Text_Clear()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Text_Apps_Clear()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Date_Apps_Clear()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Text_folder_Clear()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_3row_folder:Lcom/sec/daliviews/views/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_3row_folder:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_3row_folder:Lcom/sec/daliviews/views/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateDay_5column()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->getTextView_5column()Lcom/sec/daliviews/views/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDayMonth_Apps:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDayMonth_Apps:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Text_Clear()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_5column:Lcom/sec/daliviews/views/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_5column:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    iput v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDayMonth_Apps:I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_5column:Lcom/sec/daliviews/views/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateDay_Apps()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->getTextView_Apps()Lcom/sec/daliviews/views/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDayMonth_Apps:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDayMonth_Apps:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Text_Clear()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_Apps:Lcom/sec/daliviews/views/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_Apps:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    iput v0, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDayMonth_Apps:I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_Apps:Lcom/sec/daliviews/views/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateDay_infolder()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->getTextView_folder()Lcom/sec/daliviews/views/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Date_Clear()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Text_Clear()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Text_Apps_Clear()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Date_Apps_Clear()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Text_3row_folder_Clear()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Date_3row_folder_Clear()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_folder:Lcom/sec/daliviews/views/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_folder:Lcom/sec/daliviews/views/TextView;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/TextView;->invalidate()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText_folder:Lcom/sec/daliviews/views/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/daliviews/views/TextView;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public changeMode(I)V
    .locals 12

    sget-object v9, Lcom/sec/android/app/launcher/views/LiveCalendarView;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "changeMode()"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/views/LiveView;->setDefaultMode(I)V

    const v7, 0x7f0a014a

    const v9, 0x7f0b00e0

    if-ne p1, v9, :cond_2

    const v7, 0x7f0a0149

    :cond_0
    :goto_0
    const/4 v9, -0x1

    iput v9, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDateWeek:I

    const/4 v9, -0x1

    iput v9, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDateWeek_Apps:I

    const/4 v9, -0x1

    iput v9, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDayMonth:I

    const/4 v9, -0x1

    iput v9, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDayMonth_Apps:I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->getTextView()Lcom/sec/daliviews/views/TextView;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText:Lcom/sec/daliviews/views/TextView;

    float-to-int v10, v8

    invoke-virtual {v9, v10}, Lcom/sec/daliviews/views/TextView;->setTextSize(I)V

    :cond_1
    sget-boolean v9, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUsePhilippe:Z

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    invoke-direct {p0, p1, v9}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->ChangeCalendarText_ForPhilippe(IZ)V

    :goto_1
    return-void

    :cond_2
    const v9, 0x7f0b00db

    if-ne p1, v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mIconView:Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/views/HomeItemView;->getCurrentMode()I

    move-result v9

    const v10, 0x7f0b00d8

    if-eq v9, v10, :cond_0

    const v7, 0x7f0a014b

    goto :goto_0

    :cond_3
    const v9, 0x7f0b00e0

    if-ne p1, v9, :cond_5

    iget-object v9, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mIconView:Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/views/HomeItemView;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->getAdapter()Lcom/sec/daliviews/views/Adapter;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/daliviews/views/Adapter;->getCount()I

    move-result v5

    const/4 v9, 0x5

    if-ge v5, v9, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDay_infolder()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDate_infolder()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDay_3row_folder()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDate_3row_folder()V

    goto :goto_1

    :cond_5
    const v9, 0x7f0b00dd

    if-eq p1, v9, :cond_6

    const v9, 0x7f0b00df

    if-ne p1, v9, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDate_Apps()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDay_Apps()V

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v6

    instance-of v9, v6, Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v9, :cond_a

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getHomePageColumns()I

    move-result v3

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getHomePageRows()I

    move-result v4

    mul-int v9, v3, v4

    const/16 v10, 0x14

    if-lt v9, v10, :cond_9

    const v9, 0x7f0b00d7

    if-eq p1, v9, :cond_8

    const v9, 0x7f0b00d8

    if-ne p1, v9, :cond_9

    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDate_5column()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDay_5column()V

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDate()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDay()V

    goto/16 :goto_1

    :cond_a
    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getHomePageColumns()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getHomePageRows()I

    move-result v1

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->supportDefaultHomeOnlyMode()Z

    move-result v9

    if-nez v9, :cond_b

    mul-int v9, v0, v1

    const/16 v10, 0x14

    if-le v9, v10, :cond_c

    :cond_b
    const v9, 0x7f0b00e1

    if-eq p1, v9, :cond_c

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDate_5column()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDay_5column()V

    goto/16 :goto_1

    :cond_c
    const v7, 0x7f0a014a

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->getTextView()Lcom/sec/daliviews/views/TextView;

    move-result-object v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText:Lcom/sec/daliviews/views/TextView;

    float-to-int v10, v8

    invoke-virtual {v9, v10}, Lcom/sec/daliviews/views/TextView;->setTextSize(I)V

    :cond_d
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDate()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDay()V

    goto/16 :goto_1
.end method

.method public setIconView(Lcom/sec/android/app/launcher/views/HomeItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mIconView:Lcom/sec/android/app/launcher/views/HomeItemView;

    return-void
.end method

.method public startAnim()V
    .locals 14

    sget-object v12, Lcom/sec/android/app/launcher/views/LiveCalendarView;->TAG:Ljava/lang/String;

    const-string v13, "startAnim() "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, -0x1

    iput v12, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDateWeek:I

    const/4 v12, -0x1

    iput v12, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDateWeek_Apps:I

    const/4 v12, -0x1

    iput v12, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDayMonth:I

    const/4 v12, -0x1

    iput v12, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mDayMonth_Apps:I

    :try_start_0
    sget-boolean v12, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUsePhilippe:Z

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mIconView:Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/views/HomeItemView;->getCurrentMode()I

    move-result v12

    const/4 v13, 0x1

    invoke-direct {p0, v12, v13}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->ChangeCalendarText_ForPhilippe(IZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v12, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mIconView:Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/views/HomeItemView;->getCurrentMode()I

    move-result v12

    const v13, 0x7f0b00e0

    if-ne v12, v13, :cond_2

    iget-object v12, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mIconView:Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/views/HomeItemView;->getParentView()Lcom/sec/daliviews/views/ContainerViewBase;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/launcher/views/FolderAdapterView;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/views/FolderAdapterView;->getAdapter()Lcom/sec/daliviews/views/Adapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/daliviews/views/Adapter;->getCount()I

    move-result v8

    const/4 v12, 0x4

    if-ge v8, v12, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDay_infolder()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDate_infolder()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDay_3row_folder()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDate_3row_folder()V

    goto :goto_0

    :cond_2
    iget-object v12, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mIconView:Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/views/HomeItemView;->getCurrentMode()I

    move-result v12

    const v13, 0x7f0b00dd

    if-eq v12, v13, :cond_3

    iget-object v12, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mIconView:Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/views/HomeItemView;->getCurrentMode()I

    move-result v12

    const v13, 0x7f0b00df

    if-ne v12, v13, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDate_Apps()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDay_Apps()V

    goto :goto_0

    :cond_4
    const v10, 0x7f0a014a

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->getTextView()Lcom/sec/daliviews/views/TextView;

    move-result-object v12

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mText:Lcom/sec/daliviews/views/TextView;

    float-to-int v13, v11

    invoke-virtual {v12, v13}, Lcom/sec/daliviews/views/TextView;->setTextSize(I)V

    :cond_5
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getCurrentPresenter()Lcom/sec/android/app/launcher/activities/PresenterBase;

    move-result-object v9

    instance-of v12, v9, Lcom/sec/android/app/launcher/activities/HomePresenter;

    if-eqz v12, :cond_a

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getHomePageColumns()I

    move-result v5

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getHomePageRows()I

    move-result v6

    move-object v0, v9

    check-cast v0, Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->getchangeGridForLiveicon()Z

    move-result v12

    if-eqz v12, :cond_7

    iget-object v12, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mIconView:Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/views/HomeItemView;->getCurrentMode()I

    move-result v12

    const v13, 0x7f0b00d7

    if-eq v12, v13, :cond_6

    iget-object v12, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mIconView:Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/views/HomeItemView;->getCurrentMode()I

    move-result v12

    const v13, 0x7f0b00d8

    if-ne v12, v13, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDate_5column()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDay_5column()V

    goto/16 :goto_0

    :cond_7
    mul-int v12, v5, v6

    const/16 v13, 0x14

    if-lt v12, v13, :cond_9

    iget-object v12, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mIconView:Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/views/HomeItemView;->getCurrentMode()I

    move-result v12

    const v13, 0x7f0b00d7

    if-eq v12, v13, :cond_8

    iget-object v12, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mIconView:Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/views/HomeItemView;->getCurrentMode()I

    move-result v12

    const v13, 0x7f0b00d8

    if-ne v12, v13, :cond_9

    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDate_5column()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDay_5column()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->Day_Date_Clear()V

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDate()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDay()V

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getHomePageColumns()I

    move-result v1

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getHomePageRows()I

    move-result v2

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->supportDefaultHomeOnlyMode()Z

    move-result v12

    if-nez v12, :cond_b

    mul-int v12, v1, v2

    const/16 v13, 0x14

    if-le v12, v13, :cond_c

    :cond_b
    iget-object v12, p0, Lcom/sec/android/app/launcher/views/LiveCalendarView;->mIconView:Lcom/sec/android/app/launcher/views/HomeItemView;

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/views/HomeItemView;->getCurrentMode()I

    move-result v12

    const v13, 0x7f0b00e1

    if-eq v12, v13, :cond_c

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDate_5column()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDay_5column()V

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDate()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/views/LiveCalendarView;->updateDay()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public stopAnim()V
    .locals 0

    return-void
.end method
