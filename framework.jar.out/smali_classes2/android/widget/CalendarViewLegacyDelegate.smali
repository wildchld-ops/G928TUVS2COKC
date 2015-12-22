.class Landroid/widget/CalendarViewLegacyDelegate;
.super Landroid/widget/CalendarView$AbstractCalendarViewDelegate;
.source "CalendarViewLegacyDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CalendarViewLegacyDelegate$WeekView;,
        Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;,
        Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;
    }
.end annotation


# static fields
.field private static final ADJUSTMENT_SCROLL_DURATION:I = 0x1f4

.field private static final DAYS_PER_WEEK:I = 0x7

.field private static final DEFAULT_DATE_TEXT_SIZE:I = 0xe

.field private static final DEFAULT_SHOWN_WEEK_COUNT:I = 0x6

.field private static final DEFAULT_SHOW_WEEK_NUMBER:Z = true

.field private static final DEFAULT_WEEK_DAY_TEXT_APPEARANCE_RES_ID:I = -0x1

.field private static final GOTO_SCROLL_DURATION:I = 0x3e8

.field private static final MILLIS_IN_DAY:J = 0x5265c00L

.field private static final MILLIS_IN_WEEK:J = 0x240c8400L

.field private static final MOCHA:Z

.field private static final SCROLL_CHANGE_DELAY:I = 0x28

.field private static final SCROLL_HYST_WEEKS:I = 0x2

.field private static final UNSCALED_BOTTOM_BUFFER:I = 0x14

.field private static final UNSCALED_LIST_SCROLL_TOP_OFFSET:I = 0x2

.field private static final UNSCALED_SELECTED_DATE_VERTICAL_BAR_WIDTH:I = 0x6

.field private static final UNSCALED_WEEK_MIN_VISIBLE_HEIGHT:I = 0xc

.field private static final UNSCALED_WEEK_SEPARATOR_LINE_WIDTH:I = 0x1

.field private static final familyRoboto:Ljava/lang/String; = "sans-serif"

.field private static final familyRobotoLight:Ljava/lang/String; = "sans-serif-light"


# instance fields
.field private mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

.field private mBottomBuffer:I

.field private mCurrentMonthDisplayed:I

.field private mCurrentScrollState:I

.field private mDateTextAppearanceResId:I

.field private mDateTextSize:I

.field private mDayNamesHeader:Landroid/view/ViewGroup;

