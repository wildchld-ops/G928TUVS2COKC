.class public Lcom/samsung/android/visualeffect/EffectView;
.super Landroid/widget/FrameLayout;
.source "EffectView.java"

# interfaces
.implements Lcom/samsung/android/visualeffect/IEffectView;


# static fields
.field private static final TAG:Ljava/lang/String; = "EffectView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEffectType:I

.field private mView:Lcom/samsung/android/visualeffect/IEffectView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/visualeffect/EffectView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/samsung/android/visualeffect/EffectView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/samsung/android/visualeffect/EffectView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/samsung/android/visualeffect/EffectView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public clearScreen()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/EffectView;->mView:Lcom/samsung/android/visualeffect/IEffectView;

    if-nez v0, :cond_0

    const-string v0, "EffectView"

    const-string v1, "clearScreen : mView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/EffectView;->mView:Lcom/samsung/android/visualeffect/IEffectView;

    invoke-interface {v0}, Lcom/samsung/android/visualeffect/IEffectView;->clearScreen()V

    goto :goto_0
.end method

.method public getEffect()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/EffectView;->mView:Lcom/samsung/android/visualeffect/IEffectView;

    if-nez v0, :cond_0

    const-string v0, "EffectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEffect : Current mView is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/visualeffect/EffectView;->mEffectType:I

    goto :goto_0
.end method

.method public handleCustomEvent(ILjava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<**>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/visualeffect/EffectView;->mView:Lcom/samsung/android/visualeffect/IEffectView;

    if-nez v0, :cond_0

    const-string v0, "EffectView"

    const-string v1, "handleCustomEvent : mView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/EffectView;->mView:Lcom/samsung/android/visualeffect/IEffectView;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/visualeffect/IEffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/EffectView;->mView:Lcom/samsung/android/visualeffect/IEffectView;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/visualeffect/IEffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    goto :goto_0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/EffectView;->mView:Lcom/samsung/android/visualeffect/IEffectView;

    if-nez v0, :cond_0

    const-string v0, "EffectView"

    const-string v1, "handleTouchEvent : mView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/EffectView;->mView:Lcom/samsung/android/visualeffect/IEffectView;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/visualeffect/IEffectView;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method public init(Lcom/samsung/android/visualeffect/EffectDataObj;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/EffectView;->mView:Lcom/samsung/android/visualeffect/IEffectView;

    if-nez v0, :cond_0

    const-string v0, "EffectView"

    const-string v1, "setInitValues : mView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/EffectView;->mView:Lcom/samsung/android/visualeffect/IEffectView;

    invoke-interface {v0, p1}, Lcom/samsung/android/visualeffect/IEffectView;->init(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    goto :goto_0
.end method

.method public onCommand(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<**>;)V"
        }
    .end annotation

    const-string v0, "clear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/EffectView;->mView:Lcom/samsung/android/visualeffect/IEffectView;

    invoke-interface {v0}, Lcom/samsung/android/visualeffect/IEffectView;->clearScreen()V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x63

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/visualeffect/EffectView;->handleCustomEvent(ILjava/util/HashMap;)V

    goto :goto_0
.end method

.method public reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/EffectView;->mView:Lcom/samsung/android/visualeffect/IEffectView;

    if-nez v0, :cond_0

    const-string v0, "EffectView"

    const-string v1, "reInitAndValues : mView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/EffectView;->mView:Lcom/samsung/android/visualeffect/IEffectView;

    new-instance v1, Lcom/samsung/android/visualeffect/EffectDataObj;

    invoke-direct {v1}, Lcom/samsung/android/visualeffect/EffectDataObj;-><init>()V

    invoke-interface {v0, v1}, Lcom/samsung/android/visualeffect/IEffectView;->reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/EffectView;->mView:Lcom/samsung/android/visualeffect/IEffectView;

    invoke-interface {v0, p1}, Lcom/samsung/android/visualeffect/IEffectView;->reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V

    goto :goto_0
.end method

.method public removeEffect()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/EffectView;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/EffectView;->mView:Lcom/samsung/android/visualeffect/IEffectView;

    return-void
.end method

.method public removeListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/EffectView;->mView:Lcom/samsung/android/visualeffect/IEffectView;

    if-nez v0, :cond_0

    const-string v0, "EffectView"

    const-string v1, "removeListener : mView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/EffectView;->mView:Lcom/samsung/android/visualeffect/IEffectView;

    invoke-interface {v0}, Lcom/samsung/android/visualeffect/IEffectView;->removeListener()V

    goto :goto_0
.end method

.method public setEffect(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/visualeffect/EffectView;->mView:Lcom/samsung/android/visualeffect/IEffectView;

    if-eqz v0, :cond_0

    const-string v0, "EffectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEffect : Current mView is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/EffectView;->mView:Lcom/samsung/android/visualeffect/IEffectView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/EffectView;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/EffectView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/visualeffect/InnerViewManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/visualeffect/IEffectView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/EffectView;->mView:Lcom/samsung/android/visualeffect/IEffectView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/EffectView;->mView:Lcom/samsung/android/visualeffect/IEffectView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/EffectView;->addView(Landroid/view/View;)V

    iput p1, p0, Lcom/samsung/android/visualeffect/EffectView;->mEffectType:I

    return-void
.end method

.method public setEffect(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/samsung/android/visualeffect/EffectView;->mView:Lcom/samsung/android/visualeffect/IEffectView;

    if-eqz v0, :cond_0

    const-string v0, "EffectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEffect : Current mView is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/EffectView;->mView:Lcom/samsung/android/visualeffect/IEffectView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/EffectView;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/EffectView;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/samsung/android/visualeffect/InnerViewManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/visualeffect/IEffectView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/EffectView;->mView:Lcom/samsung/android/visualeffect/IEffectView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/EffectView;->mView:Lcom/samsung/android/visualeffect/IEffectView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/EffectView;->addView(Landroid/view/View;)V

    iput v3, p0, Lcom/samsung/android/visualeffect/EffectView;->mEffectType:I

    return-void
.end method

.method public setListener(Lcom/samsung/android/visualeffect/IEffectListener;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/EffectView;->mView:Lcom/samsung/android/visualeffect/IEffectView;

    if-nez v0, :cond_0

    const-string v0, "EffectView"

    const-string v1, "setListener : mView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/EffectView;->mView:Lcom/samsung/android/visualeffect/IEffectView;

    invoke-interface {v0, p1}, Lcom/samsung/android/visualeffect/IEffectView;->setListener(Lcom/samsung/android/visualeffect/IEffectListener;)V

    goto :goto_0
.end method
