.class Landroid/widget/SimpleMonthAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimpleMonthAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleMonthAdapter$OnDaySelectedListener;
    }
.end annotation


# instance fields
.field private mCalendarTextColors:Landroid/content/res/ColorStateList;

.field private final mContext:Landroid/content/Context;

.field private mFirstDayOfWeek:I

.field private final mMaxDate:Ljava/util/Calendar;

.field private final mMinDate:Ljava/util/Calendar;

.field private final mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

.field private mOnDaySelectedListener:Landroid/widget/SimpleMonthAdapter$OnDaySelectedListener;

.field private mSelectedDay:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SimpleMonthAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SimpleMonthAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SimpleMonthAdapter;->mSelectedDay:Ljava/util/Calendar;

    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SimpleMonthAdapter;->mCalendarTextColors:Landroid/content/res/ColorStateList;

    new-instance v0, Landroid/widget/SimpleMonthAdapter$1;

    invoke-direct {v0, p0}, Landroid/widget/SimpleMonthAdapter$1;-><init>(Landroid/widget/SimpleMonthAdapter;)V

    iput-object v0, p0, Landroid/widget/SimpleMonthAdapter;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    iput-object p1, p0, Landroid/widget/SimpleMonthAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Landroid/widget/SimpleMonthAdapter;Ljava/util/Calendar;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/SimpleMonthAdapter;->isCalendarInRange(Ljava/util/Calendar;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/widget/SimpleMonthAdapter;)Landroid/widget/SimpleMonthAdapter$OnDaySelectedListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleMonthAdapter;->mOnDaySelectedListener:Landroid/widget/SimpleMonthAdapter$OnDaySelectedListener;

    return-object v0
.end method

.method private isCalendarInRange(Ljava/util/Calendar;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleMonthAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SimpleMonthAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSelectedDayInMonth(II)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/widget/SimpleMonthAdapter;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/widget/SimpleMonthAdapter;->mSelectedDay:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget-object v2, p0, Landroid/widget/SimpleMonthAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroid/widget/SimpleMonthAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v1, v2, v3

    iget-object v2, p0, Landroid/widget/SimpleMonthAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroid/widget/SimpleMonthAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v0, v2, v3

    mul-int/lit8 v2, v1, 0xc

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    iget v0, p0, Landroid/widget/SimpleMonthAdapter;->mFirstDayOfWeek:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    if-eqz p2, :cond_1

    move-object v0, p2

    check-cast v0, Landroid/widget/SimpleMonthView;

    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/widget/SimpleMonthAdapter;->mMinDate:Ljava/util/Calendar;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v4, p0, Landroid/widget/SimpleMonthAdapter;->mMinDate:Ljava/util/Calendar;

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int v7, p1, v8

    rem-int/lit8 v2, v7, 0xc

    div-int/lit8 v4, v7, 0xc

    add-int v3, v4, v9

    invoke-direct {p0, v3, v2}, Landroid/widget/SimpleMonthAdapter;->isSelectedDayInMonth(II)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/SimpleMonthAdapter;->mSelectedDay:Ljava/util/Calendar;

    const/4 v11, 0x5

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    :goto_1
    invoke-virtual {v0}, Landroid/widget/SimpleMonthView;->reuse()V

    if-ne v8, v2, :cond_3

    if-ne v9, v3, :cond_3

    iget-object v4, p0, Landroid/widget/SimpleMonthAdapter;->mMinDate:Ljava/util/Calendar;

    const/4 v11, 0x5

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v5

    :goto_2
    iget-object v4, p0, Landroid/widget/SimpleMonthAdapter;->mMaxDate:Ljava/util/Calendar;

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v4, v2, :cond_4

    iget-object v4, p0, Landroid/widget/SimpleMonthAdapter;->mMaxDate:Ljava/util/Calendar;

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v4, v3, :cond_4

    iget-object v4, p0, Landroid/widget/SimpleMonthAdapter;->mMaxDate:Ljava/util/Calendar;

    const/4 v11, 0x5

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v6

    :goto_3
    iget v4, p0, Landroid/widget/SimpleMonthAdapter;->mFirstDayOfWeek:I

    invoke-virtual/range {v0 .. v6}, Landroid/widget/SimpleMonthView;->setMonthParams(IIIIII)V

    invoke-virtual {v0}, Landroid/widget/SimpleMonthView;->invalidate()V

    return-object v0

    :cond_1
    new-instance v0, Landroid/widget/SimpleMonthView;

    iget-object v4, p0, Landroid/widget/SimpleMonthAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/SimpleMonthView;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    const/4 v11, -0x1

    invoke-direct {v10, v4, v11}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v10}, Landroid/widget/SimpleMonthView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setClickable(Z)V

    iget-object v4, p0, Landroid/widget/SimpleMonthAdapter;->mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setOnDayClickListener(Landroid/widget/SimpleMonthView$OnDayClickListener;)V

    iget-object v4, p0, Landroid/widget/SimpleMonthAdapter;->mCalendarTextColors:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/SimpleMonthAdapter;->mCalendarTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/16 v6, 0x1f

    goto :goto_3
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method setCalendarTextAppearance(I)V
    .locals 4

    iget-object v2, p0, Landroid/widget/SimpleMonthAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, p0, Landroid/widget/SimpleMonthAdapter;->mCalendarTextColors:Landroid/content/res/ColorStateList;

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method setCalendarTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SimpleMonthAdapter;->mCalendarTextColors:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 0

    iput p1, p0, Landroid/widget/SimpleMonthAdapter;->mFirstDayOfWeek:I

    invoke-virtual {p0}, Landroid/widget/SimpleMonthAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method public setOnDaySelectedListener(Landroid/widget/SimpleMonthAdapter$OnDaySelectedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SimpleMonthAdapter;->mOnDaySelectedListener:Landroid/widget/SimpleMonthAdapter$OnDaySelectedListener;

    return-void
.end method

.method public setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 4

    iget-object v0, p0, Landroid/widget/SimpleMonthAdapter;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/SimpleMonthAdapter;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0}, Landroid/widget/SimpleMonthAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method public setSelectedDay(Ljava/util/Calendar;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SimpleMonthAdapter;->mSelectedDay:Ljava/util/Calendar;

    invoke-virtual {p0}, Landroid/widget/SimpleMonthAdapter;->notifyDataSetChanged()V

    return-void
.end method
