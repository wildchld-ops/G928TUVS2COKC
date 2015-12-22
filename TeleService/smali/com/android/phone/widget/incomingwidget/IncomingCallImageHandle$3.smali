.class Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$3;
.super Ljava/lang/Object;
.source "IncomingCallImageHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->processMoveEvent(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;


# direct methods
.method constructor <init>(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$3;->this$0:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$3;->this$0:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;
    invoke-static {v0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->access$000(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->setGrabbedState(I)V

    return-void
.end method
