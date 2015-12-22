.class Lcom/sec/android/app/launcher/views/EditTextView$5;
.super Ljava/lang/Object;
.source "EditTextView.java"

# interfaces
.implements Lcom/sec/daliviews/views/NativeViewBase$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/views/EditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/views/EditTextView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/EditTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/EditTextView$5;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView$5;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # setter for: Lcom/sec/android/app/launcher/views/EditTextView;->mLastMotionEvent:Landroid/view/MotionEvent;
    invoke-static {v0, p1}, Lcom/sec/android/app/launcher/views/EditTextView;->access$902(Lcom/sec/android/app/launcher/views/EditTextView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
