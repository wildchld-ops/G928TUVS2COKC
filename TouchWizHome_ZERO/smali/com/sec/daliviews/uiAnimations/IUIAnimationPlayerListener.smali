.class public abstract Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;
.super Ljava/lang/Object;
.source "IUIAnimationPlayerListener.java"


# static fields
.field public static final UIANIMATION_FINISHED_EVENT:I = 0x3

.field public static final UIANIMATION_STARTED_EVENT:I = 0x1

.field public static final UIANIMATION_STOPPED_EVENT:I = 0x2


# instance fields
.field private mView:Lcom/sec/daliviews/views/NativeViewBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    return-void
.end method

.method public constructor <init>(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    iput-object p1, p0, Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    return-void
.end method


# virtual methods
.method protected getView()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/NativeViewBase;->isValidPeer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/uiAnimations/IUIAnimationPlayerListener;->mView:Lcom/sec/daliviews/views/NativeViewBase;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract handleUIAnimEvent(I)V
.end method
