.class public interface abstract Lcom/android/incallui/SecAnswerUi;
.super Ljava/lang/Object;
.source "SecAnswerUi.java"

# interfaces
.implements Lcom/android/incallui/AnswerPresenter$AnswerUi;


# virtual methods
.method public abstract animateForAnswerCall(I)V
.end method

.method public abstract configureRejectMsgList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isAnswerAnimationRunning()Z
.end method

.method public abstract showAnswerUi(Z)V
.end method

.method public abstract showQuoteMark(Z)V
.end method

.method public abstract showRejectCallWithMessage(Z)V
.end method

.method public abstract showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showWaitingCallDialogGSM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method
