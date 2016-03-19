.class Lcom/ime/framework/common/InputManagerImpl$12;
.super Ljava/lang/Object;
.source "InputManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/common/InputManagerImpl;->setKeyboard(Lcom/ime/framework/view/Keyboard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/common/InputManagerImpl;


# direct methods
.method constructor <init>(Lcom/ime/framework/common/InputManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/common/InputManagerImpl$12;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$12;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/ime/framework/common/InputManagerImpl;->isFullscreenMode()Z

    move-result v6

    if-eqz v6, :cond_1

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->access$1600()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/sec/android/inputmethod/SamsungKeypad;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/SamsungKeypad;->getWindow()Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$12;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/ime/framework/common/InputManagerImpl;->getIWindowManager()Landroid/view/IWindowManager;

    move-result-object v2

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/ime/framework/util/Utils;->isStatusBarShowing(Landroid/view/IWindowManager;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$12;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/ime/framework/common/InputManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/ime/framework/util/Utils;->getSystemStatusBarHeight(Landroid/content/Context;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$12;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/ime/framework/common/InputManagerImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v6, v4

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v5, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void

    :catch_0
    move-exception v1

    const-string v6, "SamsungIME"

    const-string v7, "getSystemStatusBarHeight - NotFoundException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v6, "SamsungIME"

    const-string v7, "getSystemStatusBarHeight - RemoteException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_0
.end method
