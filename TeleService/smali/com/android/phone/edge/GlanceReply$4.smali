.class Lcom/android/phone/edge/GlanceReply$4;
.super Ljava/lang/Object;
.source "GlanceReply.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/android/phone/edge/GlanceReply$4;->this$0:Lcom/android/phone/edge/GlanceReply;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply$4;->this$0:Lcom/android/phone/edge/GlanceReply;

    # invokes: Lcom/android/phone/edge/GlanceReply;->setSubAppBarState(Z)V
    invoke-static {v0, p2}, Lcom/android/phone/edge/GlanceReply;->access$200(Lcom/android/phone/edge/GlanceReply;Z)V

    return-void
.end method
