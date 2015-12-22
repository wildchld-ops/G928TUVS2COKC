.class public Lcom/android/settings/widget/CustomScrollView;
.super Landroid/widget/ScrollView;
.source "CustomScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/CustomScrollView$ObservableScrollViewCallbacks;
    }
.end annotation


# instance fields
.field private mCallbacks:Lcom/android/settings/widget/CustomScrollView$ObservableScrollViewCallbacks;

.field private mIsFirstLoading:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/CustomScrollView;->mIsFirstLoading:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/CustomScrollView;->mIsFirstLoading:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/CustomScrollView;->mIsFirstLoading:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/CustomScrollView;->mIsFirstLoading:Z

    return-void
.end method


# virtual methods
.method public getIsFirstLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/widget/CustomScrollView;->mIsFirstLoading:Z

    return v0
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/CustomScrollView;->mCallbacks:Lcom/android/settings/widget/CustomScrollView$ObservableScrollViewCallbacks;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/widget/CustomScrollView;->mCallbacks:Lcom/android/settings/widget/CustomScrollView$ObservableScrollViewCallbacks;

    invoke-interface {v0}, Lcom/android/settings/widget/CustomScrollView$ObservableScrollViewCallbacks;->releaseView()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setIsFirstLoading(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/widget/CustomScrollView;->mIsFirstLoading:Z

    return-void
.end method

.method public setScrollViewCallbacks(Lcom/android/settings/widget/CustomScrollView$ObservableScrollViewCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/CustomScrollView;->mCallbacks:Lcom/android/settings/widget/CustomScrollView$ObservableScrollViewCallbacks;

    return-void
.end method
