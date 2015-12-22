.class Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;
.super Landroid/os/Handler;
.source "KnoxKeyguardDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KnoxKeyguardDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyguardHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/KnoxKeyguardDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/KnoxKeyguardDelegate;Lcom/android/server/pm/KnoxKeyguardDelegate$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;-><init>(Lcom/android/server/pm/KnoxKeyguardDelegate;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    const-string v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown msg type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;

    # invokes: Lcom/android/server/pm/KnoxKeyguardDelegate;->handleHomeShow(I)V
    invoke-static {v2, v1}, Lcom/android/server/pm/KnoxKeyguardDelegate;->access$100(Lcom/android/server/pm/KnoxKeyguardDelegate;I)V

    goto :goto_0

    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v0, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;

    # invokes: Lcom/android/server/pm/KnoxKeyguardDelegate;->show(II)V
    invoke-static {v2, v1, v0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->access$200(Lcom/android/server/pm/KnoxKeyguardDelegate;II)V

    goto :goto_0

    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;->this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;

    # invokes: Lcom/android/server/pm/KnoxKeyguardDelegate;->hide(I)V
    invoke-static {v2, v1}, Lcom/android/server/pm/KnoxKeyguardDelegate;->access$300(Lcom/android/server/pm/KnoxKeyguardDelegate;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
