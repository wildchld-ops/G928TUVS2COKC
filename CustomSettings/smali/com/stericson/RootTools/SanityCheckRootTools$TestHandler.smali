.class Lcom/stericson/RootTools/SanityCheckRootTools$TestHandler;
.super Landroid/os/Handler;
.source "SanityCheckRootTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/RootTools/SanityCheckRootTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestHandler"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final ACTION_DISPLAY:I = 0x3

.field public static final ACTION_HIDE:I = 0x2

.field public static final ACTION_PDISPLAY:I = 0x4

.field public static final ACTION_SHOW:I = 0x1

.field public static final TEXT:Ljava/lang/String; = "text"


# instance fields
.field final synthetic this$0:Lcom/stericson/RootTools/SanityCheckRootTools;


# direct methods
.method private constructor <init>(Lcom/stericson/RootTools/SanityCheckRootTools;)V
    .locals 0

    iput-object p1, p0, Lcom/stericson/RootTools/SanityCheckRootTools$TestHandler;->this$0:Lcom/stericson/RootTools/SanityCheckRootTools;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/stericson/RootTools/SanityCheckRootTools;Lcom/stericson/RootTools/SanityCheckRootTools$TestHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stericson/RootTools/SanityCheckRootTools$TestHandler;-><init>(Lcom/stericson/RootTools/SanityCheckRootTools;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "action"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/stericson/RootTools/SanityCheckRootTools$TestHandler;->this$0:Lcom/stericson/RootTools/SanityCheckRootTools;

    # getter for: Lcom/stericson/RootTools/SanityCheckRootTools;->mPDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/stericson/RootTools/SanityCheckRootTools;->access$0(Lcom/stericson/RootTools/SanityCheckRootTools;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    iget-object v2, p0, Lcom/stericson/RootTools/SanityCheckRootTools$TestHandler;->this$0:Lcom/stericson/RootTools/SanityCheckRootTools;

    # getter for: Lcom/stericson/RootTools/SanityCheckRootTools;->mPDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/stericson/RootTools/SanityCheckRootTools;->access$0(Lcom/stericson/RootTools/SanityCheckRootTools;)Landroid/app/ProgressDialog;

    move-result-object v2

    const-string v3, "Running Root Library Tests..."

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/stericson/RootTools/SanityCheckRootTools$TestHandler;->this$0:Lcom/stericson/RootTools/SanityCheckRootTools;

    invoke-virtual {v2, v1}, Lcom/stericson/RootTools/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Lcom/stericson/RootTools/SanityCheckRootTools$TestHandler;->this$0:Lcom/stericson/RootTools/SanityCheckRootTools;

    # getter for: Lcom/stericson/RootTools/SanityCheckRootTools;->mPDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/stericson/RootTools/SanityCheckRootTools;->access$0(Lcom/stericson/RootTools/SanityCheckRootTools;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->hide()V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/stericson/RootTools/SanityCheckRootTools$TestHandler;->this$0:Lcom/stericson/RootTools/SanityCheckRootTools;

    invoke-virtual {v2, v1}, Lcom/stericson/RootTools/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/stericson/RootTools/SanityCheckRootTools$TestHandler;->this$0:Lcom/stericson/RootTools/SanityCheckRootTools;

    # getter for: Lcom/stericson/RootTools/SanityCheckRootTools;->mPDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/stericson/RootTools/SanityCheckRootTools;->access$0(Lcom/stericson/RootTools/SanityCheckRootTools;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
