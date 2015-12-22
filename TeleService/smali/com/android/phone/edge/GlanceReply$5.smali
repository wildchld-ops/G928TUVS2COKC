.class Lcom/android/phone/edge/GlanceReply$5;
.super Ljava/lang/Object;
.source "GlanceReply.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/edge/GlanceReply;->initSubAppBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/edge/GlanceReply;


# direct methods
.method constructor <init>(Lcom/android/phone/edge/GlanceReply;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/edge/GlanceReply$5;->this$0:Lcom/android/phone/edge/GlanceReply;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/android/phone/edge/GlanceReply$5;->this$0:Lcom/android/phone/edge/GlanceReply;

    # getter for: Lcom/android/phone/edge/GlanceReply;->mSubAppBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/phone/edge/GlanceReply;->access$300(Lcom/android/phone/edge/GlanceReply;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/phone/edge/GlanceReply$5;->this$0:Lcom/android/phone/edge/GlanceReply;

    # invokes: Lcom/android/phone/edge/GlanceReply;->setSubAppBarState(Z)V
    invoke-static {v1, v0}, Lcom/android/phone/edge/GlanceReply;->access$200(Lcom/android/phone/edge/GlanceReply;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
