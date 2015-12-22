.class Lcom/sec/android/app/launcher/views/EditTextView$12;
.super Ljava/lang/Object;
.source "EditTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/EditTextView$12;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView$12;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    # invokes: Lcom/sec/android/app/launcher/views/EditTextView;->removeHandle()V
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/EditTextView;->access$1800(Lcom/sec/android/app/launcher/views/EditTextView;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView$12;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/EditTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
