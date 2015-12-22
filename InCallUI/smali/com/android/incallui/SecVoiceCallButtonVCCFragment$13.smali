.class Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;
.super Ljava/lang/Object;
.source "SecVoiceCallButtonVCCFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecVoiceCallButtonVCCFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v8, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemClick"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->getInstance()Lcom/android/incallui/VisualCallCenter;

    invoke-static {p1, p3}, Lcom/android/incallui/VisualCallCenter;->VCC_menu_getAction(Landroid/widget/AdapterView;I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v8}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->getInstance()Lcom/android/incallui/VisualCallCenter;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3}, Lcom/android/incallui/VisualCallCenter;->VCC_obtainIVRHierarchy(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # setter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSendNumber:I
    invoke-static {v4, v8}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$2002(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;I)I

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # setter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mRunning:Z
    invoke-static {v4, v6}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$2102(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;Z)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v6

    sub-long v2, v4, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callTime"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->getInstance()Lcom/android/incallui/VisualCallCenter;

    invoke-static {v2, v3}, Lcom/android/incallui/VisualCallCenter;->VCC_getCallPath(J)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$2202(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;Ljava/lang/String;)Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "api.getCallPath()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$2200(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callPath.length(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$2200(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$2200(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callPath char: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$2200(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->getInstance()Lcom/android/incallui/VisualCallCenter;

    invoke-static {v8}, Lcom/android/incallui/VisualCallCenter;->setDisplayIVRPager(Z)V

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # setter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mLastestPagePositionIVR:I
    invoke-static {v4, v8}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$2302(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;I)I

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13$1;

    invoke-direct {v5, p0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13$1;-><init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v4, Lcom/android/incallui/VisualCallCenter$IvrTask;

    invoke-direct {v4}, Lcom/android/incallui/VisualCallCenter$IvrTask;-><init>()V

    new-array v5, v6, [Ljava/lang/Integer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v5}, Lcom/android/incallui/VisualCallCenter$IvrTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$2400(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Landroid/widget/ListView;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$2400(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_1
.end method
