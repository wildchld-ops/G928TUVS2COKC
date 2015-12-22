.class Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector$1;
.super Landroid/os/Handler;
.source "AccessibilityInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector$1;->this$1:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector$1;->this$1:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    # invokes: Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->performSingleTap()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->access$500(Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector$1;->this$1:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    # invokes: Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->performDoubleTap()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->access$600(Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector$1;->this$1:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    # invokes: Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->performRecentKeyTapAndHold()V
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->access$700(Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
