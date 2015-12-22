.class public Lcom/sec/android/app/launcher/views/WidgetPageView;
.super Lcom/sec/daliviews/views/FixedPageView;
.source "WidgetPageView.java"


# instance fields
.field mWidgetSearchBar:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/FixedPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetPageView;->mWidgetSearchBar:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/WidgetPageView;->mWidgetSearchBar:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->hideKeyboard()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setWidgetSearchBar(Lcom/sec/android/app/launcher/activities/WidgetSearchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/WidgetPageView;->mWidgetSearchBar:Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    return-void
.end method
