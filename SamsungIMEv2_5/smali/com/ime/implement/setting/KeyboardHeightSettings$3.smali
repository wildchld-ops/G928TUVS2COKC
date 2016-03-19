.class Lcom/ime/implement/setting/KeyboardHeightSettings$3;
.super Ljava/lang/Object;
.source "KeyboardHeightSettings.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/setting/KeyboardHeightSettings;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;


# direct methods
.method constructor <init>(Lcom/ime/implement/setting/KeyboardHeightSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 10

    const/4 v9, 0x0

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    iget-object v4, v4, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4, v9}, Lcom/ime/framework/common/InputManager;->setKeyboardHeightDelta(I)V

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    iget-object v4, v4, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Lcom/ime/framework/common/InputManager;->setKeyboardHeightLevel(I)V

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    iget-object v4, v4, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/ime/framework/common/InputManager;->setNeedChangeKeyboardHeight(Z)V

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    iget-object v4, v4, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    iget-object v4, v4, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getKeyboardViewHeight()I

    move-result v4

    iget-object v5, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    iget-object v5, v5, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getCandidateViewHeight()I

    move-result v5

    add-int v3, v4, v5

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    iget-object v5, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    iget v5, v5, Lcom/ime/implement/setting/KeyboardHeightSettings;->mDeviceHeight:I

    iget-object v6, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    iget v6, v6, Lcom/ime/implement/setting/KeyboardHeightSettings;->mHandlerHeight:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/ime/implement/setting/KeyboardHeightSettings;->mHandlerY:I

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    iget-object v4, v4, Lcom/ime/implement/setting/KeyboardHeightSettings;->mBaseHandler:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    iget v5, v5, Lcom/ime/implement/setting/KeyboardHeightSettings;->mHandlerX:I

    iget-object v6, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    iget v6, v6, Lcom/ime/implement/setting/KeyboardHeightSettings;->mHandlerY:I

    iget-object v7, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    iget v7, v7, Lcom/ime/implement/setting/KeyboardHeightSettings;->StatusBarHeight:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    iget v7, v7, Lcom/ime/implement/setting/KeyboardHeightSettings;->mHandlerWidth:I

    iget-object v8, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    iget v8, v8, Lcom/ime/implement/setting/KeyboardHeightSettings;->mHandlerHeight:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/PopupWindow;->update(IIII)V

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    iget-object v4, v4, Lcom/ime/implement/setting/KeyboardHeightSettings;->mBaseHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    iget-object v4, v4, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "KeyPressModelEx"

    invoke-virtual {v4, v5, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    iget-object v4, v4, Lcom/ime/implement/setting/KeyboardHeightSettings;->mMoveHandler:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    iget-object v4, v4, Lcom/ime/implement/setting/KeyboardHeightSettings;->et:Landroid/content/SharedPreferences$Editor;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    iget-object v4, v4, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    iget-object v4, v4, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_1
    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    iget-object v4, v4, Lcom/ime/implement/setting/KeyboardHeightSettings;->et:Landroid/content/SharedPreferences$Editor;

    const-string v5, "keyboard_height_level"

    iget-object v6, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    iget-object v6, v6, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightLevel()I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_1
    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    iget-object v4, v4, Lcom/ime/implement/setting/KeyboardHeightSettings;->et:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    iget-object v4, v4, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.sec.android.inputmethod.height"

    iget-object v6, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    iget-object v6, v6, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getDefaultKeyboardHeight()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v9

    :cond_3
    iget-object v4, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    iget-object v4, v4, Lcom/ime/implement/setting/KeyboardHeightSettings;->et:Landroid/content/SharedPreferences$Editor;

    const-string v5, "keyboard_height_level_landscape"

    iget-object v6, p0, Lcom/ime/implement/setting/KeyboardHeightSettings$3;->this$0:Lcom/ime/implement/setting/KeyboardHeightSettings;

    iget-object v6, v6, Lcom/ime/implement/setting/KeyboardHeightSettings;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getKeyboardHeightLevel()I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method
