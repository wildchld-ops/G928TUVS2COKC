.class Lcom/android/server/wm/FocusedStackFrame$1;
.super Landroid/content/BroadcastReceiver;
.source "FocusedStackFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/FocusedStackFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/FocusedStackFrame;


# direct methods
.method constructor <init>(Lcom/android/server/wm/FocusedStackFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/FocusedStackFrame$1;->this$0:Lcom/android/server/wm/FocusedStackFrame;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060194

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame$1;->this$0:Lcom/android/server/wm/FocusedStackFrame;

    # getter for: Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameImage:Landroid/graphics/drawable/NinePatchDrawable;
    invoke-static {v2}, Lcom/android/server/wm/FocusedStackFrame;->access$000(Lcom/android/server/wm/FocusedStackFrame;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    const-string v2, "FocusedStackFrame"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Theme Change : Color - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
