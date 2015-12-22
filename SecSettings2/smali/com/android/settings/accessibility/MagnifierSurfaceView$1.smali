.class Lcom/android/settings/accessibility/MagnifierSurfaceView$1;
.super Landroid/os/Handler;
.source "MagnifierSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/MagnifierSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/MagnifierSurfaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v7, :cond_1

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    # getter for: Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->access$100(Lcom/android/settings/accessibility/MagnifierSurfaceView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hover_zoom_magnifier_size"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    # getter for: Lcom/android/settings/accessibility/MagnifierSurfaceView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->access$100(Lcom/android/settings/accessibility/MagnifierSurfaceView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hover_zoom_value"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget-object v2, v2, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget-object v3, v3, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v3, v3, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->x:[I

    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget v4, v4, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget-object v4, v4, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v4, v4, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->y:[I

    iget-object v5, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget v5, v5, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v4, v4, v5

    int-to-float v5, v1

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/accessibility/AccessibilityManager;->enableMagnifier(IIF)V

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    # getter for: Lcom/android/settings/accessibility/MagnifierSurfaceView;->mPolicy:Lcom/android/settings/accessibility/MagnifierDisplayPolicy;
    invoke-static {v2}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->access$200(Lcom/android/settings/accessibility/MagnifierSurfaceView;)Lcom/android/settings/accessibility/MagnifierDisplayPolicy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget-object v3, v3, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v3, v3, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->x:[I

    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget v4, v4, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget-object v4, v4, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mMagPadSize:Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;

    iget-object v4, v4, Lcom/android/settings/accessibility/MagnifierSurfaceView$MagnifierPadSize;->y:[I

    iget-object v5, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget v5, v5, Lcom/android/settings/accessibility/MagnifierSurfaceView;->magSize:I

    aget v4, v4, v5

    int-to-float v5, v1

    add-float/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/accessibility/MagnifierDisplayPolicy;->updateSettings(IIF)V

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget-object v2, v2, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget v3, v3, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorX:F

    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget v4, v4, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorY:F

    invoke-virtual {v2, v3, v4}, Landroid/view/accessibility/AccessibilityManager;->showMagnifier(FF)V

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget-object v3, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget v3, v3, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorX:F

    iget-object v4, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    iget v4, v4, Lcom/android/settings/accessibility/MagnifierSurfaceView;->mCursorY:F

    # invokes: Lcom/android/settings/accessibility/MagnifierSurfaceView;->updateMagnificationSpec(FF)V
    invoke-static {v2, v3, v4}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->access$300(Lcom/android/settings/accessibility/MagnifierSurfaceView;FF)V

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    # invokes: Lcom/android/settings/accessibility/MagnifierSurfaceView;->updateMagnifierLayoutParams()V
    invoke-static {v2}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->access$400(Lcom/android/settings/accessibility/MagnifierSurfaceView;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    # invokes: Lcom/android/settings/accessibility/MagnifierSurfaceView;->updateViewLayout()V
    invoke-static {v2}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->access$500(Lcom/android/settings/accessibility/MagnifierSurfaceView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnifierSurfaceView$1;->this$0:Lcom/android/settings/accessibility/MagnifierSurfaceView;

    # invokes: Lcom/android/settings/accessibility/MagnifierSurfaceView;->handleTimeout()V
    invoke-static {v2}, Lcom/android/settings/accessibility/MagnifierSurfaceView;->access$600(Lcom/android/settings/accessibility/MagnifierSurfaceView;)V

    goto :goto_0
.end method
