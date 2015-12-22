.class public abstract Lcom/android/incallui/SecTabletView;
.super Landroid/widget/FrameLayout;
.source "SecTabletView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/incallui/Presenter",
        "<TU;>;U::",
        "Lcom/android/incallui/Ui;",
        ">",
        "Landroid/widget/FrameLayout;"
    }
.end annotation


# instance fields
.field private mPresenter:Lcom/android/incallui/Presenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletView;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletView;->createPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecTabletView;->mPresenter:Lcom/android/incallui/Presenter;

    return-void
.end method


# virtual methods
.method abstract createPresenter()Lcom/android/incallui/Presenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected deInitView()V
    .locals 0

    return-void
.end method

.method public getAppearanceAnimator()Landroid/animation/AnimatorSet;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisappearanceAnimator()Landroid/animation/AnimatorSet;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPresenter()Lcom/android/incallui/Presenter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/incallui/SecTabletView;->mPresenter:Lcom/android/incallui/Presenter;

    return-object v0
.end method

.method abstract getUi()Lcom/android/incallui/Ui;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation
.end method

.method protected getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected abstract initView()V
.end method

.method protected onAttachedToWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletView;->mPresenter:Lcom/android/incallui/Presenter;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/Presenter;->setContext(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletView;->initView()V

    iget-object v0, p0, Lcom/android/incallui/SecTabletView;->mPresenter:Lcom/android/incallui/Presenter;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletView;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletView;->deInitView()V

    iget-object v0, p0, Lcom/android/incallui/SecTabletView;->mPresenter:Lcom/android/incallui/Presenter;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletView;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/Presenter;->onUiDestroy(Lcom/android/incallui/Ui;)V

    return-void
.end method