.field private mDayNamesLong:[Ljava/lang/String;

.field private mDayNamesShort:[Ljava/lang/String;

.field private mDaysPerWeek:I

.field private mFirstDayOfMonth:Ljava/util/Calendar;

.field private mFirstDayOfWeek:I

.field private mFocusedMonthDateColor:I

.field private mFocusedSingleDateColor:I

.field private mFriction:F

.field private mIsDeviceDefault:Z

.field private mIsScrollingUp:Z

.field private mListScrollTopOffset:I

.field private mListView:Landroid/widget/ListView;

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMonthName:Landroid/widget/TextView;

.field private mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

.field private mPreviousScrollPosition:J

.field private mPreviousScrollState:I

.field private mScrollStateChangedRunnable:Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

.field private mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

.field private final mSelectedDateVerticalBarWidth:I

.field private mSelectedWeekBackgroundColor:I

.field private mShowWeekNumber:Z

.field private mShownWeekCount:I

.field private mTempDate:Ljava/util/Calendar;

.field private mUnfocusedMonthDateColor:I

.field private mVelocityScale:F

.field private mWeekDayTextAppearanceResId:I

.field private mWeekMinVisibleHeight:I

.field private mWeekNumberColor:I

.field private mWeekSeparatorLineColor:I

.field private final mWeekSeperatorLineWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "mocha"

    const-string/jumbo v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/widget/CalendarViewLegacyDelegate;->MOCHA:Z

    return-void
.end method

.method constructor <init>(Landroid/widget/CalendarView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 15

    invoke-direct/range {p0 .. p2}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;-><init>(Landroid/widget/CalendarView;Landroid/content/Context;)V

    const/4 v11, 0x2

    iput v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    const/16 v11, 0xc

    iput v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekMinVisibleHeight:I

    const/16 v11, 0x14

    iput v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mBottomBuffer:I

    const/4 v11, 0x7

    iput v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    const v11, 0x3d4ccccd    # 0.05f

    iput v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFriction:F

    const v11, 0x3eaa7efa    # 0.333f

    iput v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mVelocityScale:F

    const/4 v11, -0x1

    iput v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    const/4 v11, 0x0

    iput v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    const/4 v11, 0x0

    iput v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentScrollState:I

    new-instance v11, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;-><init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/CalendarViewLegacyDelegate$1;)V

    iput-object v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mScrollStateChangedRunnable:Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsDeviceDefault:Z

    const/4 v11, -0x1

    iput v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedSingleDateColor:I

    sget-object v11, Lcom/android/internal/R$styleable;->Theme:[I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v10

    const/16 v11, 0x139

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsDeviceDefault:Z

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v11, Lcom/android/internal/R$styleable;->CalendarView:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    const/4 v11, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-static {v12}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v12

    iget-object v12, v12, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p0, v9, v11}, Landroid/widget/CalendarViewLegacyDelegate;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    const-string v11, "01/01/1900"

    iget-object v12, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p0, v11, v12}, Landroid/widget/CalendarViewLegacyDelegate;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    :cond_1
    const/4 v11, 0x3

    invoke-virtual {v4, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p0, v8, v11}, Landroid/widget/CalendarViewLegacyDelegate;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v11

    if-nez v11, :cond_3

    :cond_2
    const-string v11, "01/01/2100"

    iget-object v12, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p0, v11, v12}, Landroid/widget/CalendarViewLegacyDelegate;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    :cond_3
    iget-object v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    iget-object v12, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Max date cannot be before min date."

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_4
    const/4 v11, 0x4

    const/4 v12, 0x6

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    const/4 v11, 0x5

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    iput v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    const/4 v11, 0x6

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    iput v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    const/4 v11, 0x7

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    iput v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    const/16 v11, 0x9

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    iput v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    const/16 v11, 0x8

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    iput v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    const/16 v11, 0xa

    invoke-virtual {v4, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    const/16 v11, 0xc

    const v12, 0x1030046

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    iget-boolean v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsDeviceDefault:Z

    if-eqz v11, :cond_5

    sget-boolean v11, Landroid/widget/CalendarViewLegacyDelegate;->MOCHA:Z

    if-eqz v11, :cond_5

    const/16 v11, 0xe

    const/16 v12, 0xe

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    iput v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextSize:I

    :goto_0
    const/16 v11, 0xb

    const/4 v12, -0x1

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v11}, Landroid/widget/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/4 v11, 0x1

    const/high16 v12, 0x41400000    # 12.0f

    invoke-static {v11, v12, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekMinVisibleHeight:I

    const/4 v11, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v11, v12, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    const/4 v11, 0x1

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-static {v11, v12, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mBottomBuffer:I

    const/4 v11, 0x1

    const/high16 v12, 0x40c00000    # 6.0f

    invoke-static {v11, v12, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBarWidth:I

    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v11, v12, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeperatorLineWidth:I

    iget-object v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    iget-boolean v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsDeviceDefault:Z

    if-eqz v11, :cond_6

    sget-boolean v11, Landroid/widget/CalendarViewLegacyDelegate;->MOCHA:Z

    if-eqz v11, :cond_6

    const v11, 0x1090102

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v7, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    :goto_1
    iget-object v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v11, v5}, Landroid/widget/CalendarView;->addView(Landroid/view/View;)V

    iget-object v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    const v12, 0x102000a

    invoke-virtual {v11, v12}, Landroid/widget/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ListView;

    iput-object v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    const v11, 0x102034f

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    iput-object v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    const v11, 0x102034e

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMonthName:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpListView()V

    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpAdapter()V

    iget-object v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    iget-object v12, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct {p0, v11, v12, v13, v14}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Ljava/util/Calendar;ZZZ)V

    :goto_2
    iget-object v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v11}, Landroid/widget/CalendarView;->invalidate()V

    return-void

    :cond_5
    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->updateDateTextSize()V

    goto/16 :goto_0

    :cond_6
    const v11, 0x109003a

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v7, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    goto :goto_1

    :cond_7
    iget-object v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    iget-object v12, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct {p0, v11, v12, v13, v14}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_2

    :cond_8
    iget-object v11, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct {p0, v11, v12, v13, v14}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_2
