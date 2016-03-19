.class Lcom/sec/android/inputmethod/databases/ContactLinkProvider$ContactTimer;
.super Landroid/os/Handler;
.source "ContactLinkProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/databases/ContactLinkProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;


# direct methods
.method private constructor <init>(Lcom/sec/android/inputmethod/databases/ContactLinkProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$ContactTimer;->this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/inputmethod/databases/ContactLinkProvider;Lcom/sec/android/inputmethod/databases/ContactLinkProvider$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$ContactTimer;-><init>(Lcom/sec/android/inputmethod/databases/ContactLinkProvider;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$ContactTimer;->this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    # getter for: Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mQueryThread:Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;
    invoke-static {v0}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->access$100(Lcom/sec/android/inputmethod/databases/ContactLinkProvider;)Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$ContactTimer;->this$0:Lcom/sec/android/inputmethod/databases/ContactLinkProvider;

    # getter for: Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->mQueryThread:Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;
    invoke-static {v0}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider;->access$100(Lcom/sec/android/inputmethod/databases/ContactLinkProvider;)Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$QueryThread;->start()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    const-wide/16 v0, 0x32

    invoke-virtual {p0, p0, v0, v1}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$ContactTimer;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stop()V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/sec/android/inputmethod/databases/ContactLinkProvider$ContactTimer;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
