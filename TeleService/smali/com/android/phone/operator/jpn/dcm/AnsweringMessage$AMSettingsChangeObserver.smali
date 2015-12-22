.class Lcom/android/phone/operator/jpn/dcm/AnsweringMessage$AMSettingsChangeObserver;
.super Landroid/database/ContentObserver;
.source "AnsweringMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AMSettingsChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;


# direct methods
.method public constructor <init>(Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage$AMSettingsChangeObserver;->this$0:Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage$AMSettingsChangeObserver;->this$0:Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AMSettingsChangeObserver: isAnswerMemoOff() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage$AMSettingsChangeObserver;->this$0:Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    invoke-virtual {v2}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->isAnswerMemoOff()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage$AMSettingsChangeObserver;->this$0:Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    invoke-virtual {v0}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->isAnswerMemoOff()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage$AMSettingsChangeObserver;->this$0:Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->onGoingAnswerMemoNotification(Z)V

    :cond_0
    return-void
.end method