.end method

.method static synthetic access$1002(Landroid/widget/CalendarViewLegacyDelegate;I)I
    .locals 0

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentScrollState:I

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    return v0
.end method

.method static synthetic access$1102(Landroid/widget/CalendarViewLegacyDelegate;I)I
    .locals 0

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    return p1
.end method

.method static synthetic access$1200(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/CalendarViewLegacyDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/CalendarViewLegacyDelegate;Ljava/util/Calendar;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/widget/CalendarViewLegacyDelegate;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/CalendarViewLegacyDelegate;Ljava/util/Calendar;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Ljava/util/Calendar;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/widget/CalendarViewLegacyDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextSize:I

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/CalendarViewLegacyDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsDeviceDefault:Z

    return v0
.end method

.method static synthetic access$2500()Z
    .locals 1

    sget-boolean v0, Landroid/widget/CalendarViewLegacyDelegate;->MOCHA:Z

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    return v0
.end method

.method static synthetic access$2800(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeperatorLineWidth:I

    return v0
.end method

.method static synthetic access$2900(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    return v0
.end method

.method static synthetic access$3000(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedSingleDateColor:I

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBarWidth:I

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/widget/CalendarViewLegacyDelegate;)I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/CalendarViewLegacyDelegate;)Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/AbsListView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/CalendarViewLegacyDelegate;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/CalendarViewLegacyDelegate;Landroid/widget/AbsListView;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CalendarViewLegacyDelegate;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method private static getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3

    if-nez p0, :cond_0

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private getWeeksSinceMinDate(Ljava/util/Calendar;)I
    .locals 14

    const-wide/32 v12, 0x240c8400

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fromDate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " does not precede toDate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    int-to-long v8, v8

    add-long v2, v6, v8

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v8, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    int-to-long v8, v8

    add-long v4, v6, v8

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    sub-int/2addr v6, v7

    int-to-long v6, v6

    const-wide/32 v8, 0x5265c00

    mul-long v0, v6, v8

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_1

    add-long/2addr v0, v12

    :cond_1
    sub-long v6, v2, v4

    add-long/2addr v6, v0

    div-long/2addr v6, v12

    long-to-int v6, v6

    return v6
.end method

.method private goTo(Ljava/util/Calendar;ZZZ)V
    .locals 9

    const/4 v8, 0x0

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Time not between "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-gez v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mBottomBuffer:I

    if-le v4, v5, :cond_3

    add-int/lit8 v2, v2, -0x1

    :cond_3
    if-eqz p3, :cond_4

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v4, p1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    :cond_4
    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v3

    if-lt v3, v1, :cond_5

    if-gt v3, v2, :cond_5

    if-eqz p4, :cond_9

    :cond_5
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, v4}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Ljava/util/Calendar;)V

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    iget-object v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    if-eqz p2, :cond_8

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    const/16 v6, 0x3e8

    invoke-virtual {v4, v3, v5, v6}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-direct {p0, v4}, Landroid/widget/CalendarViewLegacyDelegate;->getWeeksSinceMinDate(Ljava/util/Calendar;)I

    move-result v3

    goto :goto_0

    :cond_8
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListScrollTopOffset:I

    invoke-virtual {v4, v3, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v4, v8}, Landroid/widget/CalendarViewLegacyDelegate;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_1

    :cond_9
    if-eqz p3, :cond_6

    invoke-direct {p0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Ljava/util/Calendar;)V

    goto :goto_1
.end method

