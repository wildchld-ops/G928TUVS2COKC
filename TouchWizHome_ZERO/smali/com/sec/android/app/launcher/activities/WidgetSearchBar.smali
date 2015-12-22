.class public Lcom/sec/android/app/launcher/activities/WidgetSearchBar;
.super Ljava/lang/Object;
.source "WidgetSearchBar.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/sec/android/app/launcher/views/WidgetFolderView$WidgetFolderViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/activities/WidgetSearchBar$FadeRunnable;,
        Lcom/sec/android/app/launcher/activities/WidgetSearchBar$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBackButton:Landroid/widget/LinearLayout;

.field private mBackButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mFadeDelay:I

.field private mFadeInAnimation:Landroid/view/animation/Animation;

.field private mFadeOutAnimation:Landroid/view/animation/Animation;

.field private mFadeRunnable:Lcom/sec/android/app/launcher/activities/WidgetSearchBar$FadeRunnable;

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mHandler:Landroid/os/Handler;

.field private mIsHidden:Z

.field private mIsHomekeyPressed:Z

.field private mIsScrolling:Z

.field private mIsVisible:Z

.field private mSearchBarListener:Lcom/sec/android/app/launcher/activities/WidgetSearchBar$Listener;

.field private mSlideDownAnimation:Landroid/view/animation/Animation;

.field private mSlideUpAnimation:Landroid/view/animation/Animation;

