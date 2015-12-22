.class public abstract Lcom/android/incallui/SecTabletViewManager;
.super Ljava/lang/Object;
.source "SecTabletViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecTabletViewManager$FragmentAnimationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/incallui/SecTabletView",
        "<**>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final animationListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/SecTabletViewManager$FragmentAnimationListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCurrentView:Lcom/android/incallui/SecTabletView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mFragmentType:Ljava/lang/Enum;

.field protected mRootView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/incallui/SecTabletViewManager;->animationListeners:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/SecTabletViewManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/incallui/SecTabletViewManager;->mRootView:Landroid/view/ViewGroup;

    return-void
.end method

.method private declared-synchronized addViewInternal(Landroid/view/ViewGroup;Lcom/android/incallui/SecTabletView;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "TT;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/incallui/SecTabletViewManager;->mCurrentView:Lcom/android/incallui/SecTabletView;

    invoke-virtual {p0, p2}, Lcom/android/incallui/SecTabletViewManager;->setCurrentView(Lcom/android/incallui/SecTabletView;)V

    if-eqz p2, :cond_0

    const-string v1, "SecTabletViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new layout added : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/incallui/SecTabletView;->getAppearanceAnimator()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static notifyAnimationEnded(Lcom/android/incallui/SecTabletView;)V
    .locals 3

    sget-object v2, Lcom/android/incallui/SecTabletViewManager;->animationListeners:Ljava/util/Set;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v2, Lcom/android/incallui/SecTabletViewManager;->animationListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/SecTabletViewManager$FragmentAnimationListener;

    invoke-interface {v1, p0}, Lcom/android/incallui/SecTabletViewManager$FragmentAnimationListener;->onAnimationEnded(Lcom/android/incallui/SecTabletView;)V

    goto :goto_0
.end method

.method public static notifyAnimationStarted(Lcom/android/incallui/SecTabletView;)V
    .locals 3

    sget-object v2, Lcom/android/incallui/SecTabletViewManager;->animationListeners:Ljava/util/Set;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v2, Lcom/android/incallui/SecTabletViewManager;->animationListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/SecTabletViewManager$FragmentAnimationListener;

    invoke-interface {v1, p0}, Lcom/android/incallui/SecTabletViewManager$FragmentAnimationListener;->onAnimationStarted(Lcom/android/incallui/SecTabletView;)V

    goto :goto_0
.end method

.method private declared-synchronized removeViewInternal(Lcom/android/incallui/SecTabletView;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/android/incallui/SecTabletView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/android/incallui/SecTabletView;->getDisappearanceAnimator()Landroid/animation/AnimatorSet;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const-string v3, "SecTabletViewManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "layout removed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    move-object v1, p1

    :try_start_1
    new-instance v3, Lcom/android/incallui/SecTabletViewManager$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/incallui/SecTabletViewManager$1;-><init>(Lcom/android/incallui/SecTabletViewManager;Lcom/android/incallui/SecTabletView;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    invoke-static {v1}, Lcom/android/incallui/SecTabletViewManager;->notifyAnimationStarted(Lcom/android/incallui/SecTabletView;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public onDestroy()V
    .locals 0

    return-void
.end method

.method protected removeCurrentView()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletViewManager;->mCurrentView:Lcom/android/incallui/SecTabletView;

    invoke-direct {p0, v0}, Lcom/android/incallui/SecTabletViewManager;->removeViewInternal(Lcom/android/incallui/SecTabletView;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecTabletViewManager;->mCurrentView:Lcom/android/incallui/SecTabletView;

    return-void
.end method

.method protected abstract setCurrentView(Lcom/android/incallui/SecTabletView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract setView(Ljava/lang/Enum;Z)V
.end method

.method protected setViewInternal(ILcom/android/incallui/SecTabletView;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;Z)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/incallui/SecTabletViewManager;->mRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecTabletViewManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    if-nez p3, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecTabletViewManager;->mCurrentView:Lcom/android/incallui/SecTabletView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecTabletViewManager;->mCurrentView:Lcom/android/incallui/SecTabletView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecTabletViewManager;->mCurrentView:Lcom/android/incallui/SecTabletView;

    if-nez v1, :cond_3

    const-string v1, "SecTabletViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trying to add new layout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletViewManager;->removeCurrentView()V

    invoke-direct {p0, v0, p2}, Lcom/android/incallui/SecTabletViewManager;->addViewInternal(Landroid/view/ViewGroup;Lcom/android/incallui/SecTabletView;)V

    const-string v1, "SecTabletViewManager"

    const-string v2, "done."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "SecTabletViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trying to replace layout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/SecTabletViewManager;->mCurrentView:Lcom/android/incallui/SecTabletView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