.method private invalidateAllWeekViews()V
    .locals 4

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 3

    const/4 v2, 0x6

    const/4 v0, 0x1

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onScroll(Landroid/widget/AbsListView;III)V
    .locals 10

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getBottom()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-long v2, v7

    iget-wide v8, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollPosition:J

    cmp-long v7, v2, v8

    if-gez v7, :cond_6

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    :goto_1
    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getBottom()I

    move-result v7

    iget v8, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekMinVisibleHeight:I

    if-ge v7, v8, :cond_7

    const/4 v6, 0x1

    :goto_2
    iget-boolean v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    if-eqz v7, :cond_8

    add-int/lit8 v7, v6, 0x2

    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    :cond_2
    :goto_3
    if-eqz v0, :cond_5

    iget-boolean v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    if-eqz v7, :cond_9

    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getMonthOfFirstWeekDay()I

    move-result v4

    :goto_4
    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_a

    if-nez v4, :cond_a

    const/4 v5, 0x1

    :goto_5
    iget-boolean v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    if-nez v7, :cond_3

    if-gtz v5, :cond_4

    :cond_3
    iget-boolean v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    if-eqz v7, :cond_5

    if-gez v5, :cond_5

    :cond_4
    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getFirstDay()Ljava/util/Calendar;

    move-result-object v1

    iget-boolean v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    if-eqz v7, :cond_c

    const/4 v7, 0x5

    const/4 v8, -0x7

    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->add(II)V

    :goto_6
    invoke-direct {p0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->setMonthDisplayed(Ljava/util/Calendar;)V

    :cond_5
    iput-wide v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollPosition:J

    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentScrollState:I

    iput v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollState:I

    goto :goto_0

    :cond_6
    iget-wide v8, p0, Landroid/widget/CalendarViewLegacyDelegate;->mPreviousScrollPosition:J

    cmp-long v7, v2, v8

    if-lez v7, :cond_0

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mIsScrollingUp:Z

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    :cond_8
    if-eqz v6, :cond_2

    invoke-virtual {p1, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    goto :goto_3

    :cond_9
    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->getMonthOfLastWeekDay()I

    move-result v4

    goto :goto_4

    :cond_a
    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    if-nez v7, :cond_b

    const/16 v7, 0xb

    if-ne v4, v7, :cond_b

    const/4 v5, -0x1

    goto :goto_5

    :cond_b
    iget v7, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    sub-int v5, v4, v7

    goto :goto_5

    :cond_c
    const/4 v7, 0x5

    const/4 v8, 0x7

    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_6
.end method

.method private onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mScrollStateChangedRunnable:Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarViewLegacyDelegate$ScrollStateRunnable;->doScrollStateChange(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method private setMonthDisplayed(Ljava/util/Calendar;)V
    .locals 8

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mCurrentMonthDisplayed:I

    invoke-virtual {v1, v4}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setFocusMonth(I)V

    const/16 v0, 0x34

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    const/16 v6, 0x34

    move-wide v4, v2

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMonthName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method private setUpAdapter()V
    .locals 2

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;-><init>(Landroid/widget/CalendarViewLegacyDelegate;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    new-instance v1, Landroid/widget/CalendarViewLegacyDelegate$1;

    invoke-direct {v1, p0}, Landroid/widget/CalendarViewLegacyDelegate$1;-><init>(Landroid/widget/CalendarViewLegacyDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setUpHeader()V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x0

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesShort:[Ljava/lang/String;

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesLong:[Ljava/lang/String;

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    add-int v1, v4, v5

    :goto_0
    if-ge v2, v1, :cond_1

    const/4 v4, 0x7

    if-le v2, v4, :cond_0

    add-int/lit8 v0, v2, -0x7

    :goto_1
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesShort:[Ljava/lang/String;

    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    sub-int v5, v2, v5

    const/16 v6, 0x32

    invoke-static {v0, v6}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesLong:[Ljava/lang/String;

    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    sub-int v5, v2, v5

    const/16 v6, 0xa

    invoke-static {v0, v6}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-boolean v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    if-eqz v4, :cond_3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    const/4 v2, 0x1

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_3
    if-ge v2, v1, :cond_5

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_2

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mContext:Landroid/content/Context;

    iget v5, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_2
    iget v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDaysPerWeek:I

    add-int/lit8 v4, v4, 0x1

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesShort:[Ljava/lang/String;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesLong:[Ljava/lang/String;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_5
    iget-object v4, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private setUpListView()V
    .locals 2

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/CalendarViewLegacyDelegate$2;

    invoke-direct {v1, p0}, Landroid/widget/CalendarViewLegacyDelegate$2;-><init>(Landroid/widget/CalendarViewLegacyDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFriction:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFriction(F)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    iget v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mVelocityScale:F

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVelocityScale(F)V

    return-void
.end method

.method private updateDateTextSize()V
    .locals 4

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    sget-object v3, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextSize:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$400(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateTextAppearance()I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    return v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    return v0
.end method

.method public getFocusedMonthDateColor()I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedDateVerticalBar()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSelectedWeekBackgroundColor()I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    return v0
.end method

.method public getShowWeekNumber()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    return v0
.end method

.method public getShownWeekCount()I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    return v0
.end method

.method public getUnfocusedMonthDateColor()I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    return v0
.end method

.method public getWeekDayTextAppearance()I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    return v0
.end method

.method public getWeekNumberColor()I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    return v0
.end method

.method public getWeekSeparatorLineColor()I
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/widget/CalendarViewLegacyDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfMonth:Ljava/util/Calendar;

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-static {v0, p1}, Landroid/widget/CalendarViewLegacyDelegate;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    return-void
.end method

.method public setDate(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/widget/CalendarViewLegacyDelegate;->setDate(JZZ)V

    return-void
.end method

.method public setDate(JZZ)V
    .locals 3

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$400(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/CalendarViewLegacyDelegate;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p3, v1, p4}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method public setDateTextAppearance(I)V
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDateTextAppearanceResId:I

    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->updateDateTextSize()V

    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->invalidateAllWeekViews()V

    :cond_0
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFirstDayOfWeek:I

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    # invokes: Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->init()V
    invoke-static {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$500(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    goto :goto_0
.end method

.method public setFocusedMonthDateColor(I)V
    .locals 4

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    if-eq v3, p1, :cond_1

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mFocusedMonthDateColor:I

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasFocusedDay:Z
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->access$200(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setMaxDate(J)V
    .locals 5

    const/4 v3, 0x1

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/widget/CalendarViewLegacyDelegate;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    # invokes: Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->init()V
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$500(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$400(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/CalendarViewLegacyDelegate;->setDate(J)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v3, v3}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 5

    const/4 v3, 0x1

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/widget/CalendarViewLegacyDelegate;->isSameDate(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->mSelectedDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$400(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    iget-object v2, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    :cond_1
    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    # invokes: Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->init()V
    invoke-static {v1}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->access$500(Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;)V

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/CalendarViewLegacyDelegate;->setDate(J)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v3, v3}, Landroid/widget/CalendarViewLegacyDelegate;->goTo(Ljava/util/Calendar;ZZZ)V

    goto :goto_0
.end method

.method public setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-void
.end method

.method public setSelectedDateVerticalBar(I)V
    .locals 2

    iget-object v1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v1}, Landroid/widget/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/CalendarViewLegacyDelegate;->setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelectedDateVerticalBar(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    if-eq v3, p1, :cond_1

    iput-object p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedDateVerticalBar:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->access$100(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSelectedWeekBackgroundColor(I)V
    .locals 4

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    if-eq v3, p1, :cond_1

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mSelectedWeekBackgroundColor:I

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasSelectedDay:Z
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->access$100(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setShowWeekNumber(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mAdapter:Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;

    invoke-virtual {v0}, Landroid/widget/CalendarViewLegacyDelegate$WeeksAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    goto :goto_0
.end method

.method public setShownWeekCount(I)V
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShownWeekCount:I

    iget-object v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setUnfocusedMonthDateColor(I)V
    .locals 4

    iget v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    if-eq v3, p1, :cond_1

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mUnfocusedMonthDateColor:I

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Landroid/widget/CalendarViewLegacyDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CalendarViewLegacyDelegate$WeekView;

    # getter for: Landroid/widget/CalendarViewLegacyDelegate$WeekView;->mHasUnfocusedDay:Z
    invoke-static {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->access$300(Landroid/widget/CalendarViewLegacyDelegate$WeekView;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/widget/CalendarViewLegacyDelegate$WeekView;->invalidate()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekDayTextAppearanceResId:I

    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->setUpHeader()V

    :cond_0
    return-void
.end method

.method public setWeekNumberColor(I)V
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekNumberColor:I

    iget-boolean v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mShowWeekNumber:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->invalidateAllWeekViews()V

    :cond_0
    return-void
.end method

.method public setWeekSeparatorLineColor(I)V
    .locals 1

    iget v0, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/CalendarViewLegacyDelegate;->mWeekSeparatorLineColor:I

    invoke-direct {p0}, Landroid/widget/CalendarViewLegacyDelegate;->invalidateAllWeekViews()V

    :cond_0
    return-void
.end method