.field private mWidgetSearchView:Lcom/sec/android/app/launcher/views/WidgetSearchView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/sec/android/app/launcher/activities/WidgetSearchBar$Listener;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/sec/android/app/launcher/activities/WidgetSearchBar$FadeRunnable;

    invoke-direct {v1, p0, v3}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar$FadeRunnable;-><init>(Lcom/sec/android/app/launcher/activities/WidgetSearchBar;Lcom/sec/android/app/launcher/activities/WidgetSearchBar$1;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mFadeRunnable:Lcom/sec/android/app/launcher/activities/WidgetSearchBar$FadeRunnable;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mBackButtonDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mHandler:Landroid/os/Handler;

    iput v5, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mFadeDelay:I

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mSearchBarListener:Lcom/sec/android/app/launcher/activities/WidgetSearchBar$Listener;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mActivity:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f03003e

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mFrameLayout:Landroid/widget/FrameLayout;

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->TAG:Ljava/lang/String;

    const-string v2, "Unable to locate FrameLayout in hierarchy."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mFrameLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0b00d6

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/views/WidgetSearchView;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mWidgetSearchView:Lcom/sec/android/app/launcher/views/WidgetSearchView;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mWidgetSearchView:Lcom/sec/android/app/launcher/views/WidgetSearchView;

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->TAG:Ljava/lang/String;

    const-string v2, "Unable to locate SearchView in the view hierarchy."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mWidgetSearchView:Lcom/sec/android/app/launcher/views/WidgetSearchView;

    const-string v2, ""

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mWidgetSearchView:Lcom/sec/android/app/launcher/views/WidgetSearchView;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mWidgetSearchView:Lcom/sec/android/app/launcher/views/WidgetSearchView;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mWidgetSearchView:Lcom/sec/android/app/launcher/views/WidgetSearchView;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mFrameLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0b00d5

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mBackButton:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mBackButton:Landroid/widget/LinearLayout;

    if-nez v1, :cond_2

    sget-object v1, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->TAG:Ljava/lang/String;

    const-string v2, "Unable to locate ImageView in the view hierarchy."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mBackButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mBackButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mBackButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mBackButton:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/sec/android/app/launcher/activities/WidgetSearchBar$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar$1;-><init>(Lcom/sec/android/app/launcher/activities/WidgetSearchBar;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mActivity:Landroid/app/Activity;

    const v2, 0x7f040042

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mSlideUpAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mSlideUpAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mActivity:Landroid/app/Activity;

    const v2, 0x7f040041

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mSlideDownAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mSlideDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mFrameLayout:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mHandler:Landroid/os/Handler;

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/activities/WidgetSearchBar;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mBackButton:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/launcher/activities/WidgetSearchBar;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mBackButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/launcher/activities/WidgetSearchBar;)Lcom/sec/android/app/launcher/activities/WidgetSearchBar$Listener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mSearchBarListener:Lcom/sec/android/app/launcher/activities/WidgetSearchBar$Listener;

    return-object v0
.end method


# virtual methods
.method public clearQuery()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mWidgetSearchView:Lcom/sec/android/app/launcher/views/WidgetSearchView;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public clearSearchViewFocus()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mWidgetSearchView:Lcom/sec/android/app/launcher/views/WidgetSearchView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->clearFocus()V

    return-void
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mSlideDownAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mSlideDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mSlideUpAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mSlideUpAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_2
    return-void
.end method

.method public fade(Z)V
    .locals 6

    iget v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mFadeDelay:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mFadeDelay:I

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mFadeRunnable:Lcom/sec/android/app/launcher/activities/WidgetSearchBar$FadeRunnable;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar$FadeRunnable;->setFade(Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mFadeRunnable:Lcom/sec/android/app/launcher/activities/WidgetSearchBar$FadeRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mFadeRunnable:Lcom/sec/android/app/launcher/activities/WidgetSearchBar$FadeRunnable;

    iget v3, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mFadeDelay:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public fadeIn()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mFadeInAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    const v1, 0x7f04003f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mFadeInAnimation:Landroid/view/animation/Animation;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public fadeOut()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mFadeOutAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    const v1, 0x7f040040

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mFadeOutAnimation:Landroid/view/animation/Animation;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mFadeOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method getBackButton()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mBackButton:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getSearchQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mWidgetSearchView:Lcom/sec/android/app/launcher/views/WidgetSearchView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSearchView()Lcom/sec/android/app/launcher/views/WidgetSearchView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mWidgetSearchView:Lcom/sec/android/app/launcher/views/WidgetSearchView;

    return-object v0
.end method

.method getWidgetSearchBarView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public hideKeyboard()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mWidgetSearchView:Lcom/sec/android/app/launcher/views/WidgetSearchView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->hideKeyboard()V

    return-void
.end method

.method public hideSearchBar(Z)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->setVisibility(Z)V

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mIsHidden:Z

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mIsHomekeyPressed:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mIsVisible:Z

    return v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mSlideUpAnimation:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mFrameLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mIsScrolling:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mBackButton:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mWidgetSearchView:Lcom/sec/android/app/launcher/views/WidgetSearchView;

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->setEditable(ZZ)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mBackButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mSearchBarListener:Lcom/sec/android/app/launcher/activities/WidgetSearchBar$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mSearchBarListener:Lcom/sec/android/app/launcher/activities/WidgetSearchBar$Listener;

    invoke-interface {v0}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar$Listener;->onBackKeyPressed()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mWidgetSearchView:Lcom/sec/android/app/launcher/views/WidgetSearchView;

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->setEditable(ZZ)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mBackButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto :goto_1
.end method

.method public onFolderClosed(Lcom/sec/android/app/launcher/views/WidgetFolderView;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mIsVisible:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->fade(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mIsVisible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mIsHidden:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->hideSearchBar(Z)V

    goto :goto_0
.end method

.method public onFolderOpened(Lcom/sec/android/app/launcher/views/WidgetFolderView;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mIsVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->hideSearchBar(Z)V

    :cond_0
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x0

    const/16 v0, 0x64

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d003f

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mWidgetSearchView:Lcom/sec/android/app/launcher/views/WidgetSearchView;

    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mSearchBarListener:Lcom/sec/android/app/launcher/activities/WidgetSearchBar$Listener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/launcher/activities/WidgetSearchBar$2;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar$2;-><init>(Lcom/sec/android/app/launcher/activities/WidgetSearchBar;Ljava/lang/String;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mSearchBarListener:Lcom/sec/android/app/launcher/activities/WidgetSearchBar$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mSearchBarListener:Lcom/sec/android/app/launcher/activities/WidgetSearchBar$Listener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar$Listener;->onQuerySubmit(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mBackButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mWidgetSearchView:Lcom/sec/android/app/launcher/views/WidgetSearchView;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->setEditable(ZZ)V

    return-void
.end method

.method public setIsScrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mIsScrolling:Z

    return-void
.end method

.method public setSearchViewQueryHint(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mWidgetSearchView:Lcom/sec/android/app/launcher/views/WidgetSearchView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mWidgetSearchView:Lcom/sec/android/app/launcher/views/WidgetSearchView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setVisibility(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->setEnabled(ZZ)V

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mIsVisible:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mBackButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mSlideDownAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iput-boolean v3, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mIsVisible:Z

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mIsHidden:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mWidgetSearchView:Lcom/sec/android/app/launcher/views/WidgetSearchView;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/WidgetSearchView;->setKeyPosition()V

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mIsHidden:Z

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mIsHomekeyPressed:Z

    sget-object v0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisibility mIsVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mIsVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mIsVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mIsHomekeyPressed:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mFrameLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    iput-boolean v2, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mIsVisible:Z

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetsFragment()Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetsFragment()Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetsFragment()Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPopupMenu()Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetsFragment()Lcom/sec/android/app/launcher/activities/WidgetsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsFragment;->getWidgetsPresenter()Lcom/sec/android/app/launcher/activities/WidgetsPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPresenter;->getPopupMenu()Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/WidgetsPopupMenu;->setOptionsButtonDismiss()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mSlideUpAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public setVisibleValue(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/WidgetSearchBar;->mIsHomekeyPressed:Z

    return-void
.end method
