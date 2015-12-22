.class Landroid/widget/CalendarViewMaterialDelegate$1;
.super Ljava/lang/Object;
.source "CalendarViewMaterialDelegate.java"

# interfaces
.implements Landroid/widget/DayPickerView$OnDaySelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarViewMaterialDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/CalendarViewMaterialDelegate;


# direct methods
.method constructor <init>(Landroid/widget/CalendarViewMaterialDelegate;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/CalendarViewMaterialDelegate$1;->this$0:Landroid/widget/CalendarViewMaterialDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDaySelected(Landroid/widget/DayPickerView;Ljava/util/Calendar;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Landroid/widget/CalendarViewMaterialDelegate$1;->this$0:Landroid/widget/CalendarViewMaterialDelegate;

    # getter for: Landroid/widget/CalendarViewMaterialDelegate;->mDayPickerView:Landroid/widget/DayPickerView;
    invoke-static {v3}, Landroid/widget/CalendarViewMaterialDelegate;->access$000(Landroid/widget/CalendarViewMaterialDelegate;)Landroid/widget/DayPickerView;

    move-result-object v3

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v6, v6}, Landroid/widget/DayPickerView;->setDate(JZZ)V

    iget-object v3, p0, Landroid/widget/CalendarViewMaterialDelegate$1;->this$0:Landroid/widget/CalendarViewMaterialDelegate;

    # getter for: Landroid/widget/CalendarViewMaterialDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;
    invoke-static {v3}, Landroid/widget/CalendarViewMaterialDelegate;->access$100(Landroid/widget/CalendarViewMaterialDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v3, 0x5

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Landroid/widget/CalendarViewMaterialDelegate$1;->this$0:Landroid/widget/CalendarViewMaterialDelegate;

    # getter for: Landroid/widget/CalendarViewMaterialDelegate;->mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;
    invoke-static {v3}, Landroid/widget/CalendarViewMaterialDelegate;->access$100(Landroid/widget/CalendarViewMaterialDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/CalendarViewMaterialDelegate$1;->this$0:Landroid/widget/CalendarViewMaterialDelegate;

    iget-object v4, v4, Landroid/widget/CalendarViewMaterialDelegate;->mDelegator:Landroid/widget/CalendarView;

    invoke-interface {v3, v4, v2, v1, v0}, Landroid/widget/CalendarView$OnDateChangeListener;->onSelectedDayChange(Landroid/widget/CalendarView;III)V

    :cond_0
    return-void
.end method
