.class Lcom/android/phone/operator/jpn/dcm/AnsweringMessage$2;
.super Landroid/database/ContentObserver;
.source "AnsweringMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage$2;->this$0:Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1    # Z

    iget-object v0, p0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage$2;->this$0:Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contactObserver onChange() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1    # Z
    .param p2    # Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage$2;->this$0:Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contactObserver onChange() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage$2;->this$0:Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    # invokes: Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->updateContactInMemo()V
    invoke-static {v0}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->access$200(Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;)V

    return-void
.end method
