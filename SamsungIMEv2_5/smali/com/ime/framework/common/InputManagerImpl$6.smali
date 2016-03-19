.class Lcom/ime/framework/common/InputManagerImpl$6;
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

    iput-object p1, p0, Lcom/ime/framework/common/InputManagerImpl$6;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v3, "SamsungIME_UnifiedIME"

    const-string v4, "InputManagerImpl, mContactHandler: message is recieved"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/ime/framework/common/InputManagerImpl$6;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v3, v7}, Lcom/ime/framework/common/InputManagerImpl;->getCandidateView(Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v3}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getCandidates()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/ime/framework/common/InputManagerImpl$6;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v3, v6}, Lcom/ime/framework/common/InputManagerImpl;->setContactCandidateUpdate(Z)V

    iget-object v3, p0, Lcom/ime/framework/common/InputManagerImpl$6;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v3}, Lcom/ime/framework/common/InputManagerImpl;->getContactDBInstance()Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->getContactNames()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "SamsungIME_UnifiedIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InputManagerImpl, contactInformation.size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ime/framework/common/InputManagerImpl$6;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v3}, Lcom/ime/framework/common/InputManagerImpl;->isChineseLanguageMode()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ime/framework/common/InputManagerImpl$6;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v3}, Lcom/ime/framework/common/InputManagerImpl;->getCloudCandidateUpdate()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_3

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/ime/framework/common/InputManagerImpl$6;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mWordSequenceData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/ime/framework/common/InputManagerImpl;->access$3900(Lcom/ime/framework/common/InputManagerImpl;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_2

    iget-object v3, p0, Lcom/ime/framework/common/InputManagerImpl$6;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mWordSequenceData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/ime/framework/common/InputManagerImpl;->access$3900(Lcom/ime/framework/common/InputManagerImpl;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Ljava/lang/Byte;

    invoke-direct {v4, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v3, v8, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/ime/framework/common/InputManagerImpl$6;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v3, v6}, Lcom/ime/framework/common/InputManagerImpl;->setContactCandidateUpdate(Z)V

    iget-object v3, p0, Lcom/ime/framework/common/InputManagerImpl$6;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v3, v7}, Lcom/ime/framework/common/InputManagerImpl;->getCandidateView(Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v3, v0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/ime/framework/common/InputManagerImpl$6;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mWordSequenceData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/ime/framework/common/InputManagerImpl;->access$3900(Lcom/ime/framework/common/InputManagerImpl;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/ime/framework/common/InputManagerImpl$6;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mWordSequenceData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/ime/framework/common/InputManagerImpl;->access$3900(Lcom/ime/framework/common/InputManagerImpl;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Ljava/lang/Byte;

    invoke-direct {v4, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v3, v6, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_0
    .end packed-switch
.end method
