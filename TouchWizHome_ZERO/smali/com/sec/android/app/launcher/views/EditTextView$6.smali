.class Lcom/sec/android/app/launcher/views/EditTextView$6;
.super Ljava/lang/Object;
.source "EditTextView.java"

# interfaces
.implements Lcom/sec/daliviews/views/NativeViewBase$OnClickListener;


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

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/EditTextView$6;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/daliviews/views/NativeViewBase;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/EditTextView$6;->this$0:Lcom/sec/android/app/launcher/views/EditTextView;

    sget-object v1, Lcom/sec/android/app/launcher/views/EditTextView$Mode;->EDIT:Lcom/sec/android/app/launcher/views/EditTextView$Mode;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/EditTextView;->setMode(Lcom/sec/android/app/launcher/views/EditTextView$Mode;)V

    const/4 v0, 0x1

    return v0
.end method
