.class Lcom/sec/android/app/launcher/views/EditTextView$7;
.super Ljava/lang/Object;
.source "EditTextView.java"

# interfaces
.implements Lcom/sec/daliviews/views/NativeViewBase$VisibilityChangeListener;


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

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/EditTextView$7;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChange(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView$7;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # getter for: Lcom/sec/android/app/launcher/views/EditTextView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/EditTextView;->access$200(Lcom/sec/android/app/launcher/views/EditTextView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/launcher/views/EditTextView$7$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/views/EditTextView$7$1;-><init>(Lcom/sec/android/app/launcher/views/EditTextView$7;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
