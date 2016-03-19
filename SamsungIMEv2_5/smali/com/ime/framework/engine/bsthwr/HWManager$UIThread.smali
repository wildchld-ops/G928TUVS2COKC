.class Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;
.super Landroid/os/Handler;
.source "HWManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/engine/bsthwr/HWManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UIThread"
.end annotation


# static fields
.field public static final MSG_CLEAR_ALL_TIMEOUT:I = 0x3

.field public static final MSG_RECOGNIZE:I = 0x1

.field public static final MSG_UPDATE_CANDIDATE:I


# instance fields
.field locale:Ljava/lang/String;

.field range:C

.field final synthetic this$0:Lcom/ime/framework/engine/bsthwr/HWManager;


# direct methods
.method constructor <init>(Lcom/ime/framework/engine/bsthwr/HWManager;)V
    .locals 1

    iput-object p1, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/16 v0, 0x61f

    iput-char v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->range:C

    const-string v0, "zh_CN"

    iput-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->locale:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getWindow()Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->mWindow_HW:Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;
    invoke-static {v0}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$1000(Lcom/ime/framework/engine/bsthwr/HWManager;)Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    const v6, 0xe67f

    const/4 v10, 0x4

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->DEBUG:Z
    invoke-static {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$000(Lcom/ime/framework/engine/bsthwr/HWManager;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$100(Lcom/ime/framework/engine/bsthwr/HWManager;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_UPDATE_CANDIDATE retStatus ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->mHWView:Lcom/ime/framework/engine/bsthwr/TransparentView;
    invoke-static {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$200(Lcom/ime/framework/engine/bsthwr/HWManager;)Lcom/ime/framework/engine/bsthwr/TransparentView;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->mDecInfo:Lcom/ime/framework/engine/bsthwr/DecHandwriting;
    invoke-static {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$300(Lcom/ime/framework/engine/bsthwr/HWManager;)Lcom/ime/framework/engine/bsthwr/DecHandwriting;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->mDecInfo:Lcom/ime/framework/engine/bsthwr/DecHandwriting;
    invoke-static {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$300(Lcom/ime/framework/engine/bsthwr/HWManager;)Lcom/ime/framework/engine/bsthwr/DecHandwriting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->reset()V

    :cond_2
    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    const v5, 0x7f0d03ab

    # invokes: Lcom/ime/framework/engine/bsthwr/HWManager;->showToast(I)V
    invoke-static {v4, v5}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$400(Lcom/ime/framework/engine/bsthwr/HWManager;I)V

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    iput-boolean v8, v4, Lcom/ime/framework/engine/bsthwr/HWManager;->bRecogDone:Z

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$500(Lcom/ime/framework/engine/bsthwr/HWManager;)Lcom/ime/framework/common/InputManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->mDecInfo:Lcom/ime/framework/engine/bsthwr/DecHandwriting;
    invoke-static {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$300(Lcom/ime/framework/engine/bsthwr/HWManager;)Lcom/ime/framework/engine/bsthwr/DecHandwriting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->reset()V

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    iput-boolean v8, v4, Lcom/ime/framework/engine/bsthwr/HWManager;->bRecogDone:Z

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->mDecInfo:Lcom/ime/framework/engine/bsthwr/DecHandwriting;
    invoke-static {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$300(Lcom/ime/framework/engine/bsthwr/HWManager;)Lcom/ime/framework/engine/bsthwr/DecHandwriting;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->prepareHwrCandidates(I)I

    move-result v3

    if-nez v3, :cond_8

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # invokes: Lcom/ime/framework/engine/bsthwr/HWManager;->showCandiates()V
    invoke-static {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$600(Lcom/ime/framework/engine/bsthwr/HWManager;)V

    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->DEBUG:Z
    invoke-static {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$000(Lcom/ime/framework/engine/bsthwr/HWManager;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p1, Landroid/os/Message;->arg1:I

    sget v5, Lcom/ime/framework/engine/bsthwr/BstHwrDatatype;->HWRERROR_SUCCESS:I

    if-eq v4, v5, :cond_6

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$700(Lcom/ime/framework/engine/bsthwr/HWManager;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$700(Lcom/ime/framework/engine/bsthwr/HWManager;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0d03ab

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$700(Lcom/ime/framework/engine/bsthwr/HWManager;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0d03ac

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_6
    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$500(Lcom/ime/framework/engine/bsthwr/HWManager;)Lcom/ime/framework/common/InputManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->currentMode:I
    invoke-static {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$800(Lcom/ime/framework/engine/bsthwr/HWManager;)I

    move-result v4

    if-ne v4, v10, :cond_7

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    invoke-virtual {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->initFullViewMeasureHeight()V

    :cond_7
    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    iput-boolean v8, v4, Lcom/ime/framework/engine/bsthwr/HWManager;->bRecogDone:Z

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    invoke-virtual {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->isOverlapMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    invoke-virtual {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->isStorkeMode()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    const-wide/16 v6, 0x5dc

    invoke-virtual {p0, v4, v6, v7}, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_8
    if-ne v7, v3, :cond_5

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->mDecInfo:Lcom/ime/framework/engine/bsthwr/DecHandwriting;
    invoke-static {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$300(Lcom/ime/framework/engine/bsthwr/HWManager;)Lcom/ime/framework/engine/bsthwr/DecHandwriting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->reset()V

    goto/16 :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->DEBUG:Z
    invoke-static {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$000(Lcom/ime/framework/engine/bsthwr/HWManager;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$100(Lcom/ime/framework/engine/bsthwr/HWManager;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "StartTorecognize"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->mHWView:Lcom/ime/framework/engine/bsthwr/TransparentView;
    invoke-static {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$200(Lcom/ime/framework/engine/bsthwr/HWManager;)Lcom/ime/framework/engine/bsthwr/TransparentView;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->mHWView:Lcom/ime/framework/engine/bsthwr/TransparentView;
    invoke-static {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$200(Lcom/ime/framework/engine/bsthwr/HWManager;)Lcom/ime/framework/engine/bsthwr/TransparentView;

    move-result-object v4

    iget-object v4, v4, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-le v4, v7, :cond_0

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    invoke-virtual {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->isOverlapMode()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    invoke-virtual {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "en"

    if-eq v0, v4, :cond_c

    const-string v4, "ko"

    if-eq v0, v4, :cond_c

    const-string v4, "zh_CN"

    if-ne v0, v4, :cond_f

    const/16 v4, 0x461f

    iput-char v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->range:C

    const-string v4, "zh_CN"

    iput-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->locale:Ljava/lang/String;

    :cond_a
    :goto_2
    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->mHWView:Lcom/ime/framework/engine/bsthwr/TransparentView;
    invoke-static {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$200(Lcom/ime/framework/engine/bsthwr/HWManager;)Lcom/ime/framework/engine/bsthwr/TransparentView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/framework/engine/bsthwr/TransparentView;->getStrokeNum()I

    move-result v4

    if-le v4, v10, :cond_11

    iget-char v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->range:C

    and-int/lit8 v4, v4, -0x19

    int-to-char v4, v4

    iput-char v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->range:C

    :goto_3
    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    invoke-virtual {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->isStorkeMode()Z

    move-result v4

    if-nez v4, :cond_b

    iget-char v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->range:C

    or-int/lit16 v4, v4, 0x80

    int-to-char v4, v4

    iput-char v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->range:C

    :cond_b
    iget-char v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->range:C

    iget-object v5, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->locale:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/sec/android/bsthw/recognition/BstHwr;->hwSetRange(CLjava/lang/String;)I

    :cond_c
    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    invoke-virtual {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->isStorkeMode()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    iget-boolean v4, v4, Lcom/ime/framework/engine/bsthwr/HWManager;->bForceCommitComposing:Z

    if-ne v4, v8, :cond_e

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$500(Lcom/ime/framework/engine/bsthwr/HWManager;)Lcom/ime/framework/common/InputManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_d
    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    iput-boolean v9, v4, Lcom/ime/framework/engine/bsthwr/HWManager;->bForceCommitComposing:Z

    :cond_e
    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->mHWView:Lcom/ime/framework/engine/bsthwr/TransparentView;
    invoke-static {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$200(Lcom/ime/framework/engine/bsthwr/HWManager;)Lcom/ime/framework/engine/bsthwr/TransparentView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/framework/engine/bsthwr/TransparentView;->removeEndPointer()V

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->mHWView:Lcom/ime/framework/engine/bsthwr/TransparentView;
    invoke-static {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$200(Lcom/ime/framework/engine/bsthwr/HWManager;)Lcom/ime/framework/engine/bsthwr/TransparentView;

    move-result-object v4

    iget-object v4, v4, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPointData:Ljava/util/Vector;

    const v5, 0xffff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->mHWView:Lcom/ime/framework/engine/bsthwr/TransparentView;
    invoke-static {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$200(Lcom/ime/framework/engine/bsthwr/HWManager;)Lcom/ime/framework/engine/bsthwr/TransparentView;

    move-result-object v4

    iget-object v4, v4, Lcom/ime/framework/engine/bsthwr/TransparentView;->mPointData:Ljava/util/Vector;

    const v5, 0xffff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    iput-boolean v9, v4, Lcom/ime/framework/engine/bsthwr/HWManager;->bRecogDone:Z

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->mHWView:Lcom/ime/framework/engine/bsthwr/TransparentView;
    invoke-static {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$200(Lcom/ime/framework/engine/bsthwr/HWManager;)Lcom/ime/framework/engine/bsthwr/TransparentView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/framework/engine/bsthwr/TransparentView;->getPointer()[I

    move-result-object v1

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    new-instance v5, Lcom/ime/framework/engine/bsthwr/DecHwInputData;

    invoke-direct {v5, v1}, Lcom/ime/framework/engine/bsthwr/DecHwInputData;-><init>([I)V

    # setter for: Lcom/ime/framework/engine/bsthwr/HWManager;->mHwInputData:Lcom/ime/framework/engine/bsthwr/DecHwInputData;
    invoke-static {v4, v5}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$902(Lcom/ime/framework/engine/bsthwr/HWManager;Lcom/ime/framework/engine/bsthwr/DecHwInputData;)Lcom/ime/framework/engine/bsthwr/DecHwInputData;

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->mDecInfo:Lcom/ime/framework/engine/bsthwr/DecHandwriting;
    invoke-static {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$300(Lcom/ime/framework/engine/bsthwr/HWManager;)Lcom/ime/framework/engine/bsthwr/DecHandwriting;

    move-result-object v4

    iget-object v5, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->mHwInputData:Lcom/ime/framework/engine/bsthwr/DecHwInputData;
    invoke-static {v5}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$900(Lcom/ime/framework/engine/bsthwr/HWManager;)Lcom/ime/framework/engine/bsthwr/DecHwInputData;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->addHwdata(Lcom/ime/framework/engine/bsthwr/DecHwInputData;)Z

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->mDecInfo:Lcom/ime/framework/engine/bsthwr/DecHandwriting;
    invoke-static {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$300(Lcom/ime/framework/engine/bsthwr/HWManager;)Lcom/ime/framework/engine/bsthwr/DecHandwriting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->decoding()I

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    iput-boolean v8, v4, Lcom/ime/framework/engine/bsthwr/HWManager;->bRecogDone:Z

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$100(Lcom/ime/framework/engine/bsthwr/HWManager;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-----isStorkeMode() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    invoke-virtual {v6}, Lcom/ime/framework/engine/bsthwr/HWManager;->isStorkeMode()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    invoke-virtual {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->isStorkeMode()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$100(Lcom/ime/framework/engine/bsthwr/HWManager;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "----hwview--clear--"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->mHWView:Lcom/ime/framework/engine/bsthwr/TransparentView;
    invoke-static {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$200(Lcom/ime/framework/engine/bsthwr/HWManager;)Lcom/ime/framework/engine/bsthwr/TransparentView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/framework/engine/bsthwr/TransparentView;->clear()V

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # getter for: Lcom/ime/framework/engine/bsthwr/HWManager;->mHWView:Lcom/ime/framework/engine/bsthwr/TransparentView;
    invoke-static {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$200(Lcom/ime/framework/engine/bsthwr/HWManager;)Lcom/ime/framework/engine/bsthwr/TransparentView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/framework/engine/bsthwr/TransparentView;->invalidate()V

    goto/16 :goto_0

    :cond_f
    const-string v4, "zh_HK"

    if-ne v0, v4, :cond_10

    iput-char v6, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->range:C

    const-string v4, "zh_HK"

    iput-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->locale:Ljava/lang/String;

    goto/16 :goto_2

    :cond_10
    const-string v4, "zh_TW"

    if-ne v0, v4, :cond_a

    iput-char v6, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->range:C

    const-string v4, "zh_TW"

    iput-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->locale:Ljava/lang/String;

    goto/16 :goto_2

    :cond_11
    iget-char v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->range:C

    or-int/lit8 v4, v4, 0x18

    int-to-char v4, v4

    iput-char v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->range:C

    goto/16 :goto_3

    :pswitch_3
    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    invoke-virtual {v4}, Lcom/ime/framework/engine/bsthwr/HWManager;->clearAllStrokes()V

    iget-object v4, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    iput-boolean v8, v4, Lcom/ime/framework/engine/bsthwr/HWManager;->bForceCommitComposing:Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public isLandscapeFullScreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setTransparentView(Lcom/ime/framework/engine/bsthwr/FullScreenHWView;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/engine/bsthwr/HWManager$UIThread;->this$0:Lcom/ime/framework/engine/bsthwr/HWManager;

    # setter for: Lcom/ime/framework/engine/bsthwr/HWManager;->mHWView:Lcom/ime/framework/engine/bsthwr/TransparentView;
    invoke-static {v0, p1}, Lcom/ime/framework/engine/bsthwr/HWManager;->access$202(Lcom/ime/framework/engine/bsthwr/HWManager;Lcom/ime/framework/engine/bsthwr/TransparentView;)Lcom/ime/framework/engine/bsthwr/TransparentView;

    return-void
.end method
