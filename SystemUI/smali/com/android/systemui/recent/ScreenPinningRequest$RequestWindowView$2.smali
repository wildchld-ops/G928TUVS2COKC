.class Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView$2;
.super Ljava/lang/Object;
.source "ScreenPinningRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView$2;->this$1:Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView$2;->this$1:Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;

    # getter for: Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->access$300(Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView$2;->this$1:Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;

    # getter for: Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->access$300(Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView$2;->this$1:Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;

    # getter for: Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->access$300(Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView$2;->this$1:Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;

    iget-object v1, v1, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->this$0:Lcom/android/systemui/recent/ScreenPinningRequest;

    iget-object v2, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView$2;->this$1:Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;

    iget-object v3, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView$2;->this$1:Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;

    # getter for: Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->access$400(Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;)Landroid/content/Context;

    move-result-object v3

    # invokes: Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->isLandscapePhone(Landroid/content/Context;)Z
    invoke-static {v2, v3}, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->access$500(Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recent/ScreenPinningRequest;->getRequestLayoutParams(Z)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
