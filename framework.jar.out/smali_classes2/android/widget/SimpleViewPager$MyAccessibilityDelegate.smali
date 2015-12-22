.class Landroid/widget/SimpleViewPager$MyAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "SimpleViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SimpleViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SimpleViewPager;


# direct methods
.method constructor <init>(Landroid/widget/SimpleViewPager;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SimpleViewPager$MyAccessibilityDelegate;->this$0:Landroid/widget/SimpleViewPager;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method

.method private canScroll()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/widget/SimpleViewPager$MyAccessibilityDelegate;->this$0:Landroid/widget/SimpleViewPager;

    # getter for: Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;
    invoke-static {v1}, Landroid/widget/SimpleViewPager;->access$200(Landroid/widget/SimpleViewPager;)Landroid/widget/SimpleViewPager$PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SimpleViewPager$MyAccessibilityDelegate;->this$0:Landroid/widget/SimpleViewPager;

    # getter for: Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;
    invoke-static {v1}, Landroid/widget/SimpleViewPager;->access$200(Landroid/widget/SimpleViewPager;)Landroid/widget/SimpleViewPager$PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SimpleViewPager$PagerAdapter;->getCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v1, Landroid/widget/SimpleViewPager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v0

    invoke-direct {p0}, Landroid/widget/SimpleViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/widget/SimpleViewPager$MyAccessibilityDelegate;->this$0:Landroid/widget/SimpleViewPager;

    # getter for: Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;
    invoke-static {v1}, Landroid/widget/SimpleViewPager;->access$200(Landroid/widget/SimpleViewPager;)Landroid/widget/SimpleViewPager$PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SimpleViewPager$MyAccessibilityDelegate;->this$0:Landroid/widget/SimpleViewPager;

    # getter for: Landroid/widget/SimpleViewPager;->mAdapter:Landroid/widget/SimpleViewPager$PagerAdapter;
    invoke-static {v1}, Landroid/widget/SimpleViewPager;->access$200(Landroid/widget/SimpleViewPager;)Landroid/widget/SimpleViewPager$PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SimpleViewPager$PagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    iget-object v1, p0, Landroid/widget/SimpleViewPager$MyAccessibilityDelegate;->this$0:Landroid/widget/SimpleViewPager;

    # getter for: Landroid/widget/SimpleViewPager;->mCurItem:I
    invoke-static {v1}, Landroid/widget/SimpleViewPager;->access$300(Landroid/widget/SimpleViewPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    iget-object v1, p0, Landroid/widget/SimpleViewPager$MyAccessibilityDelegate;->this$0:Landroid/widget/SimpleViewPager;

    # getter for: Landroid/widget/SimpleViewPager;->mCurItem:I
    invoke-static {v1}, Landroid/widget/SimpleViewPager;->access$300(Landroid/widget/SimpleViewPager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/widget/SimpleViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/widget/SimpleViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    iget-object v0, p0, Landroid/widget/SimpleViewPager$MyAccessibilityDelegate;->this$0:Landroid/widget/SimpleViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SimpleViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleViewPager$MyAccessibilityDelegate;->this$0:Landroid/widget/SimpleViewPager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SimpleViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    iget-object v2, p0, Landroid/widget/SimpleViewPager$MyAccessibilityDelegate;->this$0:Landroid/widget/SimpleViewPager;

    invoke-virtual {v2, v0}, Landroid/widget/SimpleViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Landroid/widget/SimpleViewPager$MyAccessibilityDelegate;->this$0:Landroid/widget/SimpleViewPager;

    iget-object v2, p0, Landroid/widget/SimpleViewPager$MyAccessibilityDelegate;->this$0:Landroid/widget/SimpleViewPager;

    # getter for: Landroid/widget/SimpleViewPager;->mCurItem:I
    invoke-static {v2}, Landroid/widget/SimpleViewPager;->access$300(Landroid/widget/SimpleViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SimpleViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Landroid/widget/SimpleViewPager$MyAccessibilityDelegate;->this$0:Landroid/widget/SimpleViewPager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/SimpleViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Landroid/widget/SimpleViewPager$MyAccessibilityDelegate;->this$0:Landroid/widget/SimpleViewPager;

    iget-object v2, p0, Landroid/widget/SimpleViewPager$MyAccessibilityDelegate;->this$0:Landroid/widget/SimpleViewPager;

    # getter for: Landroid/widget/SimpleViewPager;->mCurItem:I
    invoke-static {v2}, Landroid/widget/SimpleViewPager;->access$300(Landroid/widget/SimpleViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/SimpleViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method
