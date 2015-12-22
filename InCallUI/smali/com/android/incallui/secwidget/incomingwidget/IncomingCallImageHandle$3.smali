.class Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$3;
.super Ljava/lang/Object;
.source "IncomingCallImageHandle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->processMoveEvent(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;


# direct methods
.method constructor <init>(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$3;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$3;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;
    invoke-static {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->access$000(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setGrabbedState(I)V

    return-void
.end method
