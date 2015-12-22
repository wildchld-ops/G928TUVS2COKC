.class Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector$2;
.super Ljava/lang/Object;
.source "AccessibilityInputFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->performDoubleTap()V
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

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector$2;->this$1:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    new-instance v1, Landroid/app/Instrumentation;

    invoke-direct {v1}, Landroid/app/Instrumentation;-><init>()V

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector$2;->this$1:Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;

    # getter for: Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->firstKeyCode:I
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;->access$800(Lcom/android/server/accessibility/AccessibilityInputFilter$DoubleTapDetector;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
