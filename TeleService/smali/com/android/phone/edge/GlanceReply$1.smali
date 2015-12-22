.class Lcom/android/phone/edge/GlanceReply$1;
.super Ljava/lang/Object;
.source "GlanceReply.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/edge/GlanceReply;->onResume()V
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

    iput-object p1, p0, Lcom/android/phone/edge/GlanceReply$1;->this$0:Lcom/android/phone/edge/GlanceReply;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/edge/GlanceReply$1;->this$0:Lcom/android/phone/edge/GlanceReply;

    # getter for: Lcom/android/phone/edge/GlanceReply;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/phone/edge/GlanceReply;->access$000(Lcom/android/phone/edge/GlanceReply;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/edge/GlanceReply$1;->this$0:Lcom/android/phone/edge/GlanceReply;

    iget-object v1, v1, Lcom/android/phone/edge/GlanceReply;->editText:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
