.class Lcom/ime/framework/common/InputManagerImpl$3;
.super Landroid/os/Handler;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/common/InputManagerImpl;->initHandler()V
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

    iput-object p1, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private loadQwertyCahcedDrawablesLW(I)V
    .locals 8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mCachedDrawables:Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;
    invoke-static {v5}, Lcom/ime/framework/common/InputManagerImpl;->access$2000(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;

    move-result-object v5

    if-eqz v5, :cond_4

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mCachedDrawables:Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;
    invoke-static {v5}, Lcom/ime/framework/common/InputManagerImpl;->access$2000(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "KEY_BG_NUMBER"

    invoke-virtual {v5, v6, v7}, Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;->getCachedDrawable(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v5}, Lcom/ime/framework/common/InputManagerImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0205a5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mCachedDrawables:Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;
    invoke-static {v5}, Lcom/ime/framework/common/InputManagerImpl;->access$2000(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;

    move-result-object v5

    const-string v6, "KEY_BG_NUMBER"

    invoke-virtual {v5, v0, v6, v3}, Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;->putCacheDrawable(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v5, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mCachedDrawables:Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;
    invoke-static {v5}, Lcom/ime/framework/common/InputManagerImpl;->access$2000(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;->getOrientation()I

    move-result v5

    if-eq p1, v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    if-nez v4, :cond_2

    iget-object v5, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mCachedDrawables:Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;
    invoke-static {v5}, Lcom/ime/framework/common/InputManagerImpl;->access$2000(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "ICON_SETTING"

    invoke-virtual {v5, v6, v7}, Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;->getCachedDrawable(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v5}, Lcom/ime/framework/common/InputManagerImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020657

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mCachedDrawables:Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;
    invoke-static {v5}, Lcom/ime/framework/common/InputManagerImpl;->access$2000(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;

    move-result-object v5

    const-string v6, "ICON_SETTING"

    invoke-virtual {v5, v0, v6, v2}, Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;->putCacheDrawable(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v5, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mCachedDrawables:Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;
    invoke-static {v5}, Lcom/ime/framework/common/InputManagerImpl;->access$2000(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/ime/framework/common/InputManagerImpl$CachedDrawables;->setOrientation(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v5, "SamsungIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot find resources for cache "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v3, 0x1

    const/16 v5, 0xf

    const/4 v4, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mIsStartInputViewDelayed:Z
    invoke-static {v1}, Lcom/ime/framework/common/InputManagerImpl;->access$800(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mDelayedEditorInfo:Landroid/view/inputmethod/EditorInfo;
    invoke-static {v1}, Lcom/ime/framework/common/InputManagerImpl;->access$900(Lcom/ime/framework/common/InputManagerImpl;)Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # setter for: Lcom/ime/framework/common/InputManagerImpl;->mIsStartInputViewDelayed:Z
    invoke-static {v1, v4}, Lcom/ime/framework/common/InputManagerImpl;->access$802(Lcom/ime/framework/common/InputManagerImpl;Z)Z

    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    iget-object v2, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mDelayedEditorInfo:Landroid/view/inputmethod/EditorInfo;
    invoke-static {v2}, Lcom/ime/framework/common/InputManagerImpl;->access$900(Lcom/ime/framework/common/InputManagerImpl;)Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mDelayedRestarting:Z
    invoke-static {v3}, Lcom/ime/framework/common/InputManagerImpl;->access$1000(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v3

    # invokes: Lcom/ime/framework/common/InputManagerImpl;->startInputViewContinue(Landroid/view/inputmethod/EditorInfo;Z)V
    invoke-static {v1, v2, v3}, Lcom/ime/framework/common/InputManagerImpl;->access$1100(Lcom/ime/framework/common/InputManagerImpl;Landroid/view/inputmethod/EditorInfo;Z)V

    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # setter for: Lcom/ime/framework/common/InputManagerImpl;->mOrientationChanged:Z
    invoke-static {v1, v4}, Lcom/ime/framework/common/InputManagerImpl;->access$1202(Lcom/ime/framework/common/InputManagerImpl;Z)Z

    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    const/4 v2, 0x0

    # setter for: Lcom/ime/framework/common/InputManagerImpl;->mDelayedEditorInfo:Landroid/view/inputmethod/EditorInfo;
    invoke-static {v1, v2}, Lcom/ime/framework/common/InputManagerImpl;->access$902(Lcom/ime/framework/common/InputManagerImpl;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/EditorInfo;

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/ime/framework/common/InputManagerImpl;->setTSPExtendedMode(Z)V
    invoke-static {v1, v3}, Lcom/ime/framework/common/InputManagerImpl;->access$1300(Lcom/ime/framework/common/InputManagerImpl;Z)V

    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mStartDelayHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/ime/framework/common/InputManagerImpl;->access$1400(Lcom/ime/framework/common/InputManagerImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mStartDelayHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/ime/framework/common/InputManagerImpl;->access$1400(Lcom/ime/framework/common/InputManagerImpl;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mStartDelayHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/ime/framework/common/InputManagerImpl;->access$1400(Lcom/ime/framework/common/InputManagerImpl;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/ime/framework/common/InputManagerImpl;->setTSPExtendedMode(Z)V
    invoke-static {v1, v4}, Lcom/ime/framework/common/InputManagerImpl;->access$1300(Lcom/ime/framework/common/InputManagerImpl;Z)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v1, v4}, Lcom/ime/framework/common/InputManagerImpl;->setIsPendingUpdateCandidateView(Z)V

    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mInputController:Lcom/ime/framework/input/InputController;
    invoke-static {v1}, Lcom/ime/framework/common/InputManagerImpl;->access$1500(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/input/InputController;

    move-result-object v1

    invoke-interface {v1}, Lcom/ime/framework/input/InputController;->backupFullText()V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mStartDelayHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/ime/framework/common/InputManagerImpl;->access$1400(Lcom/ime/framework/common/InputManagerImpl;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v1}, Lcom/ime/framework/common/InputManagerImpl;->showModeChangePopupKeyboard()V

    goto :goto_0

    :sswitch_5
    # getter for: Lcom/ime/framework/common/InputManagerImpl;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->access$1600()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mIsLiveLanguageOn:Z
    invoke-static {v2}, Lcom/ime/framework/common/InputManagerImpl;->access$1700(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->setLiveLanguage(Landroid/content/Context;Z)V

    goto/16 :goto_0

    :sswitch_6
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/ime/framework/common/InputManagerImpl$3;->loadQwertyCahcedDrawablesLW(I)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;
    invoke-static {v1}, Lcom/ime/framework/common/InputManagerImpl;->access$1800(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/common/ShiftStateController;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;
    invoke-static {v1}, Lcom/ime/framework/common/InputManagerImpl;->access$1800(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/common/ShiftStateController;

    move-result-object v1

    invoke-interface {v1}, Lcom/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;
    invoke-static {v1}, Lcom/ime/framework/common/InputManagerImpl;->access$1800(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/common/ShiftStateController;

    move-result-object v1

    invoke-interface {v1}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v1}, Lcom/ime/framework/common/InputManagerImpl;->updateShiftState()V

    goto/16 :goto_0

    :sswitch_8
    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mStartDelayHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/ime/framework/common/InputManagerImpl;->access$1400(Lcom/ime/framework/common/InputManagerImpl;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x45

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$3;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # setter for: Lcom/ime/framework/common/InputManagerImpl;->mPendingRefreshKeyboardView:Z
    invoke-static {v1, v4}, Lcom/ime/framework/common/InputManagerImpl;->access$1902(Lcom/ime/framework/common/InputManagerImpl;Z)Z

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "SamsungIME"

    const-string v2, "received MSG_SEND_KBD_INFO.sending broadcast after delay.."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ime/framework/view/KeyboardInfoUtils;->getInstance()Lcom/ime/framework/view/KeyboardInfoUtils;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ime/framework/view/KeyboardInfoUtils;->sendSIPInformation(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xe -> :sswitch_1
        0xf -> :sswitch_2
        0x26 -> :sswitch_3
        0x2f -> :sswitch_4
        0x3b -> :sswitch_6
        0x41 -> :sswitch_5
        0x44 -> :sswitch_7
        0x45 -> :sswitch_8
        0x47 -> :sswitch_9
    .end sparse-switch
.end method
